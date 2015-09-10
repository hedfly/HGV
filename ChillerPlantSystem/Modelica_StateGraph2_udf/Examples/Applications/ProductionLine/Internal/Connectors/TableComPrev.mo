within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors;
connector TableComPrev "Connects with the predecessor table"
  input Modelica.Blocks.Interfaces.BooleanInput Ready
    "Receives signal from predecessor that table is ready to commence out-transport of the car";
  output Modelica.Blocks.Interfaces.BooleanOutput Idle
    "Sends signal to predecessor that table is Idle";
  output Modelica.Blocks.Interfaces.BooleanOutput Transport
    "Sends signal to predecessor that out-transport should be performed";
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent=
           {{-100,-100},{100,100}}), graphics={Ellipse(
                      extent={{-100,100},{100,-100}},
                      lineColor={0,0,0},
                      fillColor={170,85,255},
                      fillPattern=FillPattern.Solid)}));
end TableComPrev;
