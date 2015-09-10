within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interfaces;
partial block PartialTriggeredSet
  "Partial block to evaluate expression that is associated with the first input trigger signal (optionally with guard)"

  parameter Boolean rising=true "=true, if rising input triggers evaluation"
                                                 annotation (
    Dialog(group="Select exactly one check box"),
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  parameter Boolean changing=false
    "=true, if changing input triggers evaluation" annotation (
    Dialog(group="Select exactly one check box"),
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  parameter Boolean falling=false "=true, if falling input triggers evaluation"
                                                  annotation (
    Dialog(group="Select exactly one check box"),
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  parameter Boolean active=false
    "=true, if active input at sample times triggers evaluation"
    annotation (
    Dialog(group="Select exactly one check box"),
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));

  parameter Boolean use_guard=false "= true, if guard enabled" annotation (
    Dialog(group="Other options"),
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  input Boolean guard=true "y not changing, if guard=false (time varying)"
    annotation (Dialog(group="Other options", enable=use_guard));
  parameter Modelica.SIunits.Time samplePeriod=0
    "Sample period if active=true (only temporarily)"
    annotation (Dialog(group="Other options", enable=active));

protected
  Boolean sampled annotation (HideResult=true);
initial equation
  pre(sampled) = false;
equation
  // Check that exactly only option is selected (radio buttons)
  assert(Modelica_StateGraph2_udf.Blocks.BooleanFunctions.oneTrue({rising,
    changing,falling,active}),
    "Exactly one parameter of {rising, changing, falling, active} must be true");
  annotation (
    defaultComponentName="set1",
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{300,100}},
        grid={1,1}), graphics),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{300,100}},
        grid={1,1}), graphics={Rectangle(
                extent={{-100,50},{-30,-50}},
                lineColor={0,0,0},
                fillColor={210,210,210},
                fillPattern=FillPattern.Solid,
                borderPattern=BorderPattern.Raised),Text(
                visible=use_guard,
                extent={{-100,-60},{300,-90}},
                lineColor={255,0,255},
                fillPattern=FillPattern.Solid,
                textString="%guard"),Text(
                extent={{-99,100},{300,60}},
                textString="%name",
                lineColor={0,0,255}),Line(
                visible=rising,
                points={{-82,-17},{-63,-17},{-63,16},{-41,16}},
                color={255,0,255},
                smooth=Smooth.None),Line(
                visible=changing,
                points={{-85,-17},{-74,-17},{-74,16},{-53,16},{-53,-17},{-38,
            -17}},
                color={255,0,255},
                smooth=Smooth.None),Line(
                visible=falling,
                points={{-83,16},{-63,16},{-63,-17},{-39,-17}},
                color={255,0,255},
                smooth=Smooth.None),Line(
                visible=active,
                points={{-86,-17},{-37,-17}},
                color={255,0,255},
                smooth=Smooth.None),Line(
                visible=active,
                points={{-74,18},{-74,-17}},
                color={255,0,255},
                smooth=Smooth.None),Line(
                visible=active,
                points={{-62,18},{-62,-17}},
                color={255,0,255},
                smooth=Smooth.None),Line(
                visible=active,
                points={{-50,18},{-50,-17}},
                color={255,0,255},
                smooth=Smooth.None)}),
    Documentation(info="<html>

</html>"));
end PartialTriggeredSet;
