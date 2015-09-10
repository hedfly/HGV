within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.BooleanFunctions;
function anyTrue
  "Returns true, if at least on element of the Boolean input vector is true ('or')"

  extends Modelica.Icons.Function;
  input Boolean b[:];
  output Boolean result;
algorithm
  result := false;
  for i in 1:size(b, 1) loop
    result := result or b[i];
  end for;
end anyTrue;
