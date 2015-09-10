within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine;
model MainExtended
  extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton trigButton annotation (
     Placement(transformation(extent={{-100,74},{-90,84}}, rotation=0)));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp
    annotation (Placement(transformation(
        origin={-107,55},
        extent={{-15,-15},{5,5}},
        rotation=180)));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp1
    annotation (Placement(transformation(
        origin={-107,39},
        extent={{-15,-15},{5,5}},
        rotation=180)));
  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton trigButton2
    annotation (Placement(transformation(
        origin={105,-20},
        extent={{-5,-5},{5,5}},
        rotation=180)));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp2
    annotation (Placement(transformation(extent={{100,-16},{120,4}}, rotation=0)));
  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton trigButton1
    annotation (Placement(transformation(
        origin={105,-35},
        extent={{-5,-5},{5,5}},
        rotation=180)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.StartTable
    startTable annotation (Placement(transformation(extent={{-80,54},{-60,74}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.EndTable
    endTable annotation (Placement(transformation(extent={{60,-26},{80,-6}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
    table annotation (Placement(transformation(extent={{-60,54},{-40,74}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
    table2 annotation (Placement(transformation(extent={{-20,54},{0,74}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TurnTableRight
    turnTableRight1
    annotation (Placement(transformation(extent={{0,54},{20,74}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableVertical
    tableDown
    annotation (Placement(transformation(extent={{0,34},{20,54}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableVertical
    tableDown1
    annotation (Placement(transformation(extent={{0,14},{20,34}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TurnTableLeft
    turnTableLeft2
    annotation (Placement(transformation(extent={{0,-6},{20,14}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TurnTableRight
    turnTableRight annotation (Placement(transformation(extent={{20,-6},{40,14}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TurnTableLeft
    turnTableLeft annotation (Placement(transformation(extent={{20,-26},{40,-6}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
    table1 annotation (Placement(transformation(extent={{40,-26},{60,-6}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
    robot annotation (Placement(transformation(extent={{-20,54},{0,80}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotTermHorizontal
    robotTermHorizontal annotation (Placement(transformation(extent={{-60,54},{
            -40,80}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotTermVertical
    robotTermVertical
    annotation (Placement(transformation(extent={{0,14},{26,34}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotVertical
    robotDown
    annotation (Placement(transformation(extent={{0,34},{26,54}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
    robot1 annotation (Placement(transformation(extent={{40,-26},{60,0}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
    tableHorizontal annotation (Placement(transformation(extent={{-40,54},{-20,
            74}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
    robotHorizontal annotation (Placement(transformation(extent={{-40,54},{-20,
            80}}, rotation=0)));
equation
  connect(startTable.tableComNext, table.tableComPrev) annotation (Line(
        points={{-62,57},{-60,57},{-58,57}}, color={0,0,0}));
  connect(table.robotComTable, robotTermHorizontal.robotComRobot)
    annotation (Line(points={{-52,57},{-51.1538,57},{-48,57}}, color={0,0,
          0}));
  connect(tableDown.robotComTable, robotDown.robotComRobot)
    annotation (Line(points={{3,46},{3,45.1923},{3,42}}, color={0,0,0}));
  connect(tableDown1.robotComTable, robotTermVertical.robotComRobot)
    annotation (Line(points={{3,26},{3,25.1923},{3,22}}, color={0,0,0}));
  connect(turnTableLeft2.tableComNext, turnTableRight.tableComPrev)
    annotation (Line(points={{18,-3},{21.2,-3}}, color={0,0,0}));
  connect(turnTableLeft.tableComNext, table1.tableComPrev)
    annotation (Line(points={{38,-23},{42,-23}}, color={0,0,0}));
  connect(table1.robotComTable, robot1.robotComRobot) annotation (Line(
        points={{48,-23},{48.8462,-23},{52,-23}}, color={0,0,0}));
  connect(table1.tableComNext, endTable.tableComPrev) annotation (Line(
        points={{58,-23},{59.8462,-23},{62,-23}}, color={0,0,0}));
  connect(tableHorizontal.robotComTable, robotHorizontal.robotComRobot)
    annotation (Line(points={{-32,57},{-31.1538,57},{-28,57}}, color={0,0,
          0}));
  connect(table2.robotComTable, robot.robotComRobot) annotation (Line(
        points={{-12,57},{-11.1539,57},{-8,57}}, color={0,0,0}));
  connect(tableHorizontal.tableComPrev, table.tableComNext) annotation (
      Line(
      points={{-38,57},{-40,57},{-42,57}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(table2.tableComPrev, tableHorizontal.tableComNext) annotation (
      Line(
      points={{-18,57},{-20,57},{-22,57}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(turnTableRight1.tableComPrev, table2.tableComNext) annotation (
      Line(
      points={{1.2,57},{1.2,57},{-2,57}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(tableDown.tableComPrev, turnTableRight1.tableComNext)
    annotation (Line(
      points={{3,52},{3,55.2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(tableDown.tableComNext, tableDown1.tableComPrev) annotation (
      Line(
      points={{3,36},{3,36},{3,32}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(tableDown1.tableComNext, turnTableLeft2.tableComPrev)
    annotation (Line(
      points={{3,16},{3,11.8},{2.2,11.8}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(turnTableRight.tableComNext, turnTableLeft.tableComPrev)
    annotation (Line(
      points={{23,-4.8},{23,-4.8},{23,-8.2},{22.2,-8.2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(trigButton.y, startTable.next_ready) annotation (Line(
      points={{-90,79},{-86,79},{-86,74},{-86,69.459},{-86,64},{-81.1,64}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(indicatorLamp.activePort, startTable.next_idle) annotation (
      Line(
      points={{-90.5,60},{-88,60},{-81,60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(indicatorLamp1.activePort, startTable.next_transport)
    annotation (Line(
      points={{-90.5,44},{-86,44},{-86,49.6602},{-86,56},{-81,56}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(indicatorLamp2.activePort, endTable.prev_ready) annotation (
      Line(
      points={{98.5,-6},{88,-6},{88,-10},{88,-16},{81,-16}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(trigButton2.y, endTable.prev_idle) annotation (Line(
      points={{100,-20},{100,-20},{81.2,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(trigButton1.y, endTable.prev_transport) annotation (Line(
      points={{100,-35},{100,-35},{94,-35},{90,-35},{90,-31},{90,-24},{
          81.2,-24}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-160,-160},{160,160}},
        initialScale=0.1), graphics={Text(
                  extent={{-124,48},{-124,40}},
                  lineColor={0,0,0},
                  textString="Next.Ready"),Text(
                  extent={{-120,82},{-120,74}},
                  lineColor={0,0,0},
                  textString="Next.Idle"),Text(
                  extent={{-130,64},{-130,56}},
                  lineColor={0,0,0},
                  textString="Next.Transport"),Text(
                  extent={{144,-30},{144,-38}},
                  lineColor={0,0,0},
                  textString="Prev.Transport off"),Text(
                  extent={{128,-16},{128,-24}},
                  lineColor={0,0,0},
                  textString="Prev.Idle"),Text(
                  extent={{132,-2},{132,-10}},
                  lineColor={0,0,0},
                  textString="Prev.Ready")}));
end MainExtended;
