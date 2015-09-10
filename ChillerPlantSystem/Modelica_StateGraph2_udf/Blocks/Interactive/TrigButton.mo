within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interactive;
model TrigButton
  "Button that sets its output y to true when pressing starts and otherwise sets its output to false"
  parameter String label="";
  parameter Boolean useGraphicalOutput=true;

  Modelica.Blocks.Interfaces.BooleanOutput y annotation (Placement(
        transformation(extent={{90,-10},{110,10}}, rotation=0)));
protected
  Boolean buttonState(start=false, fixed=true) annotation (HideResult=false);
  Boolean pre_buttonState(start=false, fixed=true)
    annotation (HideResult=false);
equation
  when pre(buttonState) then
    buttonState = false;
  end when;
  pre_buttonState = pre(buttonState);
  y = edge(pre_buttonState);
  annotation (Icon(
      coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}),
      graphics={Rectangle(
                borderPattern=BorderPattern.Raised,
                extent={{-100,-100},{100,100}},
                fillColor=DynamicSelect({192,192,192}, if buttonState > 0.5
             then {255,0,0} else {192,192,192}),
                fillPattern=FillPattern.Solid,
                lineColor={128,128,128},
                lineThickness=2),Text(
                extent={{-80,-40},{80,40}},
                lineColor={0,0,255},
                textString="%label")},
      interaction={OnMouseDownSetBoolean(buttonState, true)}), Diagram(
        coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics));
end TrigButton;
