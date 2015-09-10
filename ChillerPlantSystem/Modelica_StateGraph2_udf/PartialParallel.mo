within ChillerPlantSystem.Modelica_StateGraph2_udf;
partial model PartialParallel
  "Partial compont to construct a parallel submodel via inheritance"
  extends Modelica_StateGraph2_udf.Internal.Interfaces.PartialParallelBase(
    use_inPort=true,
    use_outPort=true,
    use_suspend=true);

  Modelica_StateGraph2_udf.Internal.Interfaces.Step_in inPort[nIn] if
    use_inPort "If enabled, port for one or more input transitions"
    annotation (Placement(iconTransformation(extent={{-40,191},{40,209}})));
  Modelica_StateGraph2_udf.Internal.Interfaces.Step_out outPort[nOut] if
    use_outPort "If enabled, port for one or more output transitions"
    annotation (Placement(iconTransformation(extent={{-39,-214},{41,-200}})));
  Modelica_StateGraph2_udf.Internal.Interfaces.Composite_resume resume[nResume] if
       use_suspend "If enabled, port for zero, one or more resume transitions"
    annotation (Placement(iconTransformation(extent={{-208,-160},{-193,-80}})));
  Modelica_StateGraph2_udf.Internal.Interfaces.Composite_suspend suspend[nSuspend] if
       use_suspend "If enabled, port for zero, one or more suspend transitions"
    annotation (Placement(iconTransformation(extent={{-216,160},{-200,80}})));

  Modelica.Blocks.Interfaces.BooleanOutput activePort=active if use_activePort
    "= true if Parallel component is active, otherwise it is not active"
    annotation (Placement(iconTransformation(extent={{200,-11},{220,9}})));

protected
  Modelica_StateGraph2_udf.Internal.Interfaces.EntryPort entry[nEntry]
    "Entry port for one or more branches (Step or Parallel components must be connected to this port)"
    annotation (Placement(transformation(extent={{-60,95},{60,105}})));
  Modelica_StateGraph2_udf.Internal.Interfaces.ExitPort exit[nExit] if
    use_outPort
    "If enabled, synchronization port for one or more branches (Step or Parallel components must be connected to this port)"
    annotation (Placement(transformation(extent={{-60,-110},{60,-100}})));
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
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-200,-200},{200,200}},
        grid={2,2}), graphics={
        Rectangle(
          extent={{-200,200},{200,-200}},
          lineColor={95,95,95},
          fillColor=DynamicSelect({255,255,255}, if active > 0.5 then {0,255,0}
               else {255,255,255}),
          fillPattern=FillPattern.Solid,
          radius=40,
          lineThickness=0.5),
        Text(
          extent={{54,231},{400,210}},
          lineColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="%name"),
        Text(
          visible=use_suspend,
          extent={{-36,11},{122,-3}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid,
          textString="suspend",
          origin={-179,160},
          rotation=270),
        Text(
          visible=use_suspend,
          extent={{-110,9},{42,-5}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid,
          origin={-173,-154},
          rotation=270,
          textString="resume"),
        Ellipse(
          visible=initialStep,
          extent={{-224,248},{-208,232}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          visible=initialStep,
          points={{-170,200},{-172,224},{-186,216},{-170,200}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Line(
          visible=initialStep,
          points={{-216,240},{-186,232},{-170,200}},
          color={0,0,0},
          smooth=Smooth.Bezier)}),
    Documentation(info="<html>
<p>
This is a variant of the
<a href=\"modelica://Modelica_StateGraph2.Parallel\">Parallel</a>
component. The essential difference is that this
is a \"partial\" model. It is therefore not allowed to drag it. The only purpose of this
model is to inherit from it in order to construct a new model that is a special
Parallel component.
</p>

<p>
The Figure below shows a component (&quot;s2&quot;) built from a PartialParallel component. As the diagram and the icon layer of the PartialParallel component does not need to be the same size, the user can benefit from collecting large subsystems in smaller closed Parallel components to improve overview and modularization of the full system.
</p>

<blockquote>
<img src=\"../Images/StateGraph/Elements/PartialParallel.png\">
</blockquote>


</html>"));
end PartialParallel;
