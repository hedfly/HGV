within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.BooleanFunctions;
function firstTrueIndex
  "Returns the index of the first element of the Boolean vector that is true and returns 0, if no element is true"
  input Boolean b[:];
  output Integer index;
algorithm
  index := 0;
  for i in 1:size(b, 1) loop
    if b[i] then
      index := i;
      return;
    end if;
  end for;
end firstTrueIndex;
