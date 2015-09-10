within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Connectors;
connector TableComNext "Connects with the successor table"
  output Modelica.Blocks.Interfaces.BooleanOutput Ready
    "Sends signal to successor that table is ready to commence out-transport of the car";
  input Modelica.Blocks.Interfaces.BooleanInput Idle
    "Receives signal from successor that its table is Idle";
  input Modelica.Blocks.Interfaces.BooleanInput Transport
    "Receives signal from successor when out-transport should be performed";
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent=
           {{-100,-100},{100,100}}), graphics={Ellipse(
                      extent={{-100,100},{100,-100}},
                      lineColor={0,0,0},
                      fillColor={0,0,255},
                      fillPattern=FillPattern.Solid)}));
end TableComNext;
