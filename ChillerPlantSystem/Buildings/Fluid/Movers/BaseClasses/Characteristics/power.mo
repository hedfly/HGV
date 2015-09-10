within ChillerPlantSystem.Buildings.Fluid.Movers.BaseClasses.Characteristics;
function power "Flow vs. electrical power characteristics for fan or pump"
  extends Modelica.Icons.Function;
  input Buildings.Fluid.Movers.BaseClasses.Characteristics.powerParameters data
    "Pressure performance data";
  input Modelica.SIunits.VolumeFlowRate V_flow "Volumetric flow rate";
  input Real r_N(unit="1") "Relative revolution, r_N=N/N_nominal";
  input Real d[:] "Derivatives at support points for spline interpolation";
  output Modelica.SIunits.Power P "Power consumption";

protected
   Integer n=size(data.V_flow, 1) "Dimension of data vector";

   Modelica.SIunits.VolumeFlowRate rat "Ratio of V_flow/r_N";
   Integer i "Integer to select data interval";

algorithm
  if n == 1 then
    P := r_N^3*data.P[1];
  else
    i :=1;
    // Since the coefficients for the spline were evaluated for
    // rat_nominal = V_flow_nominal/r_N_nominal = V_flow_nominal/1, we use
    // V_flow_nominal below
    for j in 1:n-1 loop
       if V_flow > data.V_flow[j] then
         i := j;
       end if;
    end for;
    // Extrapolate or interpolate the data
    P := r_N^3*
      Buildings.Utilities.Math.Functions.cubicHermiteLinearExtrapolation(
      x=V_flow,
      x1=data.V_flow[i],
      x2=data.V_flow[i + 1],
      y1=data.P[i],
      y2=data.P[i + 1],
      y1d=d[i],
      y2d=d[i + 1]);
  end if;
  annotation(smoothOrder=1,
              Documentation(info="<html>
<p>
This function computes the fan power consumption for given volume flow rate,
speed and performance data. The power consumption is
</p>
<p align=\"center\" style=\"font-style:italic;\">
  P = r<sub>N</sub><sup>3</sup> &nbsp; s(V, d),
</p>
<p>
where
<i>P</i> is the power consumption,
<i>r<sub>N</sub></i> is the normalized fan speed,
<i>V</i> is the volume flow rate and
<i>d</i> are performance data for fan or pump power consumption at <i>r<sub>N</sub>=1</i>.
</p>
<h4>Implementation</h4>
<p>
The function <i>s(&middot;, &middot;)</i> is a cubic hermite spline.
If the data <i>d</i> define a monotone decreasing sequence, then 
<i>s(&middot;, d)</i> is a monotone decreasing function.
</p>
</html>",
        revisions="<html>
<ul>
<li>
September 28, 2011, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),   smoothOrder=1);
end power;
