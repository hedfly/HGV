within ChillerPlantSystem.Buildings.HeatTransfer.Data.GlazingSystems;
record Generic "Thermal properties of glazing systems"
    extends Modelica.Icons.Record;
  parameter Integer nLay(min=1, fixed=true) "Number of glass layers"
    annotation (Evaluate=true);
  parameter Boolean haveExteriorShade = false
    "Set to true if window has an exterior shade (at surface a)"
    annotation (Evaluate=true);
  parameter Boolean haveInteriorShade = false
    "Set to true if window has an interior shade (at surface b)"
    annotation (Evaluate=true);

  parameter Glasses.Generic glass[nLay]
    "Layer by layer declaration of glass layers, starting from outside to room-side"
    annotation (choicesAllMatching=true, Evaluate=true, Placement(transformation(extent={{60,60},{80,80}})));
  parameter Gases.Generic gas[nLay-1]
    "Layer by layer declaration of glass layers, starting from outside to room-side"
    annotation (choicesAllMatching=true, Evaluate=true, Placement(transformation(extent={{60,20},
            {80,40}})));
  parameter Shades.Generic shade "Shade"
    annotation (choicesAllMatching=true, Evaluate=true,
    Dialog(enable=haveInteriorShade or haveExteriorShade));
  parameter Modelica.SIunits.CoefficientOfHeatTransfer UFra "U-value of frame";
  parameter Modelica.SIunits.Emissivity absIRFra=0.8
    "Infrared absorptivity of window frame";
  parameter Modelica.SIunits.Emissivity absSolFra=0.5
    "Solar absorptivity of window frame";
  final parameter Boolean haveShade = haveInteriorShade or haveExteriorShade
    "Parameter that is true if the construction has a shade";

  annotation (defaultComponentName="glaSys", Documentation(info=
                 "<html>
Generic record that implements thermophysical properties for glazing systems.
</html>",
revisions="<html>
<ul>
<li>
July 15, 2013, by Michael Wetter:<br/>
Removed parameter <code>windowHasShade</code> which is redundant with <code>haveShade</code>.
</li>
<li>
Sep. 3 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
