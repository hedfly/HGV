within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interactive;
model ToggleButton
  "Button that sets its value to the opposite of its previous value when pressed down and then keeps this value until pressed anew"
  parameter String label="";
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (Placement(
        transformation(extent={{90,-10},{110,10}}, rotation=0)));

equation
  when false then
    y = false;
  end when;
  annotation (Icon(
      coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}),
      graphics={Rectangle(
                extent={{-100,-100},{100,100}},
                fillColor=DynamicSelect({192,192,192}, if y > 0.5 then {255,
            0,0} else {192,192,192}),
                borderPattern=BorderPattern.Raised,
                fillPattern=FillPattern.Solid,
                lineColor={128,128,128},
                lineThickness=4),Text(
                extent={{-80,-40},{80,40}},
                lineColor={0,0,255},
                textString="%label")},
      interaction={OnMouseDownSetBoolean(y, not y > 0.5)}));
end ToggleButton;
