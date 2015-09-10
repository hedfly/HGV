within ChillerPlantSystem.Modelica_StateGraph2_udf;
model Transition
  "Transition between steps (optionally with delayed transition and/or condition input port)"
  parameter Boolean use_conditionPort=false "= true, if conditionPort enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));

  input Boolean condition=true
    "Fire condition (time varying Boolean expression)"
    annotation (Dialog(enable=not use_conditionPort));

  parameter Boolean delayedTransition=false
    "= true, if transition fires after waitTime" annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  parameter Modelica.SIunits.Time waitTime=0
    "Wait time before transition fires (> 0 required)"
    annotation (Dialog(enable=delayedTransition));
  parameter Modelica.SIunits.Time waitTime_pre_ini=0
    "Wait time before transition fires (> 0 required)";

  Modelica.SIunits.Time waitTime_pre(start=waitTime_pre_ini);

  output Modelica.SIunits.Time waitTime_pre_fin;

  parameter Boolean use_firePort=false "= true, if firePort enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));

  parameter Boolean loopCheck=true
    "= true, if one delayed transition per loop required" annotation (
    Evaluate=true,
    HideResult=true,
    Dialog(tab="Advanced"),
    choices(__Dymola_checkBox=true));

  Modelica_StateGraph2_udf.Internal.Interfaces.Transition_in inPort
    "Input port of transition (exactly one connection to this port is required)"
    annotation (Placement(transformation(extent={{-17,83},{17,117}})));

  Modelica_StateGraph2_udf.Internal.Interfaces.Transition_out outPort
    "Output port of transition (exactly one connection from this port is required)"
    annotation (Placement(transformation(extent={{-25,-150},{25,-100}})));

  Modelica.Blocks.Interfaces.BooleanInput conditionPort if use_conditionPort
    "Fire condition as Boolean input."
    annotation (Placement(transformation(extent={{-150,-25},{-100,25}})));

  Modelica.Blocks.Interfaces.BooleanOutput firePort=fire if use_firePort
    "= true, if transition fires"
    annotation (Placement(transformation(extent={{90,-15},{120,15}})));

  output Boolean fire "= true, if transition fires";
  output Boolean enableFire "= true, if firing condition is true";

protected
  constant Modelica.SIunits.Time minimumWaitTime=100*Modelica.Constants.eps;
  Modelica.SIunits.Time t_start
    "Time instant at which the transition would fire, if waitTime would be zero";
  Modelica.Blocks.Interfaces.BooleanInput localCondition;
initial equation
  pre(enableFire) = false;
  if delayedTransition then
    pre(t_start) = 0;
  end if;
