within ChillerPlantSystem.Modelica_StateGraph2_udf;
model Parallel "Composite or parallel step"
  extends Modelica_StateGraph2_udf.Internal.Interfaces.PartialParallelBase;

  Modelica_StateGraph2_udf.Internal.Interfaces.Step_in inPort[nIn] if
    use_inPort "If enabled, port for one or more input transitions"
    annotation (Placement(iconTransformation(extent={{-12,78},{12,82}})));
  Modelica_StateGraph2_udf.Internal.Interfaces.Step_out outPort[nOut] if
    use_outPort "If enabled, port for one or more output transitions"
    annotation (Placement(iconTransformation(extent={{-15,-84},{15,-80}})));
  Modelica_StateGraph2_udf.Internal.Interfaces.Composite_suspend suspend[nSuspend] if
       use_suspend "If enabled, port for zero, one or more suspend transitions"
    annotation (Placement(iconTransformation(extent={{-66,59},{-60,31}})));
  Modelica_StateGraph2_udf.Internal.Interfaces.Composite_resume resume[nResume] if
       use_suspend "If enabled, port for zero, one or more resume transitions"
    annotation (Placement(iconTransformation(extent={{-63,-31},{-57,-59}})));

  Modelica_StateGraph2_udf.Internal.Interfaces.EntryPort entry[nEntry]
    "Entry port for one or more branches (Step or Parallel components must be connected to this port)"
    annotation (Placement(transformation(extent={{-6,70},{6,74}})));

  Modelica_StateGraph2_udf.Internal.Interfaces.ExitPort exit[nExit] if
    use_outPort
    "If enabled, synchronization port for one or more branches (Step or Parallel components must be connected to this port)"
    annotation (Placement(transformation(extent={{-6,-74},{6,-70}}),
        iconTransformation(extent={{-6,-75},{6,-71}})));

  Modelica.Blocks.Interfaces.BooleanOutput activePort=active if use_activePort
    "= true if Parallel component is active, otherwise it is not active"
    annotation (Placement(iconTransformation(extent={{60,-2.5},{65,2.5}})));

equation
  // Handle conditional connectors
  connect(inPort, local_inPort);
  connect(outPort, local_outPort);
  connect(suspend, local_suspend);
  connect(resume, local_resume);
  connect(entry, local_entry);
  if use_outPort then
    connect(exit, local_exit);
  end if;
  annotation (
    defaultComponentName="step1",
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-60,-80},{60,80}},
        initialScale=1,
        grid={0.5,0.5}), graphics={Text(
            extent={{4,73},{15,70}},
            lineColor={0,0,0},
            textString="entry"),Text(
            extent={{3,-70},{14,-73}},
            lineColor={0,0,0},
            textString="exit")}),
    Icon(coordinateSystem(
        extent={{-60,-80},{60,80}},
        initialScale=1,
        grid={0.5,0.5},
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}}), graphics={
        Rectangle(
          extent={{-60,80},{60,-80}},
          lineColor=DynamicSelect({95,95,95}, if active > 0.5 then {0,255,0}
               else {95,95,95}),
          radius=20,
          lineThickness=0.5),
        Text(
          extent={{1,78.5},{60,73.5}},
          lineColor={0,0,255},
          textString="%name"),
        Text(
          extent={{-30,75},{-5,74}},
          lineColor={0,0,0},
          textString="entry"),
        Text(
          visible=use_outPort,
          extent={{-25,-76},{-5,-77}},
          lineColor={0,0,0},
          textString="exit"),
        Text(
          visible=use_suspend,
          extent={{-20,1},{20,-1}},
          lineColor={0,0,0},
          textString="suspend",
          origin={-56,45},
          rotation=-90),
        Text(
          visible=use_suspend,
          extent={{-20,1},{20,-1}},
          lineColor={0,0,0},
          origin={-53,-45},
          rotation=-90,
          textString="resume"),
        Line(
          visible=use_inPort,
          points={{0,78},{0,73.5}},
          color={0,0,0},
          smooth=Smooth.None,
          pattern=LinePattern.Dot),
        Line(
          visible=use_outPort,
          points={{0,-80},{0,-75}},
          color={0,0,0},
          pattern=LinePattern.Dot,
          smooth=Smooth.None),
        Ellipse(
          visible=initialStep,
          extent={{-54.5,96},{-52,93.5}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid,
          fillColor={0,0,0}),
        Line(
          visible=initialStep,
          points={{-53,95},{-44.5,92.5},{-41,80}},
          color={0,0,0},
          smooth=Smooth.Bezier),
        Polygon(
          visible=initialStep,
          points={{-41,80},{-40.5,86},{-44.5,85},{-41,80}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>
<p>
This component acts both as a composite step (having just <u>one branch</u>) and as a Step that has <u>parallel branches</u> that are executed in parallel to each other.
The details are summarized
<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Parallel\">here</a>
in the tutorial. A typical example for the usage
is shown in the next Figure (component &quot;p&quot;):
</p>


<blockquote>
<img src=\"../Images/StateGraph/Elements/Parallel.png\">
</blockquote>

<p>
In the following table different configurations of a Parallel component are shown:
</p>

<blockquote>
<table cellspacing=\"0\" cellpadding=\"4\" border=\"1\" width=\"400\">
<tr><td>use_inPort=<b>true</b><br>&nbsp;<br>
        <img src=\"../Images/StateGraph/Elements/Parallel-inPort.png\"></td>
    <td>use_inPort=<b>true</b><br>
        use_outPort=<b>true</b><br>&nbsp;<br>
        <img src=\"../Images/StateGraph/Elements/Parallel-inPort-and-outPort.png\"></td>
    </tr>

<tr><td>use_inPort=<b>true</b><br>
        use_suspend=<b>true</b><br>
        use_activePort=<b>true</b><br>&nbsp;<br>
        <img src=\"../Images/StateGraph/Elements/Parallel-suspend-use_activePort.png\"></td>
    <td>initialStep=<b>true</b><br>&nbsp;<br>
        <img src=\"../Images/StateGraph/Elements/Parallel-initialStep.png\"></td>
    </tr>
</table>
</blockquote>

</html>"));
end Parallel;
