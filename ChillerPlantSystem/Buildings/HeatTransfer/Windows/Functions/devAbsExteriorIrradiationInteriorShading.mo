within ChillerPlantSystem.Buildings.HeatTransfer.Windows.Functions;
function devAbsExteriorIrradiationInteriorShading
  "Angular and hemispherical absorptance of a shading device for exterior irradiation with interior shading"
  extends
    Buildings.HeatTransfer.Windows.Functions.BaseClasses.partialWindowShadingRadiation;

  output Real absExtIrrIntShaDev[HEM](each min=0, each max=1)
    "Absorptance of a shading device for exterior irradiation with interior shading";

algorithm
  for iD in 1:HEM loop
    absExtIrrIntShaDev[iD] := traRef[TRA, 1, N, iD]*(1 - traIntShaDev -
      refIntShaDev)/(1 - refIntShaDev*traRef[Rb, N, 1, HEM])
      "Equation (A.4.91)";
  end for;

  annotation (Documentation(info="<html>
<p>
This function computes the angular and hemispherical absorptance of a shading device for exterior irradiation with interior shading.
Pane <code>1</code> is facing the outside and pane <code>N</code> is facing the room.
</p>
</html>", revisions="<html>
<ul>
<li>
August 29, 2010, by Wangda Zuo:<br/>
First implementation.
</li>
</ul>
</html>"));
end devAbsExteriorIrradiationInteriorShading;
