within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector Composite_suspend "Suspend port of a Composite"
  extends Step_out_base;
  annotation (
    defaultComponentName="suspend",
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-30,-140},{30,140}},
        grid={1,1}), graphics),
    Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-30,-140},{30,140}},
        grid={1,1}), graphics={Polygon(
          points={{30,140},{-30,0},{30,-140},{30,140}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={170,255,213},
          fillPattern=FillPattern.Solid)}));
end Composite_suspend;
