within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ControlledTanks.Internal;
expandable connector SignalBus
  extends Modelica.Icons.SignalBus;
  Boolean valve1 annotation (HideResult=false);
  Boolean valve2 annotation (HideResult=false);
  Boolean valve3 annotation (HideResult=false);
  Boolean start annotation (HideResult=false);
  Boolean stop annotation (HideResult=false);
  Boolean shut annotation (HideResult=false);
  Modelica.SIunits.Length level1 annotation (HideResult=false);
  Modelica.SIunits.Length level2 annotation (HideResult=false);

  annotation (Icon(graphics={Rectangle(
                    extent={{0,0},{0,0}},
                    lineThickness=0.5,
                    lineColor={255,128,0})}));
end SignalBus;
