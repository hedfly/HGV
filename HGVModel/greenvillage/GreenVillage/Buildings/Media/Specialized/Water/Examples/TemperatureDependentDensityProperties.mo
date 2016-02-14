within GreenVillage.Buildings.Media.Specialized.Water.Examples;
model TemperatureDependentDensityProperties
  "Model that tests the implementation of the fluid properties"
  extends Modelica.Icons.Example;
  extends Buildings.Media.Examples.BaseClasses.FluidProperties(
    redeclare package Medium =
        Buildings.Media.Specialized.Water.TemperatureDependentDensity,
    TMin=273.15,
    TMax=373.15);
equation
  // Check the implementation of the base properties
  basPro.state.p=p;
  basPro.state.T=T;
   annotation(experiment(StopTime=1),
__Dymola_Commands(file="modelica://Buildings/Resources/Scripts/Dymola/Media/Specialized/Water/Examples/TemperatureDependentDensityProperties.mos"
        "Simulate and plot"),
      Documentation(info="<html>
<p>
This example checks thermophysical properties of the medium.
</p>
</html>",
revisions="<html>
<ul>
<li>
December 19, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end TemperatureDependentDensityProperties;
