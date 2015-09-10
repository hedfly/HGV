within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Utilities;
function propagateLoopCheck "Propagate flag to check loop"
  extends Modelica.Icons.Function;
  input Boolean b[:];
  output Boolean result;
protected
  Integer dummy;
algorithm
  dummy := 0;
  result := true;
end propagateLoopCheck;
