within ChillerPlantSystem.Modelica_StateGraph2_udf;
model LoopBreakingTransition
  "Transition to break loops by introducing an artificial time delay (immediately fire and then wait)"

  parameter Boolean use_conditionPort=false "= true, if conditionPort enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));

  parameter Boolean use_firePort=false "= true, if firePort enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));

  input Boolean condition=true
    "Fire condition (time varying Boolean expression)"
    annotation (Dialog(enable=not use_conditionPort));

  parameter Modelica.SIunits.Time waitTime(min=1e-8) = 0.001
    "Time to wait in internal step after transition fired";

  Modelica_StateGraph2_udf.Internal.Interfaces.Transition_in inPort
    "Input port of transition (exactly one connection to this port is required)"
    annotation (Placement(transformation(extent={{-17,83},{17,117}})));

  Modelica_StateGraph2_udf.Internal.Interfaces.Transition_out outPort
    "Output port of transition (exactly one connection from this port is required)"
    annotation (Placement(transformation(extent={{-25,-170},{25,-120}})));

  Modelica.Blocks.Interfaces.BooleanInput conditionPort if use_conditionPort
    "Fire condition as Boolean input."
    annotation (Placement(transformation(extent={{-150,25},{-100,75}})));

  Modelica.Blocks.Interfaces.BooleanOutput firePort if use_firePort
    "= true, if transition fires"
    annotation (Placement(transformation(extent={{90,35},{120,65}})));

  output Boolean fire
    "= true, if transition fired (afterwards, there will be a delay time of waitTime)";

