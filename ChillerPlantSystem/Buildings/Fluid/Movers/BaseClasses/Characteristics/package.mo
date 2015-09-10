within ChillerPlantSystem.Buildings.Fluid.Movers.BaseClasses;
package Characteristics "Functions for fan or pump characteristics"


  annotation (Documentation(info="<html>
<p>
This package implements performance curves for fans and pumps,
and records for parameter that can be used with these performance
curves.
</p>

The following performance curves are implemented:<br/>
<table summary=\"summary\" border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
<tr>
<th>Independent variable</th>
<th>Dependent variable</th>
<th>Record for performance data</th>
<th>Function</th>
</tr>
<tr>
<td>Volume flow rate</td>
<td>Pressure</td>
<td><a href=\"modelica://Buildings.Fluid.Movers.BaseClasses.Characteristics.flowParameters\">
flowParameters</a></td>
<td><a href=\"modelica://Buildings.Fluid.Movers.BaseClasses.Characteristics.pressure\">
pressure</a></td>
</tr>
<tr>
<td>Relative volumetric flow rate</td>
<td>Efficiency</td>
<td><a href=\"modelica://Buildings.Fluid.Movers.BaseClasses.Characteristics.efficiencyParameters\">
efficiencyParameters</a></td>
<td><a href=\"modelica://Buildings.Fluid.Movers.BaseClasses.Characteristics.efficiency\">
efficiency</a></td>
</tr>
<tr>
<td>Volume flow rate</td>
<td>Power</td>
<td><a href=\"modelica://Buildings.Fluid.Movers.BaseClasses.Characteristics.powerParameters\">
powerParameters</a></td>
<td><a href=\"modelica://Buildings.Fluid.Movers.BaseClasses.Characteristics.power\">
power</a></td>
</tr>
</table>
</html>",
revisions="<html>
<ul>
<li>
September 29, 2011, by Michael Wetter:<br/>
New implementation due to changes from polynomial to cubic hermite splines.
</li>
</ul>
</html>"));
end Characteristics;
