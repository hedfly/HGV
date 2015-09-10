within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.WrongStateGraphs;
model NoUnaryConnection1
  "Two steps are wrongly connected to the same outPort of a transition"

  extends Modelica.Icons.Example;
  Modelica_StateGraph2_udf.Transition T1
    annotation (Placement(transformation(extent={{-4,10},{4,18}})));
  Modelica_StateGraph2_udf.Step step1(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{-24,-20},{-16,-12}})));
  Modelica_StateGraph2_udf.Step step2(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{16,-20},{24,-12}})));
  Modelica_StateGraph2_udf.Step step3(
    nIn=2,
    nOut=1,
    initialStep=true)
    annotation (Placement(transformation(extent={{4,28},{-4,36}})));
  Modelica_StateGraph2_udf.Transition T2
    annotation (Placement(transformation(extent={{16,-38},{24,-30}})));
  Modelica_StateGraph2_udf.Transition T3
    annotation (Placement(transformation(extent={{-24,-38},{-16,-30}})));
equation
  connect(T1.outPort, step1.inPort[1]) annotation (Line(
      points={{0,9},{0,0},{-9.76563,0},{-20,0},{-20,-12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T1.outPort, step2.inPort[1]) annotation (Line(
      points={{0,9},{0,0},{10.2148,0},{20,0},{20,-12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step3.outPort[1], T1.inPort) annotation (Line(
      points={{0,27.4},{0,18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step2.outPort[1], T2.inPort) annotation (Line(
      points={{20,-20.6},{20,-30}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.outPort, step3.inPort[1]) annotation (Line(
      points={{20,-39},{20,-52},{30.418,-52},{33.5429,-52},{48,-52},{48,-37.6445},
          {48,32.6038},{48,46},{32.8994,46},{11.7785,46},{1,46},{1,36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(step1.outPort[1], T3.inPort) annotation (Line(
      points={{-20,-20.6},{-20,-30}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T3.outPort, step3.inPort[2]) annotation (Line(
      points={{-20,-39},{-20,-52},{-31.7706,-52},{-39.1016,-52},{-50,-52},{
          -50,-37.8201},{-50,31.9316},{-50,46},{-36.0267,46},{-10.9053,46},
          {-1,46},{-1,36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics));
end NoUnaryConnection1;
