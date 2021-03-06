within ChillerPlantSystem.Buildings.Rooms.BaseClasses;
record ConstructionRecords "Data records for construction data"
  extends Buildings.Rooms.BaseClasses.ConstructionNumbers;

  parameter ParameterConstruction datConExt[NConExt](
    each A=0,
    redeclare Buildings.HeatTransfer.Data.OpaqueConstructions.Brick120 layers,
    each til=0,
    each azi=0) "Data for exterior construction"
    annotation (Placement(transformation(extent={{-140,-120},{-120,-100}})), HideResult=true);
  parameter Buildings.Rooms.BaseClasses.ParameterConstructionWithWindow datConExtWin[
    NConExtWin](
    each A=0,
    redeclare Buildings.HeatTransfer.Data.OpaqueConstructions.Brick120 layers,
    each til=0,
    each azi=0,
    each hWin=0,
    each wWin=0,
    redeclare Buildings.HeatTransfer.Data.GlazingSystems.SingleClear3 glaSys)
    "Data for exterior construction with window" annotation (Placement(
        transformation(extent={{-140,-160},{-120,-140}})), HideResult=true);
  parameter Buildings.Rooms.BaseClasses.ParameterConstruction datConPar[NConPar](
    each A=0,
    redeclare Buildings.HeatTransfer.Data.OpaqueConstructions.Brick120 layers,
    each til=0,
    each azi=0) "Data for partition construction" annotation (Placement(
        transformation(extent={{-140,-200},{-120,-180}})), HideResult=true);
  parameter Buildings.Rooms.BaseClasses.ParameterConstruction datConBou[NConBou](
    each A=0,
    redeclare Buildings.HeatTransfer.Data.OpaqueConstructions.Brick120 layers,
    each til=0,
    each azi=0) "Data for construction boundary" annotation (Placement(
        transformation(extent={{-100,-120},{-80,-100}})), HideResult=true);
  parameter Buildings.HeatTransfer.Data.OpaqueSurfaces.Generic surBou[NSurBou](
      each A=0, each til=0)
    "Record for data of surfaces whose heat conduction is modeled outside of this room"
    annotation (Placement(transformation(extent={{-80,-160},{-100,-140}})),
      HideResult=true);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,-200},
            {100,100}})),       Icon(coordinateSystem(preserveAspectRatio=true,
          extent={{-200,-200},{100,100}})),
Documentation(
info="<html>
<p>
Record that defines the number of constructions that are
used in the room model.
</p>
</html>",
revisions="<html>
<ul>
<li>
January 14, 2011, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));

end ConstructionRecords;
