within ChillerPlantSystem.Buildings.HeatTransfer.Types;
package Tilt "Enumeration for surface tilt"
  constant Modelica.SIunits.Angle Ceiling=0 "Tilt for ceiling";
  constant Modelica.SIunits.Angle Wall =    Modelica.Constants.pi/2
  "Tilt for wall";
  constant Modelica.SIunits.Angle Floor =   Modelica.Constants.pi
  "Tilt for floor";


  annotation(preferredView="info", Documentation(info="<html>
<p>
 Enumeration to define the tilt of a surface for the room model.
  For example, for a construction that is a floor, use
 <code>Buildings.HeatTransfer.Types.Tilt.Floor</code>.
</p>
</html>",
revisions="<html>
<ul>
<li>
November 30, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Tilt;