equation
  // Handle conditional conditionPort
  connect(conditionPort, localCondition);
  if not use_conditionPort then
    localCondition = condition;
  end if;

  // Determine firing condition
  enableFire = localCondition and inPort.available;

  if delayedTransition then
    when enableFire then
      t_start = time;
    end when;
    fire = enableFire and time >= t_start + waitTime-pre(waitTime_pre);
    outPort.checkOneDelayedTransitionPerLoop = true;
  else
    t_start = 0;
    fire = enableFire;
    if loopCheck then
      outPort.checkOneDelayedTransitionPerLoop = inPort.checkOneDelayedTransitionPerLoop;
    else
      outPort.checkOneDelayedTransitionPerLoop = true;
    end if;
  end if;

  when fire then
    waitTime_pre=0;
  end when;

  inPort.fire = fire;
  outPort.fire = fire;

  // Handling of node
  Connections.branch(inPort.node, outPort.node);
  outPort.node = inPort.node;

  // Asserts
  assert(not delayedTransition or delayedTransition and waitTime >
    minimumWaitTime, "Either set delayTransition = false, or set waitTime (= "
     + String(waitTime) + ") > " + String(minimumWaitTime));
  when terminal() then
     if enableFire and time < t_start + waitTime then
        waitTime_pre_fin = t_start + waitTime-time;
     else
        waitTime_pre_fin = 0;
     end if;
  end when;
  annotation (
    defaultComponentName="T1",
    Icon(coordinateSystem(
        extent={{-100,-100},{100,100}},
        initialScale=0.04,
        preserveAspectRatio=true,
        grid={1,1}), graphics={
        Text(
          visible=delayedTransition,
          extent={{-200,10},{200,-10}},
          lineColor={255,0,0},
          textString="%waitTime",
          origin={210,-70},
          rotation=0),
        Line(
          visible=delayedTransition,
          points={{0,-12.5},{0,-30}},
          color={255,0,0}),
        Line(
          visible=delayedTransition,
          points={{0,-86},{0,-100}},
          color={255,0,0}),
        Line(
          visible=delayedTransition,
          points={{0,-47},{0,-63}},
          color={255,0,0}),
        Line(
          visible=not delayedTransition,
          points={{0,0},{0,-100}},
          color={0,0,0}),
        Text(
          extent={{-150,-15},{150,15}},
          textString="%name",
          lineColor={0,0,255},
          origin={160,75},
          rotation=0),
        Rectangle(
          extent={{-100,-15},{100,15}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          radius=10),
        Line(points={{0,90},{0,12}}, color={0,0,0}),
        Text(
          visible=not use_conditionPort,
          extent={{-300,-15},{300,15}},
          lineColor=DynamicSelect({128,128,128}, if condition > 0.5 then {0,255,
              0} else {128,128,128}),
          textString="%condition",
          origin={-155,-3},
          rotation=90),
        Text(
          visible=not loopCheck,
          extent={{10,-60},{400,-80}},
          lineColor={255,0,0},
          fillColor={170,255,213},
          fillPattern=FillPattern.Solid,
          textString="no check"),
        Line(
          visible=not loopCheck,
          points={{0,-15},{0,-100}},
          color={255,0,0},
          smooth=Smooth.None)}),
    Documentation(info="<html>
<p>
<img src=\"../Images/StateGraph/Elements/SimpleStateGraph.png\" align=\"right\">
To define a possible change of states, a Transition is connected to the output of the preceding Step and to the input of the succeeding Step, see figure to the right, where Transition t1 defines the transition from Step s1 to Step s2. Note: A Transition has exactly one preceding and one succeeding Step. A Transition is said to be enabled if the preceding step is active. An enabled transition is said to be fireable when the Boolean condition defined in the parameter menu of the transition is evaluated to <b>true</b>. This condition is also called <u>Transition condition</u> and is displayed in the icon of the Transition (e.g., &quot;time &gt; 1&quot; is the condition of Transition t1). When parameter <u>use_conditionPort</u> is set, the Transition condition is alternatively defined by a Boolean signal that is connected to the enabled <u>conditionPort</u>.
</p>

<p>
A fireable transition will fire immediately. In the figure to the right, t1 fires when s1 is active and time is greater than one, i.e., s1 becomes inactive and s2 becomes active.
The firing of a transition can optionally also be delayed for a certain period of time defined by parameter &quot;waitTime&quot;. See, e.g., t2 in the figure to right, that is delayed for one second before it may fire, given that the condition remains true and the preceding Step remains active during the entire delay time.
</p>

<p>
In the following table different configurations of a Transition are shown:
</p>

<blockquote>
<table cellspacing=\"0\" cellpadding=\"4\" border=\"1\" width=\"600\">
<tr><th>Parameter setting</th>
    <th>Icon</th>
    <th>Description</th></tr>

<tr><td>Default transition</td>
    <td><img src=\"../Images/StateGraph/Elements/Transition-default.png\"></td>
    <td>The transition fires when the preceding step is active
        and the expression &quot;condition&quot; in the parameter menu is <b>true</b>.</td>
    </tr>

<tr><td>use_conditionPort = <b>true</b></td>
    <td><img src=\"../Images/StateGraph/Elements/Transition-use_conditionPort.png\"></td>
    <td>The transition fires when the preceding step is active
        and connector &quot;conditionPort&quot; is <b>true</b>.</td>
    </tr>

<tr><td>delayedTransition = <b>true</b></td>
    <td><img src=\"../Images/StateGraph/Elements/Transition-delayedTransition.png\"></td>
    <td>The transition fires after the delay time &quot;waitTime&quot; (here: 1.23 s),
        if the preceding step was active, and &quot;condition = <b>true</b>&quot;
        during the entire delay time.</td>
    </tr>

<tr><td>use_firePort = <b>true</b></td>
    <td><img src=\"../Images/StateGraph/Elements/Transition-use_firePort.png\"></td>
    <td>Connector &quot;firePort&quot; is <b>true</b> when the transition fires.
        Actions may be triggered, e.g., by connecting block
        <a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.MultiSwitch\">MultiSwitch</a>
        to the firePort.</td>
    </tr>

<tr><td>loopCheck = <b>false</b><br>
        (in &quot;Advanced&quot; tab)</td>
    <td><img src=\"../Images/StateGraph/Elements/Transition-noLoopCheck.png\"></td>
    <td>It is <u>not</u> checked whether the loop in which this Transition
        is used, has at least one delayed transition.
        Use this option only, if you are completley sure that
        infinite event looping is not possible in this loop.
        Consider to use
        <a href=\"modelica://Modelica_StateGraph2.LoopBreakingTransition\">LoopBreakingTransition</a>
        instead!</td>
    </tr>

</table>
</blockquote>

<p>
<img src=\"../Images/StateGraph/Elements/SimpleInfiniteLoop.png\" align=\"right\">
At an event instant, an iteration occurs, due to the Modelica semantics (= whenever a new event occurs, the model is re-evaluated). This means that Transitions keep firing along a connected graph, as long as the firing conditions are true. In principal, it is therefore possible that infinite event looping occurs.
A simple example of this kind is shown in the figure to the right. Here, all Transition conditions are true and therefore all Transitions would fire forever at the initial time. This is, however, no valid StateGraph2 model and will result in a translation error, since it is required that a StateGraph2 model has at least one delayed Transition per loop.
This means that one of T1, T2, or T3, must have parameter delayedTransition=<b>true</b>. Since event iteration stops at a delayed Transition, infinite event looping cannot occur. This also means that at one time instant every Transition can fire at most once and therefore the number of model evaluations at an event instant is bounded by the number of Transition components.
</p>

<p>
If you have to artifically introduce a delay time in order to fulfill the requirement above, it is recommended to use the special
<a href=\"modelica://Modelica_StateGraph2.LoopBreakingTransition\">LoopBreakingTransition</a>
that is designed for this case.
</p>

<p>
Note, it is still possible that infinite event looping occurs due to <u>model errors</u> in other parts of the model. For example, if a user introduces an equation of the form &quot;J = <b>pre</b>(J) + 1&quot; outside of a when-clause, event iteration does not stop.
</p>

<p>
There are rare situations, where infinite event looping cannot occur even if there is no delayed transition in a loop. When you do not want to introduce an artifical time delay in a loop in this case, you can switch off the loop check by setting parameter &quot;loopCheck = <b>false</b>&quot; in the &quot;Advanced&quot; tab of the parameter menu of one Transition in this loop.
</p>

</html>"),
    Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics));
end Transition;
