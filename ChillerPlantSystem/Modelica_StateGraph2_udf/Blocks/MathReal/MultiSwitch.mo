within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.MathReal;
block MultiSwitch
  "Set Real expression that is associated with the first active input signal"

  input Real expr[nu]=fill(0.0, nu)
    "y = if u[i] then expr[i] else y_default (time varying)"
    annotation (Dialog);
  parameter Real y_default=0.0 "Default value of output y if all u[i] = false";

  parameter Integer nu(min=0) = 0 "Number of input connections"
    annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
  parameter Integer precision(min=0) = 3
    "Number of significant digits to be shown in dynamic diagram layer for y"
    annotation (Dialog(tab="Advanced"));

  Modelica_StateGraph2_udf.Blocks.Interfaces.BooleanVectorInput u[nu]
    "Set y = expr[i], if u[i] = true"
    annotation (Placement(transformation(extent={{-110,30},{-90,-30}})));
  Modelica.Blocks.Interfaces.RealOutput y(start=y_default, fixed=true)
    "Output depending on expression"
    annotation (Placement(transformation(extent={{300,-10},{320,10}})));

protected
  Integer firstActiveIndex;
initial equation
  pre(u) = fill(false, nu);
equation
  firstActiveIndex = BooleanFunctions.firstTrueIndex(u);
  y = if firstActiveIndex == 0 then y_default else expr[firstActiveIndex];
  annotation (
    defaultComponentName="multiSwitch1",
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{300,100}},
        grid={1,1}), graphics),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{300,100}},
        grid={1,1}), graphics={Rectangle(
                extent={{-100,-51},{300,50}},
                lineColor={0,0,0},
                fillColor={170,213,255},
                fillPattern=FillPattern.Solid,
                borderPattern=BorderPattern.Raised),Text(
                extent={{-86,16},{295,-17}},
                lineColor={0,0,0},
                fillColor={255,246,238},
                fillPattern=FillPattern.Solid,
                textString="%expr"),Text(
                extent={{310,-25},{410,-45}},
                lineColor={0,0,0},
                textString=DynamicSelect(" ", realString(
                  y,
                  1,
                  integer(precision)))),Text(
                extent={{-100,-60},{300,-90}},
                lineColor={0,0,0},
                textString="else: %y_default"),Text(
                extent={{-100,100},{300,60}},
                textString="%name",
                lineColor={0,0,255})}),
    Documentation(info="<html>
<p>
The block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Real expressions expr[:]. The output signal y is
set to expr[i], if i is the first element in the input vector u that is true. If all input signals are
false, y is set to parameter \"y_default\":
</p>

<pre>
  // Conceptual equation (not valid Modelica)
  i = 'first element of u[:] that is true';
  y = <b>if</b> i==0 <b>then</b> y_default <b>else</b> expr[i];
</pre>

</html>"));
end MultiSwitch;
