within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interfaces;
record ActiveSetIntegerRecord
  "Record to define a \"active, integer\" pair, to associate an integer with an active flag"
  extends Modelica.Icons.Record;

  Boolean active=false "Active flag" annotation (Dialog);
  Integer expr=0 "y = if active then expr else y_default (time varying)"
    annotation (Dialog);
end ActiveSetIntegerRecord;
