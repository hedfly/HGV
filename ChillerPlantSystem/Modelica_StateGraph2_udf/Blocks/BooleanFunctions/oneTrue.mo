within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.BooleanFunctions;
function oneTrue
  "Returns true, if exactly one element of the Boolean input vector is true ('xor')"

  extends Modelica.Icons.Function;
  input Boolean b[:];
  output Boolean result;
protected
  Integer count=0;
algorithm
  for i in 1:size(b, 1) loop
    count := if b[i] then count + 1 else count;
  end for;
  result := count == 1;
end oneTrue;
