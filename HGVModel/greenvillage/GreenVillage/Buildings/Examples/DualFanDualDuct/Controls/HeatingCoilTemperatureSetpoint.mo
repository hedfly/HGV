within GreenVillage.Buildings.Examples.DualFanDualDuct.Controls;
block HeatingCoilTemperatureSetpoint "Set point scheduler for heating coil"
  import GreenVillage.Buildings.Examples.VAVReheat.Controls.OperationModes;
  extends CoolingCoilTemperatureSetpoint(TSetPoi(
    y=if (mode.y == Integer(OperationModes.unoccupiedOff)) then TOff else TOn));
end HeatingCoilTemperatureSetpoint;
