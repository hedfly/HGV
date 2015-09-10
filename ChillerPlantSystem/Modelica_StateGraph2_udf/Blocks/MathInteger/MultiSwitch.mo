within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathInteger;
block MultiSwitch
  "Set Integer expression that is associated with the first active input signal"

  input Integer expr[nu]=fill(0, nu)
    "y = if u[i] then expr[i] elseif use_pre_as_default then pre(y) else y_default"
    annotation (Dialog);
  parameter Integer y_default=0
    "Default value of output y if use_pre_as_default=false, as well as pre(y) at initial time";

  parameter Boolean use_pre_as_default=true
    "= true, y holds its last value if all u[i]=false, otherwise y=y_default"
    annotation (HideResult=true, choices(__Dymola_checkBox=true));
  parameter Integer nu(min=0) = 0 "Number of input connections"
    annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);

  Modelica_StateGraph2_udf.Blocks.Interfaces.BooleanVectorInput u[nu]
    "Set y = expr[i], if u[i] = true"
    annotation (Placement(transformation(extent={{-110,30},{-90,-30}})));
  Modelica.Blocks.Interfaces.IntegerOutput y "Output depending on expression"
    annotation (Placement(transformation(extent={{300,-10},{320,10}})));

protected
  Integer firstActiveIndex;
initial equation
  pre(y) = y_default;
equation
  firstActiveIndex = BooleanFunctions.firstTrueIndex(u);
  y = if firstActiveIndex > 0 then expr[firstActiveIndex] else if
    use_pre_as_default then pre(y) else y_default;
  annotation (
    defaultComponentName="multiSwitch1",
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{300,100}},
        grid={1,1}), graphics),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{300,100}},
        grid={1,1}), graphics={Text(
                extent={{310,-25},{410,-45}},
                lineColor={0,0,0},
                textString=realString(
                  y,
                  1,
                  0)),Text(
                visible=not use_pre_as_default,
                extent={{-100,-60},{300,-90}},
                lineColor={0,0,0},
                textString="else: %y_default"),Text(
                visible=use_pre_as_default,
                extent={{-100,-50},{300,-80}},
                lineColor={0,0,0},
                textString="else: pre(y)"),Rectangle(
                extent={{-100,-40},{300,40}},
                lineColor={0,0,0},
                fillColor={255,213,170},
                fillPattern=FillPattern.Solid,
                borderPattern=BorderPattern.Raised),Text(
                extent={{-100,90},{300,50}},
                textString="%name",
                lineColor={0,0,255}),Text(
                extent={{-80,15},{290,-15}},
                lineColor={0,0,0},
                fillColor={255,246,238},
                fillPattern=FillPattern.Solid,
                textString="%expr")}),
    Documentation(info="<html>
<p>
The block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Integer expressions expr[:]. The output signal y is
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
