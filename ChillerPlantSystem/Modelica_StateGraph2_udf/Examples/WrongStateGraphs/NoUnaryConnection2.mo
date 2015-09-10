within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model NoUnaryConnection2
  "Two steps are wrongly connected to one element of an entry port"

  extends Modelica.Icons.Example;
  Parallel step4(
    nIn=0,
    use_inPort=false,
    nEntry=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{-38,-36},{38,38}})));
  Modelica_StateGraph2_udf.Step step1(nIn=1)
    annotation (Placement(transformation(extent={{-16,10},{-8,18}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1)
    annotation (Placement(transformation(extent={{8,10},{16,18}})));
equation
  connect(step4.entry[1], step1.inPort[1]) annotation (Line(
      points={{0,34.3},{0,26},{-6,26},{-12,26},{-12,20.6719},{-12,18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step4.entry[1], step2.inPort[1]) annotation (Line(
      points={{0,34.3},{0,26},{6.43359,26},{12,26},{12,20.4453},{12,18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics));
end NoUnaryConnection2;
