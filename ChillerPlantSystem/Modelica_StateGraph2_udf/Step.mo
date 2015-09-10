within ChillerPlantSystem.Modelica_StateGraph2_udf;
model Step "Step (optionally with initial step and/or activePort)"
  parameter Integer nIn(min=0) = 0 "Number of input connections"
    annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
  parameter Integer nOut(min=0) = 0 "Number of output connections"
    annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
  parameter Boolean initialStep=false
    "=true, if initial step (graph starts at this step)" annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  parameter Boolean use_activePort=false "=true, if activePort enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));

  Modelica_StateGraph2_udf.Internal.Interfaces.Step_in inPort[nIn]
    "Port for zero, one, or more input transitions"
    annotation (Placement(transformation(extent={{-50,85},{50,115}})));
  Modelica_StateGraph2_udf.Internal.Interfaces.Step_out outPort[nOut]
    "Port for zero, one, or more output transitions"
    annotation (Placement(transformation(extent={{-50,-130},{50,-100}})));
  Modelica.Blocks.Interfaces.BooleanOutput activePort=active if use_activePort
    "= true if step is active, otherwise the step is not active"
    annotation (Placement(transformation(extent={{100,-18},{136,18}})));
  output Boolean active
    "= true if step is active, otherwise the step is not active";

protected
  Boolean newActive(start=initialStep, fixed=true)
    "Value of active in the next iteration";
  Boolean oldActive(start=initialStep, fixed=true)
    "Value of active when CompositeStep was aborted";

  Modelica_StateGraph2_udf.Internal.Interfaces.Node node
    "Handles rootID as well as suspend and resume transitions from a Modelica_StateGraph2";

  Boolean inport_fire;
  Boolean outport_fire;

