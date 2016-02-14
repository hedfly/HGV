within GreenVillage.Buildings.Rooms;
package UsersGuide "User's Guide"
  extends Modelica.Icons.Information;


  annotation (preferredView="info",
  Documentation(info="<html>
<p>
The package <b>Buildings.Rooms</b> contains models for heat transfer
through the building envelope.
Multiple instances of these models can be connected to create
a multi-zone building model.
To compute the air exchange between rooms and between a room
and the exterior, the room models can be connected to
multi-zone air exchange models from the package
<a href=\"modelica://Buildings.Airflow\">
Buildings.Airflow</a>.
The room models can also be linked to models of HVAC systems
that are composed of the components in the package
<a href=\"modelica://Buildings.Fluid\">
Buildings.Fluid</a>.
</p>
</html>"));
end UsersGuide;
