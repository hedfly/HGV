within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Utilities;
function initializeLoopCheck
  "Return dummy Boolean for the detection of algebraic loops (in order to avoid that the tool can perform symbolic manipulations)"
  output Boolean result;
protected
  Integer dummy;
algorithm
  dummy := 0;
  result := true;
end initializeLoopCheck;