equation
  // set active state
  inport_fire = Modelica_StateGraph2_udf.Blocks.BooleanFunctions.anyTrue(inPort.fire);
  outport_fire = Modelica_StateGraph2_udf.Blocks.BooleanFunctions.anyTrue(
    outPort.fire);
  newActive = if node.resume then oldActive else inport_fire or (active and
    not outport_fire) and not node.suspend;
  active = pre(newActive);

  // Remember state for suspend action
  when node.suspend then
    oldActive = active;
  end when;

  // Report state to output transitions
  for i in 1:nOut loop
    outPort[i].available = if i == 1 then active and not node.suspend else
      outPort[i - 1].available and not outPort[i - 1].fire and not node.suspend;
  end for;

  inPort.checkUnaryConnection = fill(true, nIn);
  outPort.checkOneDelayedTransitionPerLoop = fill(
    Modelica_StateGraph2_udf.Internal.Utilities.propagateLoopCheck(inPort.checkOneDelayedTransitionPerLoop),
    nOut);

  // Handle initial step and propagate node information from inPort to node

  for i in 1:nIn loop
    Connections.branch(inPort[i].node, node);
    inPort[i].node = node;
  end for;

  if initialStep then
    Connections.uniqueRoot(node, "
The StateGraph has a wrong connection structure. Reasons:
(1) The StateGraph is initialized at two different locations (initial steps or entry ports).
(2) A transition is made wrongly out of a Parallel component.
(3) A transition is made between two branches of a Parallel component.
All these cases are not allowed.
");

    node.suspend = false;
    node.resume = false;
  else
    // Check that connections to the connector are correct
    assert(nIn > 0, "Step is not reachable since it has no input transition");

    // In order that check works (nIn=0), provide the missing equations
    if nIn == 0 then
      node.suspend = false;
      node.resume = false;
    end if;
  end if;

  // Propagate node information from node to outPort
  for i in 1:nOut loop
    Connections.branch(node, outPort[i].node);
    outPort[i].node = node;
  end for;

  // Check that all graph connectors are connected
  for i in 1:size(inPort, 1) loop
    if cardinality(inPort[i]) == 0 then
      inPort[i].fire = true;
      inPort[i].checkOneDelayedTransitionPerLoop = true;
      assert(false, "
An element of the inPort connector of this step is not connected. Most likely, the Modelica tool
has a bug and does not correctly handle the connectorSizing annotation in a particular case.
You can fix this by removing all input connections to this step and by manually removing
the line 'nIn=...' in the text layer where this step is declared.
"); end if;
  end for;

  for i in 1:size(outPort, 1) loop
    if cardinality(outPort[i]) == 0 then
      outPort[i].fire = true;
      assert(false, "
An element of the outPort connector of this step is not connected. Most likely, the Modelica tool
has a bug and does not correctly handle the connectorSizing annotation in a particular case.
You can fix this by removing all output connections to this step and by manually removing
the line 'nOut=...' in the text layer where this step is declared.
"); end if;
  end for;
  annotation (
    defaultComponentName="step1",
    Documentation(info="<html>
<p>
A Step is the graphical representation of a state and is said to be either
active or not active. A StateGraph2 model is comprised of one or more
steps that may or may not change their states during execution.
The input port of a Step (inPort) can only be connected to the output port
of a Transition, and the output port of a Step (outPort) can only be connected
to the input of a Transition. An arbitrary number of input and/or output
Transitions can be connected to these ports.
</p>

<p>
The state of a step is available via the output variable <b>active</b> that can
be used in action blocks (e.g. \"step.active\"). Alternatively, via parameter
\"use_activePort\" the Boolean output port \"activePort\" can be enabled.
When the step is active, activePort = <b>true</b>, otherwise it is <b>false</b>. This port can
be connected to Boolean action blocks, e.g., from
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean\">Modelica_StateGraph2.Blocks.MathBoolean</a>.
</p>

<p>
Every StateGraph2 graph
must have exactly one initial step. An initial step is defined by setting parameter initialStep
at one Step or one Parallel component to true. The initial step is visualized by a
small arrow pointing to this step.
</p>

<p>
In the following table different configurations of a Step are shown:
</p>

<blockquote>
<table cellspacing=\"0\" cellpadding=\"4\" border=\"1\" width=\"600\">
<tr><th>Parameter setting</th>
    <th>Icon</th>
    <th>Description</th>
    </tr>

<tr><td> Default step</td>
    <td><img src=\"../Images/StateGraph/Elements/Step-default.png\"></td>
    <td> If the step is active, the public Step variable &quot;active&quot; is <b>true</b>
         otherwise, it is <b>false</b>. An active Step is visualized by a green
         fill color in diagram animation.</td>
    </tr>

<tr><td> use_activePort = <b>true</b></td>
    <td><img src=\"../Images/StateGraph/Elements/Step-use_activePort.png\"></td>
    <td>If the step is active, the connector &quot;activePort&quot; is <b>true</b>
        otherwise, it is <b>false</b> (the activePort is the small, violet, triangle
        at the rigth side of the Step icon). Actions may be triggered, e.g., by connecting block
        <a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.MultiSwitch\">MultiSwitch</a>
        to the activePort.</td></tr>

<tr><td> initialStep = <b>true</b></td>
    <td><img src=\"../Images/StateGraph/Elements/Step-initial.png\"></td>
    <td> Exactly <u>one</u> Step or Parallel component in a StateGraph2 graph
         must have &quot;initialStep = <b>true</b>&quot;. At the first model evaluation
         during initialization, &quot;active&quot; is set to <b>true</b> for
         the initial Step or the initial Parallel component, i.e.,
         the respective component is activated.</td>
    </tr>
</table>
</blockquote>

<p>
The inPort and the outPort connectors of a Step are &quot;vectors of connectors&quot;.
How connections to these ports are automatically handled in a convenient way is sketched
<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.VectorsOfConnectors\">here</a>
in the tutorial.
</p>

</html>"),
    Icon(coordinateSystem(
        extent={{-100,-100},{100,100}},
        preserveAspectRatio=true,
        initialScale=0.04,
        grid={1,1}), graphics={
        Text(
          extent={{15,118},{470,193}},
          textString="%name",
          lineColor={0,0,255}),
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor=DynamicSelect({255,255,255}, if active > 0.5 then {0,255,0}
               else {255,255,255}),
          fillPattern=FillPattern.Solid,
          radius=60),
        Line(
          visible=initialStep,
          points={{-235,181},{-137,181},{-90,90}},
          color={0,0,0},
          smooth=Smooth.Bezier),
        Ellipse(
          visible=initialStep,
          extent={{-255,199},{-219,163}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          visible=initialStep,
          points={{-95,140},{-90,90},{-126,124},{-95,140}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(
        extent={{-100,-100},{100,100}},
        preserveAspectRatio=true,
        initialScale=0.04,
        grid={1,1}), graphics));
end Step;
