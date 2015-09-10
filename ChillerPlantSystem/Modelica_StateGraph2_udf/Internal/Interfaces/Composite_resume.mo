within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector Composite_resume "Resume port of a composite step"
  extends Step_in_base;
  annotation (
    defaultComponentName="resume",
    Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-140,-30},{140,30}},
        grid={1,1}), graphics),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-140,-30},{140,30}},
        grid={1,1}), graphics={Ellipse(
          extent={{-140,30},{140,-30}},
          lineColor={0,0,0},
          fillColor={170,255,213},
          fillPattern=FillPattern.Solid)}));
end Composite_resume;
