within ChillerPlantSystem.Buildings.HeatTransfer.Types;
package Azimuth "Enumeration for surface azimuth"
   constant Modelica.SIunits.Angle S = 0
  "Azimuth for an exterior wall whose outer surface faces south";
   constant Modelica.SIunits.Angle E = -Modelica.Constants.pi/2
  "Azimuth for an exterior wall whose outer surface faces east";
   constant Modelica.SIunits.Angle N = Modelica.Constants.pi
  "Azimuth for an exterior wall whose outer surface faces north";
   constant Modelica.SIunits.Angle W = +Modelica.Constants.pi/2
  "Azimuth for an exterior wall whose outer surface faces west";


  annotation(preferredView="info",
  Documentation(info="<html>
<p>
 Enumeration to define the azimuth of a surface for the room model.
 For example, if an exterior wall is South oriented, i.e., its outside-facing
surface is towards South, use 
 <code>Buildings.HeatTransfer.Types.Azimuth.S</code>.
</p>
</html>",
revisions="<html>
<ul>
<li>
November 30 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Azimuth;
