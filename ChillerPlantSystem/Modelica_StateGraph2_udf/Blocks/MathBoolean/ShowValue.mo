within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathBoolean;
block ShowValue
  "Show Integer value from numberPort or from number input field in diagram layer dynamically"
  parameter Boolean use_activePort=true "= true, if activePort enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  input Boolean active=false
    "Boolean variable to visualize if use_activePort=false (time varying)"
    annotation (Dialog(enable=not use_activePort));
  Modelica.Blocks.Interfaces.BooleanInput activePort if use_activePort
    "Boolean variable to be shown in diagram layer if use_activePort = true"
    annotation (Placement(transformation(extent={{-130,-15},{-100,15}})));

  Modelica.Blocks.Interfaces.BooleanOutput active2;
equation
  if use_activePort then
    connect(activePort, active2);
  else
    active2 = active;
  end if;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Text(
                visible=not use_activePort,
                extent={{-188,-60},{62,-80}},
                lineColor={0,0,0},
                textString="%active"),Ellipse(
                extent={{-100,-40},{-20,40}},
                fillColor=DynamicSelect({235,235,235}, if active2 > 0.5
             then {0,255,0} else {235,235,235}),
                lineColor={0,0,0},
                pattern=LinePattern.None,
                fillPattern=FillPattern.Sphere)}));
end ShowValue;
