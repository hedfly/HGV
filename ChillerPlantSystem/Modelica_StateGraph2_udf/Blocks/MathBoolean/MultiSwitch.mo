within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathBoolean;
block MultiSwitch
  "Set Boolean expression that is associated with the first active input signal"

  input Boolean expr[nu]=fill(false, nu)
    "y = if u[i] then expr[i] else y_default (time varying)"
    annotation (Dialog);
  parameter Boolean use_pre_as_default=true
    "set true to hold last value as default (y_default = pre(y))"
    annotation (HideResult=true, choices(__Dymola_checkBox=true));
  parameter Boolean y_default=false
    "Default value of output y if all u[i] = false"
    annotation (Dialog(enable=not use_pre_as_default));

  parameter Integer nu(min=0) = 0 "Number of input connections"
    annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);

  Modelica_StateGraph2_udf.Blocks.Interfaces.BooleanVectorInput u[nu]
    "Set y = expr[i], if u[i] = true"
    annotation (Placement(transformation(extent={{-110,30},{-90,-30}})));
  Modelica.Blocks.Interfaces.BooleanOutput y(start=y_default, fixed=true)
    "Output depending on expression"
    annotation (Placement(transformation(extent={{300,-10},{320,10}})));

protected
  Integer firstActiveIndex;
equation
  firstActiveIndex = BooleanFunctions.firstTrueIndex(u);
  y = if firstActiveIndex == 0 then (if use_pre_as_default then pre(y)
     else y_default) else expr[firstActiveIndex];
  annotation (
    defaultComponentName="set1",
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{300,100}},
        grid={1,1}), graphics),
    Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{300,100}},
        grid={1,1}), graphics={Text(
                visible=not use_pre_as_default,
                extent={{-100,-60},{300,-90}},
                lineColor={0,0,0},
                textString="else: %y_default"),Text(
                visible=use_pre_as_default,
                extent={{-100,-60},{300,-90}},
                lineColor={0,0,0},
                textString="else: pre(y)"),Text(
                extent={{-99,99},{300,59}},
                textString="%name",
                lineColor={0,0,255}),Rectangle(
                extent={{-100,-51},{300,50}},
                lineColor={255,127,0},
                fillColor={210,210,210},
                fillPattern=FillPattern.Solid,
                borderPattern=BorderPattern.Raised),Text(
                extent={{-84,16},{273,-15}},
                lineColor={0,0,0},
                fillColor={255,246,238},
                fillPattern=FillPattern.Solid,
                textString="%expr"),Ellipse(
                extent={{275,8},{289,-6}},
                lineColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,
            255,0} else {235,235,235}),
                fillColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,
            255,0} else {235,235,235}),
                fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>
<p>
The block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Boolean expressions expr[:]. The output signal y is
set to expr[i], if i is the first element in the input vector u that is true. If all input signals are
false, y is set to parameter \"y_default\" or to pre(y) depending on the parameter use_pre_as_default:
</p>

<pre>
  // Conceptual equation (not valid Modelica)
  i = 'first element of u[:] that is true';
  y = <b>if</b> i==0 <b>then</b> <b>if</b> use_pre_as_default <b>then</b> pre(y) <b>else</b> y_default <b>else</b> expr[i];
</pre>

</html>"));
end MultiSwitch;
