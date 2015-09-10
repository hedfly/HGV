within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathReal;
block ShowValue
  "Show Real value from numberPort or from number input field in diagram layer dynamically"
  parameter Boolean use_numberPort=true "= true, if numberPort enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  input Real number=0.0
    "Number to visualize if use_numberPort=false (time varying)"
    annotation (Dialog(enable=not use_numberPort));
  parameter Integer precision(min=0) = 3
    "Number of significant digits to be shown";

  Modelica.Blocks.Interfaces.RealInput numberPort if use_numberPort
    "Number to be shown in diagram layer if use_numberPort = true"
    annotation (Placement(transformation(extent={{-130,-15},{-100,15}})));
  Modelica.Blocks.Interfaces.RealOutput number2;
equation
  if use_numberPort then
    connect(numberPort, number2);
  else
    number2 = number;
  end if;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Rectangle(
                extent={{100,40},{-100,-40}},
                lineColor={0,0,255},
                fillColor={236,233,216},
                fillPattern=FillPattern.Solid,
                borderPattern=BorderPattern.Raised),Text(extent={{-94,-34},
          {96,34}}, textString=DynamicSelect("0.0", realString(
                number2,
                1,
                integer(precision)))),Text(
                visible=not use_numberPort,
                extent={{-150,-50},{150,-70}},
                lineColor={0,0,0},
                textString="%number")}));
end ShowValue;
