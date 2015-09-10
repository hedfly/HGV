within ChillerPlantSystem.Buildings.Examples.DualFanDualDuct.Controls;
block HeatingCoilTemperatureSetpoint "Set point scheduler for heating coil"
  import
    ChillerPlantSystem.Buildings.Examples.VAVReheat.Controls.OperationModes;
 extends CoolingCoilTemperatureSetpoint(TSetPoi(y=if (mode.y ==
        OperationModes.unoccupiedOff) then TOff else TOn));
end HeatingCoilTemperatureSetpoint;
