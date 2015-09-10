within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.BooleanFunctions;
function allTrue
  "Returns true, if all elements of the Boolean input vector are true ('and')"
  extends Modelica.Icons.Function;
  input Boolean b[:];
  output Boolean result;
algorithm
  result := true;
  for i in 1:size(b, 1) loop
    result := result and b[i];
  end for;
  annotation (Documentation(info="<html>
</html>"));
end allTrue;
