within ChillerPlantSystem.Buildings.Media.PerfectGases.MoistAirUnsaturated;
function HeatCapacityOfWater
  "Specific heat capacity of water (liquid only) which is constant"
  extends Modelica.Icons.Function;
  input Temperature T;
  output SpecificHeatCapacity cp_fl;
algorithm
  cp_fl := 4186;
end HeatCapacityOfWater;
