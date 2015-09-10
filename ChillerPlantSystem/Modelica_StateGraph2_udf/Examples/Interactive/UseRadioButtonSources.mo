within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Interactive;
model UseRadioButtonSources
  "Example to demonstrate the usage of RadioButtonSource components"
  extends Modelica.Icons.Example;
  Modelica_StateGraph2_udf.Blocks.Interactive.RadioButtonSource start(reset={
        stop.on,shut.on}, buttonTimeTable={1,3}) annotation (Placement(
        transformation(extent={{-60,40},{-40,60}}, rotation=0)));
  Modelica_StateGraph2_udf.Blocks.Interactive.RadioButtonSource stop(reset={
        start.on,shut.on}, buttonTimeTable={2,4}) annotation (Placement(
        transformation(extent={{-60,10},{-40,30}}, rotation=0)));
  Modelica_StateGraph2_udf.Blocks.Interactive.RadioButtonSource shut(reset={
        start.on,stop.on}, buttonTimeTable={5}) annotation (Placement(
        transformation(extent={{-60,-20.5},{-40,-0.5}}, rotation=0)));
equation

  annotation (experiment(StopTime=6));
end UseRadioButtonSources;