protected
  Boolean active=waitStep.active annotation (HideResult=false);
  Modelica_StateGraph2_udf.Transition T1(
    final use_conditionPort=use_conditionPort,
    final use_firePort=true,
    final loopCheck=true,
    final condition=condition)
    annotation (Placement(transformation(extent={{-5,45},{5,55}})));
  Modelica_StateGraph2_udf.Step waitStep(
    final initialStep=false,
    final use_activePort=true,
    final nIn=1,
    final nOut=1)
    annotation (Placement(transformation(extent={{-4,21},{4,29}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.OnDelay onDelay(final delayTime=
        waitTime)
    annotation (Placement(transformation(extent={{32,20},{42,30}})));
  Modelica_StateGraph2_udf.Transition T2(
    final use_conditionPort=true,
    final use_firePort=false,
    final loopCheck=false,
    final condition=true)
    annotation (Placement(transformation(extent={{5,-5},{-5,5}})));
equation
  fire = T1.fire;
  assert(waitTime >= 1e-8,
    "Parameter waitTime >= 1e-8 required, but waitTime = " + String(waitTime));
  connect(T1.outPort, waitStep.inPort[1]) annotation (Line(
      points={{0,43.75},{0,29}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(waitStep.activePort, onDelay.u) annotation (Line(
      points={{4.72,25},{30.5,25}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(waitStep.outPort[1], T2.inPort) annotation (Line(
      points={{0,20.4},{0,5}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(inPort, T1.inPort) annotation (Line(
      points={{0,100},{0,55}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T1.conditionPort, conditionPort) annotation (Line(
      points={{-6.25,50},{-125,50}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(onDelay.y, T2.conditionPort) annotation (Line(
      points={{43,25},{53,25},{53,0},{6.25,0}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(firePort, firePort) annotation (Line(
      points={{105,50},{105,50}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(T2.outPort, outPort) annotation (Line(
      points={{0,-6.25},{0,-145}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(T1.firePort, firePort) annotation (Line(
      points={{5.25,50},{105,50}},
      color={255,0,255},
      smooth=Smooth.None));
  annotation (
    defaultComponentName="T1",
    Icon(coordinateSystem(
        extent={{-100,-100},{100,100}},
        initialScale=0.04,
        preserveAspectRatio=true,
        grid={1,1}), graphics={
        Text(
          extent={{-200,10},{200,-10}},
          lineColor={255,0,0},
          textString="%waitTime",
          origin={220,-110},
          rotation=0),
        Line(points={{0,-94},{0,-120}}, color={255,0,0}),
        Line(points={{0,-60},{0,-78}}, color={255,0,0}),
        Text(
          extent={{-150,-15},{150,15}},
          textString="%name",
          lineColor={0,0,255},
          origin={150,105},
          rotation=0),
        Rectangle(
          extent={{-100,40},{100,60}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          radius=10),
        Line(points={{0,83},{0,20}}, color={0,0,0}),
        Text(
          visible=not use_conditionPort,
          extent={{-300,-15},{300,15}},
          lineColor=DynamicSelect({128,128,128}, if condition > 0.5 then {0,255,
              0} else {128,128,128}),
          textString="%condition",
          origin={-153,49},
          rotation=90),
        Rectangle(
          extent={{-50,20},{50,-40}},
          lineColor={0,0,0},
          fillColor=DynamicSelect({255,255,255}, if active > 0.5 then {0,255,0}
               else {255,255,255}),
          fillPattern=FillPattern.Solid,
          radius=20),
        Line(points={{0,-40},{0,-60}}, color={0,0,0}),
        Line(
          points={{-70,-60},{70,-60}},
          color={0,0,0},
          smooth=Smooth.None)}),
    Documentation(info="<html>
<p>
Every loop in a StateGraph2 model needs to have at least one delayed
transition. If this is not the case, a delay needs to be introduced
at one transition of a loop. The \"<u>LoopBreakingTransition</u>\" is
designed to replace an (immediate)
<a href=\"modelica://Modelica_StateGraph2.Transition\">Transition</a>
by a Transition that
fires immediately, and then waits in an internal step for the defined
delay time. The semantics is therefore slightly different if a Transition
with \"delayedTransition = true\" is used. In the latter case, the transition
only fires after the delay time and the fire condition must remain true
during this time period.
</p>

<p>
A LoopBreakingTransition is just a convenient short hand notation
for the combination of a Transition, a Step, and a delayed Transition
as shown in the following table:
</p>

<blockquote>
<table cellspacing=\"0\" cellpadding=\"4\" border=\"1\">
<tr><th>LoopBreakingTransition</th>
    <th>Equivalent system</th>
    </tr>
<tr><td align=\"center\" valign=\"middle\">
    <img src=\"../Images/StateGraph/Elements/LoopBreakingTransition.png\"></td>
    <td>
    <img src=\"../Images/StateGraph/Elements/LoopBreakingTransition-details.png\"></td>
    </tr>
</table>
</blockquote>

<p>
In the following table different configurations of a LoopBreakingTransition are shown:
</p>

<blockquote>
<table cellspacing=\"0\" cellpadding=\"4\" border=\"1\" width=\"600\">
<tr><th>Parameter setting</th>
    <th>Icon</th>
    <th>Description</th></tr>

<tr><td>Default transition</td>
    <td><img src=\"../Images/StateGraph/Elements/LoopBreakingTransition-default.png\"></td>
    <td>The LoopBreakingTransition fires when the preceding step is active
        and the expression &quot;condition&quot; in the parameter menu is <b>true</b>.
        After a &quot;waitTime&quot; (here: 0.001&nbsp;s) the succeding step is activated.</td>
    </tr>

<tr><td>use_conditionPort = <b>true</b></td>
    <td><img src=\"../Images/StateGraph/Elements/LoopBreakingTransition-use_conditionPort.png\"></td>
    <td>The LoopBreakingTransition fires when the preceding step is active
        and connector &quot;conditionPort&quot; is <b>true</b>.
        After a &quot;waitTime&quot; (here: 0.001&nbsp;s) the succeding step is activated.</td>
    </tr>

<tr><td>use_firePort = <b>true</b></td>
    <td><img src=\"../Images/StateGraph/Elements/LoopBreakingTransition-use_firePort.png\"></td>
    <td>Connector &quot;firePort&quot; is <b>true</b> when the LoopBreakingTransition fires
        and the internal Step of this element is activated.
        Actions may be triggered, e.g., by connecting block
        <a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.MultiSwitch\">MultiSwitch</a>
        to the firePort.</td>
    </tr>

</table>
</blockquote>

</html>"),
    Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics));
end LoopBreakingTransition;
