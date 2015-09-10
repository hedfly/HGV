within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathInteger;
block TriggeredAdd
  "Add input to previous value of output, if rising edge of trigger port"
  extends Interfaces.PartialIntegerSISO;

  parameter Boolean use_reset=false "=true, if reset port enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  parameter Boolean use_set=false
    "=true, if set port enabled and used as default value when reset"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  parameter Integer y_start=0
    "Initial and reset value of y if set port is not used";

  Modelica.Blocks.Interfaces.BooleanInput trigger annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-60,-120})));
  Modelica.Blocks.Interfaces.BooleanInput reset if use_reset annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={60,-120})));
  Modelica.Blocks.Interfaces.IntegerInput set if use_set annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={60,120}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={28,98})));
protected
  Modelica.Blocks.Interfaces.BooleanOutput local_reset
    annotation (HideResult=true);
  Modelica.Blocks.Interfaces.IntegerOutput local_set;
initial equation
  pre(y) = y_start;
equation
  if use_reset then
    connect(reset, local_reset);
    if use_set then
      connect(set, local_set);
    else
      local_set = y_start;
    end if;
  else
    local_reset = false;
    local_set = 0;
  end if;

  when {trigger,local_reset} then
    y = if local_reset then local_set else pre(y) + u;
  end when;
  annotation (
    defaultComponentName="add1",
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        initialScale=0.06), graphics),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        initialScale=0.06), graphics={Line(
                points={{-100,0},{32,76}},
                color={255,128,0},
                smooth=Smooth.None,
                pattern=LinePattern.Dot),Line(
                points={{-100,0},{32,-20}},
                color={255,128,0},
                pattern=LinePattern.Dot,
                smooth=Smooth.None),Line(
                points={{-54,-56},{-26,-56},{-26,-20},{32,-20},{32,76}},
                color={0,0,0},
                smooth=Smooth.None),Line(
                points={{-60,-100},{32,-20}},
                color={255,0,255},
                pattern=LinePattern.Dot,
                smooth=Smooth.None),Text(
                visible=use_reset,
                extent={{-28,-62},{94,-86}},
                lineColor={0,0,0},
                textString="reset")}));
end TriggeredAdd;
