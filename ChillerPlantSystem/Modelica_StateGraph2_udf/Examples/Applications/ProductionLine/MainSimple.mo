within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ProductionLine;
model MainSimple
  extends Modelica.Icons.Example;

  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton trigButton3
    annotation (Placement(transformation(
        origin={37,-9},
        extent={{-5,-5},{5,5}},
        rotation=90)));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp3
    annotation (Placement(transformation(
        origin={15,-11},
        extent={{-5,-5},{15,15}},
        rotation=270)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.StartTable
    startTable annotation (Placement(transformation(extent={{-60,34},{-40,54}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
    table annotation (Placement(transformation(extent={{-40,34},{-20,54}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
    table1 annotation (Placement(transformation(extent={{-20,34},{0,54}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
    table2
    annotation (Placement(transformation(extent={{0,34},{20,54}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.EndTable
    endTable annotation (Placement(transformation(extent={{40,34},{60,54}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
    table3 annotation (Placement(transformation(extent={{20,34},{40,54}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
    robot annotation (Placement(transformation(extent={{-20,34},{0,60}},
          rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
    robot1
    annotation (Placement(transformation(extent={{0,34},{20,60}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotTermHorizontal
    robotTermHorizontal annotation (Placement(transformation(extent={{-40,34},{
            -20,60}}, rotation=0)));
  Modelica_StateGraph2_udf.Examples.Applications.ProductionLine.Internal.Utilities.RobotComTerm
    robotComTerm annotation (Placement(transformation(extent={{20,14},{40,34}},
          rotation=0)));
  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton trigButton annotation (
     Placement(transformation(extent={{-90,54},{-80,64}}, rotation=0)));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp
    annotation (Placement(transformation(
        origin={-95,35},
        extent={{-15,-15},{5,5}},
        rotation=180)));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp1
    annotation (Placement(transformation(
        origin={-95,19},
        extent={{-15,-15},{5,5}},
        rotation=180)));
  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton trigButton2
    annotation (Placement(transformation(
        origin={85,40},
        extent={{-5,-5},{5,5}},
        rotation=180)));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue indicatorLamp2
    annotation (Placement(transformation(extent={{80,44},{100,64}}, rotation=0)));
  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton trigButton1
    annotation (Placement(transformation(
        origin={85,25},
        extent={{-5,-5},{5,5}},
        rotation=180)));
equation
  connect(startTable.tableComNext, table.tableComPrev) annotation (Line(
        points={{-42,37},{-40,37},{-38,37}}, color={0,0,0}));
  connect(table.robotComTable, robotTermHorizontal.robotComRobot)
    annotation (Line(points={{-32,37},{-31.1538,37},{-28,37}}, color={0,0,
          0}));
  connect(table2.robotComTable, robot1.robotComRobot) annotation (Line(
        points={{8,37},{8.84615,37},{12,37}}, color={0,0,0}));
  connect(table2.tableComNext, table3.tableComPrev) annotation (Line(
        points={{18,37},{19.8462,37},{22,37}}, color={0,0,0}));
  connect(table3.robotComTable, robotComTerm.robotComRobot) annotation (
      Line(points={{28,37},{28,27.1923},{35,27.1923},{35,19}}, color={0,0,
          0}));
  connect(table3.tableComNext, endTable.tableComPrev) annotation (Line(
        points={{38,37},{39.8462,37},{42,37}}, color={0,0,0}));
  connect(table2.tableComPrev, table1.tableComNext) annotation (Line(
      points={{2,37},{0,37},{-2,37}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(table1.tableComPrev, table.tableComNext) annotation (Line(
      points={{-18,37},{-20,37},{-22,37}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(robot.robotComRobot, table1.robotComTable) annotation (Line(
      points={{-8,37},{-10,37},{-12,37}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(indicatorLamp.activePort, startTable.next_idle) annotation (
      Line(
      points={{-78.5,40},{-69.75,40},{-61,40}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(trigButton.y, startTable.next_ready) annotation (Line(
      points={{-80,59},{-80,59},{-70,59},{-70,52},{-70,44},{-61.1,44}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(indicatorLamp1.activePort, startTable.next_transport)
    annotation (Line(
      points={{-78.5,24},{-70,24},{-70,30},{-70,36},{-61,36}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(trigButton2.y, endTable.prev_idle) annotation (Line(
      points={{80,40},{72,40},{61.2,40}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(indicatorLamp2.activePort, endTable.prev_ready) annotation (
      Line(
      points={{78.5,54},{70,54},{70,49.6445},{70,44},{61,44}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(endTable.prev_transport, trigButton1.y) annotation (Line(
      points={{61.2,36},{64.543,36},{70,36},{70,30.1885},{70,25},{80,25}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(trigButton3.y, robotComTerm.u) annotation (Line(
      points={{37,-4},{37,12.9}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(robotComTerm.y, indicatorLamp3.activePort) annotation (Line(
      points={{33,13},{33,4},{28,4},{20,4},{20,-4.5}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-160,-160},{160,160}},
        initialScale=0.1), graphics={Text(
                  extent={{-114,30},{-114,22}},
                  lineColor={0,0,0},
                  textString="Next.Ready"),Text(
                  extent={{-110,64},{-110,56}},
                  lineColor={0,0,0},
                  textString="Next.Idle"),Text(
                  extent={{-120,46},{-120,38}},
                  lineColor={0,0,0},
                  textString="Next.Transport"),Text(
                  extent={{124,30},{124,22}},
                  lineColor={0,0,0},
                  textString="Prev.Transport off"),Text(
                  extent={{108,44},{108,36}},
                  lineColor={0,0,0},
                  textString="Prev.Idle"),Text(
                  extent={{112,58},{112,50}},
                  lineColor={0,0,0},
                  textString="Prev.Ready"),Text(
                  extent={{-18,-6},{-18,-14}},
                  lineColor={0,0,0},
                  textString="Robot.StartWork"),Text(
                  extent={{78,-6},{78,-14}},
                  lineColor={0,0,0},
                  textString="Robot.WorkDone")}));
end MainSimple;
