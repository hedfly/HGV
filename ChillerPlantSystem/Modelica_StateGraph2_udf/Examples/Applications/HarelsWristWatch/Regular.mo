within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch;
model Regular
  extends Modelica_StateGraph2_udf.PartialParallel(nEntry=2, nExit=1);
  Modelica_StateGraph2_udf.Step time_(
    initialStep=false,
    nIn=6,
    use_activePort=true,
    nOut=3) annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=0,
        origin={20,78})));
  Parallel update(
    use_outPort=true,
    nExit=1,
    nEntry=1,
    nResume=1,
    use_suspend=true,
    nOut=1,
    nSuspend=3,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-140,-80},{-20,80}})));
  Modelica_StateGraph2_udf.Transition time_c_down(
    delayedTransition=false,
    use_conditionPort=true,
    loopCheck=false) annotation (Placement(transformation(
        extent={{4,4},{-4,-4}},
        rotation=180,
        origin={0,60})));
  Modelica_StateGraph2_udf.Transition mode_c(delayedTransition=false,
      use_conditionPort=true) annotation (Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={-12,-40})));
  Modelica_StateGraph2_udf.Step second(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-124,46},{-116,54}})));
  Modelica_StateGraph2_udf.Step minute(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-124,6},{-116,14}})));
  Modelica_StateGraph2_udf.Step ten_minutes(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-124,-34},{-116,-26}})));
  Modelica_StateGraph2_udf.Transition second_c(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{-124,26},{-116,34}})));
  Modelica_StateGraph2_udf.Transition minute_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-124,-14},{-116,-6}})));
  Modelica_StateGraph2_udf.Transition ten_minutes_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-124,-54},{-116,-46}})));
  Modelica_StateGraph2_udf.Step hour(
    nOut=1,
    use_activePort=true,
    nIn=1) annotation (Placement(transformation(extent={{-84,46},{-76,54}})));
  Modelica_StateGraph2_udf.Step month(
    nIn=1,
    use_activePort=true,
    nOut=1) annotation (Placement(transformation(extent={{-84,6},{-76,14}})));
  Modelica_StateGraph2_udf.Transition hour_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-84,26},{-76,34}})));
  Modelica_StateGraph2_udf.Transition month_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-84,-12},{-76,-4}})));
  Modelica_StateGraph2_udf.Transition date_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-84,-52},{-76,-44}})));
  Modelica_StateGraph2_udf.Step day(
    nOut=1,
    use_activePort=true,
    nIn=1) annotation (Placement(transformation(extent={{-44,46},{-36,54}})));
  Modelica_StateGraph2_udf.Step year(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-44,6},{-36,14}})));
  Modelica_StateGraph2_udf.Step mode(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-44,-34},{-36,-26}})));
  Modelica_StateGraph2_udf.Transition day_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-44,26},{-36,34}})));
  Modelica_StateGraph2_udf.Transition year_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-44,-14},{-36,-6}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch time_quantity(
    nu=4,
    use_pre_as_default=false,
    expr={1,60,60*10,60*60}) annotation (Placement(transformation(
        extent={{-20,-10},{20,10}},
        rotation=0,
        origin={20,-70})));
  Modelica_StateGraph2_udf.Transition perform_increment(
    use_firePort=true,
    use_conditionPort=true,
    loopCheck=false)
    annotation (Placement(transformation(extent={{-154,-6},{-146,2}})));
  Modelica_StateGraph2_udf.Step date(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-84,-30},{-76,-22}})));
  Modelica_StateGraph2_udf.Transition two_min_in_update(
    use_conditionPort=false,
    delayedTransition=true,
    waitTime=120) annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-154,72})));
  Modelica_StateGraph2_udf.Step IO(nIn=2, nOut=2)
    annotation (Placement(transformation(extent={{100,-6},{108,2}})));
  Modelica_StateGraph2_udf.Step OO(nOut=2, nIn=3)
    annotation (Placement(transformation(extent={{120,34},{128,42}})));
  Modelica_StateGraph2_udf.Transition OO_b_down(use_conditionPort=true)
    annotation (Placement(transformation(extent={{110,14},{118,22}})));
  Modelica_StateGraph2_udf.Transition OO_d_down(use_conditionPort=true)
    annotation (Placement(transformation(extent={{132,14},{140,22}})));
  Modelica_StateGraph2_udf.Step OI(nIn=2, nOut=2)
    annotation (Placement(transformation(extent={{140,-6},{148,2}})));
  Modelica_StateGraph2_udf.Step beep(nOut=2, nIn=2)
    annotation (Placement(transformation(extent={{120,-46},{128,-38}})));
  Modelica_StateGraph2_udf.Transition IO_d_down(use_conditionPort=true)
    annotation (Placement(transformation(extent={{110,-26},{118,-18}})));
  Modelica_StateGraph2_udf.Transition OI_b_down(use_conditionPort=true)
    annotation (Placement(transformation(extent={{130,-26},{138,-18}})));
  Modelica_StateGraph2_udf.Transition beep_d_up(
    delayedTransition=true,
    waitTime=0.5,
    use_conditionPort=true)
    annotation (Placement(transformation(extent={{90,-18},{98,-26}})));
  Modelica_StateGraph2_udf.Transition beep_b_up(
    delayedTransition=true,
    waitTime=0.5,
    use_conditionPort=true)
    annotation (Placement(transformation(extent={{150,-18},{158,-26}})));
  Modelica_StateGraph2_udf.Transition IO_b_up(
    delayedTransition=true,
    waitTime=0.5,
    use_conditionPort=true)
    annotation (Placement(transformation(extent={{90,22},{98,14}})));
  Modelica_StateGraph2_udf.Transition OI_d_up(
    delayedTransition=true,
    waitTime=0.5,
    use_conditionPort=true)
    annotation (Placement(transformation(extent={{150,22},{158,14}})));
  Modelica_StateGraph2_udf.Step date_(
    nOut=2,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{26,42},{34,50}})));
  Modelica_StateGraph2_udf.Transition time_d_b_up(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{34,56},{26,64}})));
  Modelica_StateGraph2_udf.Transition two_min_in_date(delayedTransition=true,
      waitTime=120)
    annotation (Placement(transformation(extent={{40,28},{48,36}})));
  Modelica_StateGraph2_udf.Transition date_d(use_conditionPort=true)
    annotation (Placement(transformation(extent={{13,28},{21,36}})));
protected
  outer
    Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    signalBus
    annotation (Placement(transformation(extent={{120,-100},{160,-60}})));
public
  Modelica.Blocks.Logical.And and1
    annotation (Placement(transformation(extent={{46,56},{38,64}})));
  Modelica.Blocks.Logical.Edge edge1 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={56,50})));
  Modelica.Blocks.Logical.Not not1 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={56,60})));
  Modelica.Blocks.Logical.Not not2 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={156,-56})));
  Modelica.Blocks.Logical.Not not3 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={86,-46})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    bus_node1 annotation (Placement(transformation(extent={{80,60},{100,80}})));
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    bus_node2
    annotation (Placement(transformation(extent={{-160,-100},{-140,-80}})));
public
  Modelica.Blocks.Logical.Not not4 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={84,44})));
  Modelica.Blocks.Logical.Not not5 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={146,46})));
  Modelica_StateGraph2_udf.Transition T2(use_conditionPort=true) annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-144,78})));
  Modelica.Blocks.Logical.Edge pre1 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-130,-86})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd time_setting(use_reset=
       true) annotation (Placement(transformation(extent={{48,-76},{60,-64}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or show_time(nu=5)
    annotation (Placement(transformation(extent={{-92,-97},{-84,-89}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or show_date(nu=3)
    annotation (Placement(transformation(extent={{-16,-92},{-8,-84}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch date_quantity(
    nu=2,
    use_pre_as_default=false,
    expr={100,1}) annotation (Placement(transformation(
        extent={{-20,-10},{20,10}},
        rotation=0,
        origin={20,-50})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd date_setting(use_reset=
       true) annotation (Placement(transformation(extent={{48,-56},{60,-44}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch mode_quantity(
    nu=1,
    use_pre_as_default=false,
    expr={1}) annotation (Placement(transformation(
        extent={{-20,-10},{20,10}},
        rotation=0,
        origin={20,-30})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd mode_setting(use_reset=
       true) annotation (Placement(transformation(extent={{48,-36},{60,-24}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch year_quantity(
    nu=1,
    use_pre_as_default=false,
    expr={1}) annotation (Placement(transformation(
        extent={{-20,-10},{20,10}},
        rotation=0,
        origin={20,-10})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd year_setting(use_reset=
       true) annotation (Placement(transformation(extent={{48,-16},{60,-4}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch day_quantity(
    nu=1,
    use_pre_as_default=false,
    expr={1}) annotation (Placement(transformation(
        extent={{-20,-10},{20,10}},
        rotation=0,
        origin={20,10})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd day_setting(use_reset=
       true) annotation (Placement(transformation(extent={{48,4},{60,16}})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    bus_node3 annotation (Placement(transformation(extent={{64,-30},{84,-10}})));
public
  Modelica.Blocks.Logical.Edge pre2 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-152,-72})));
  Modelica.Blocks.Logical.Edge edge2 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={78,90})));
equation
  connect(second_c.inPort, second.outPort[1]) annotation (Line(
      points={{-120,34},{-120,45.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(second_c.outPort, minute.inPort[1]) annotation (Line(
      points={{-120,25},{-120,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(minute_c.inPort, minute.outPort[1]) annotation (Line(
      points={{-120,-6},{-120,5.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(minute_c.outPort, ten_minutes.inPort[1]) annotation (Line(
      points={{-120,-15},{-120,-26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(ten_minutes_c.inPort, ten_minutes.outPort[1]) annotation (Line(
      points={{-120,-46},{-120,-34.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(hour_c.inPort, hour.outPort[1]) annotation (Line(
      points={{-80,34},{-80,45.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(hour_c.outPort, month.inPort[1]) annotation (Line(
      points={{-80,25},{-80,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(day_c.outPort, year.inPort[1]) annotation (Line(
      points={{-40,25},{-40,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(year_c.inPort, year.outPort[1]) annotation (Line(
      points={{-40,-6},{-40,5.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(year_c.outPort, mode.inPort[1]) annotation (Line(
      points={{-40,-15},{-40,-26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(date_c.inPort, date.outPort[1]) annotation (Line(
      points={{-80,-44},{-80,-30.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update.entry[1], second.inPort[1]) annotation (Line(
      points={{-80,72},{-80,72},{-80,68},{-102.969,68},{-120,68},{-120,54}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(day_c.inPort, day.outPort[1]) annotation (Line(
      points={{-40,34},{-40,45.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update.resume[1], perform_increment.outPort) annotation (Line(
      points={{-140,-45},{-150,-45},{-150,-7}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(mode.outPort[1], update.exit[1]) annotation (Line(
      points={{-40,-34.6},{-40,-34.6},{-40,-62},{-68.5156,-62},{-80,-62},
          {-80,-73}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(two_min_in_update.outPort, time_.inPort[1]) annotation (Line(
      points={{-154,77},{-154,96},{-134.396,96},{-1.18348,96},{18.3333,96},
          {18.3333,82}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(mode_c.outPort, time_.inPort[2]) annotation (Line(
      points={{-12,-35},{-12,-35},{-12,60.4336},{-12,86},{5.5625,86},{19,
          86},{19,82}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OO.outPort[1], OO_b_down.inPort) annotation (Line(
      points={{123,33.4},{123,28},{114,28},{114,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(beep_d_up.inPort, beep.outPort[1]) annotation (Line(
      points={{94,-26},{94,-56},{113.343,-56},{123,-56},{123,-46.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(beep_d_up.outPort, IO.inPort[1]) annotation (Line(
      points={{94,-17},{94,10},{103,10},{103,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OO_b_down.outPort, IO.inPort[2]) annotation (Line(
      points={{114,13},{114,10},{110,10},{105,10},{105,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OO_d_down.outPort, OI.inPort[1]) annotation (Line(
      points={{136,13},{136,8},{140,8},{143,8},{143,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(IO.outPort[1], IO_b_up.inPort) annotation (Line(
      points={{103,-6.6},{103,-12},{94,-12},{94,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(IO.outPort[2], IO_d_down.inPort) annotation (Line(
      points={{105,-6.6},{105,-12},{114,-12},{114,-18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(two_min_in_date.outPort, time_.inPort[3]) annotation (Line(
      points={{44,27},{44,27},{44,24},{48,24},{64,24},{64,41.4023},{64,
          72.3461},{64,88},{46.5,88},{32,88},{19.6667,88},{19.6667,82}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(IO_d_down.outPort, beep.inPort[1]) annotation (Line(
      points={{114,-27},{114,-32},{123,-32},{123,-38}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OI_b_down.outPort, beep.inPort[2]) annotation (Line(
      points={{134,-27},{134,-32},{125,-32},{125,-38}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(beep_b_up.inPort, beep.outPort[2]) annotation (Line(
      points={{154,-26},{154,-56},{136,-56},{125,-56},{125,-46.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(beep_b_up.outPort, OI.inPort[2]) annotation (Line(
      points={{154,-17},{154,-14},{154,4},{145,4},{145,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OI.outPort[1], OI_b_down.inPort) annotation (Line(
      points={{143,-6.6},{143,-12},{134,-12},{134,-18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OI_d_up.inPort, OI.outPort[2]) annotation (Line(
      points={{154,14},{154,-10},{145,-10},{145,-6.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OO.outPort[2], OO_d_down.inPort) annotation (Line(
      points={{125,33.4},{125,28},{136,28},{136,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(mode_c.inPort, update.outPort[1]) annotation (Line(
      points={{-12,-44},{-12,-86},{-72.6016,-86},{-80,-86},{-80,-82}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(month.outPort[1], month_c.inPort) annotation (Line(
      points={{-80,5.4},{-80,5.4},{-80,-4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(month_c.outPort, date.inPort[1]) annotation (Line(
      points={{-80,-13},{-80,-22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(date_c.outPort, day.inPort[1]) annotation (Line(
      points={{-80,-53},{-80,-60},{-71.471,-60},{-65.8906,-60},{-52,-60},
          {-52,-46.1797},{-52,55.4215},{-52,62},{-46,62},{-40,62},{-40,54}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(ten_minutes_c.outPort, hour.inPort[1]) annotation (Line(
      points={{-120,-55},{-120,-60},{-113.246,-60},{-106,-60},{-92,-60},{
          -92,-45.9852},{-92,54.6182},{-92,62},{-85.0039,62},{-80,62},{-80,
          54}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(second.activePort, time_quantity.u[1]) annotation (Line(
      points={{-115.28,50},{-104,50},{-104,35.0267},{-104,-36.625},{-104,
          -47.3312},{-104,-67.75},{-86.4297,-67.75},{0,-67.75}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(minute.activePort, time_quantity.u[2]) annotation (Line(
      points={{-115.28,10},{-106,10},{-106,-1.11504},{-106,-28.774},{-106,
          -51.4036},{-106,-69},{-88,-69},{0,-69},{0,-69.25}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(ten_minutes.activePort, time_quantity.u[3]) annotation (Line(
      points={{-115.28,-30},{-108,-30},{-108,-39.9852},{-108,-58.5069},{-108,
          -70.75},{-92.0742,-70.75},{0,-70.75}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(hour.activePort, time_quantity.u[4]) annotation (Line(
      points={{-75.28,50},{-58,50},{-58,33.2079},{-58,-51.7461},{-58,-72},
          {-40.2266,-72},{-30,-72},{0,-72.25}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(IO_b_up.outPort, OO.inPort[1]) annotation (Line(
      points={{94,23},{94,23},{94,40},{94,70},{122.667,70},{122.667,42}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(entry[2], OO.inPort[2]) annotation (Line(
      points={{30,100},{30,100},{124,100.8},{124,42}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(OI_d_up.outPort, OO.inPort[3]) annotation (Line(
      points={{154,23},{154,23},{154,46},{154,70},{125.333,70},{125.333,
          42}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(date_.outPort[1], date_d.inPort) annotation (Line(
      points={{29,41.4},{29,41.4},{29,38},{22,38},{17,38},{17,36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(time_d_b_up.outPort, date_.inPort[1]) annotation (Line(
      points={{30,55},{30,50}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(date_.outPort[2], two_min_in_date.inPort) annotation (Line(
      points={{31,41.4},{31,38},{35.6143,38},{44,38},{44,36}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(entry[1], time_.inPort[4]) annotation (Line(
      points={{-30,100},{0,100},{0,98},{20.3333,98},{20.3333,82}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(ten_minutes_c.conditionPort, minute_c.conditionPort)
    annotation (Line(
      points={{-125,-50},{-130,-50},{-130,-43.9063},{-130,-14.8674},{-130,
          -10},{-125,-10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(minute_c.conditionPort, second_c.conditionPort) annotation (
      Line(
      points={{-125,-10},{-130,-10},{-130,-3.55469},{-130,25.8057},{-130,
          30},{-125,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(second_c.conditionPort, hour_c.conditionPort) annotation (Line(
      points={{-125,30},{-128,30},{-128,35.3223},{-128,40},{-121.137,40},
          {-100,40},{-90,40},{-90,35},{-90,30},{-85,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(hour_c.conditionPort, month_c.conditionPort) annotation (Line(
      points={{-85,30},{-90,30},{-90,25.0273},{-90,-2.22667},{-90,-8},{-85,
          -8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(month_c.conditionPort, date_c.conditionPort) annotation (Line(
      points={{-85,-8},{-90,-8},{-90,-12.2578},{-90,-42.7294},{-90,-48},{
          -85,-48}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(hour_c.conditionPort, day_c.conditionPort) annotation (Line(
      points={{-85,30},{-90,30},{-90,34.834},{-90,40},{-82.7813,40},{-56.6267,
          40},{-50,40},{-50,34.5215},{-50,30},{-45,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(day_c.conditionPort, year_c.conditionPort) annotation (Line(
      points={{-45,30},{-50,30},{-50,26.3281},{-50,-4.50112},{-50,-10},{-45,
          -10}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(mode_c.conditionPort, year_c.conditionPort) annotation (Line(
      points={{-17,-40},{-50,-40},{-50,-14.8613},{-50,-10},{-45,-10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.y, time_d_b_up.conditionPort) annotation (Line(
      points={{37.6,60},{35,60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not1.y, and1.u1) annotation (Line(
      points={{51.6,60},{48,59.8047},{48,60},{46.8,60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not2.u, signalBus.b) annotation (Line(
      points={{156,-60.8},{156,-80},{140,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(not2.y, beep_b_up.conditionPort) annotation (Line(
      points={{156,-51.6},{156,-42},{156,-36},{151.088,-36},{146,-36},{
          146,-31.42},{146,-25.5547},{146,-22},{149,-22}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not2.u, OI_b_down.conditionPort) annotation (Line(
      points={{156,-60.8},{156,-64},{152,-64},{144,-64},{144,-56.0898},{
          144,-36.5312},{144,-28},{135.992,-28},{128.157,-28},{124,-28},{
          124,-25.0059},{124,-22},{129,-22}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not3.y, beep_d_up.conditionPort) annotation (Line(
      points={{86,-41.6},{86,-27.034},{86,-22},{89,-22}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not3.u, IO_d_down.conditionPort) annotation (Line(
      points={{86,-50.8},{86,-60},{92.4863,-60},{106,-60},{106,-44.0293},
          {106,-28.4539},{106,-22},{109,-22}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not3.u, signalBus.d) annotation (Line(
      points={{86,-50.8},{86,-60},{94.0605,-60},{101.542,-60},{118,-60},{
          118,-80},{140,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(signalBus, bus_node2) annotation (Line(
      points={{140,-80},{140,-98},{123.291,-98},{-137.99,-98},{-150,-98},
          {-150,-90}},
      color={255,204,51},
      smooth=Smooth.Bezier,
      thickness=0.5));
  connect(not4.u, bus_node1.b) annotation (Line(
      points={{84,48.8},{84,48.8},{84,70},{90,70}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(not4.y, IO_b_up.conditionPort) annotation (Line(
      points={{84,39.6},{84,39.6},{84,26.8805},{84,18},{89,18}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(OO_b_down.conditionPort, not4.u) annotation (Line(
      points={{109,18},{100,18},{100,32.4297},{100,52},{100,60},{92.5156,
          60},{84,60},{84,48.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not5.u, bus_node1.d) annotation (Line(
      points={{146,50.8},{146,50.8},{146,60},{146,72},{125.656,72},{90,72},
          {90,70}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(not5.y, OI_d_up.conditionPort) annotation (Line(
      points={{146,41.6},{146,24.0844},{146,18},{149,18}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(OO_d_down.conditionPort, not5.u) annotation (Line(
      points={{131,18},{126,18},{126,21.4297},{126,26},{131.25,26},{138,
          26},{138,33.9314},{138,48.3125},{138,54},{142.188,54},{146,54},
          {146,50.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(T2.inPort, update.suspend[1]) annotation (Line(
      points={{-144,74},{-144,74},{-144,68},{-144,54.3333},{-143,54.3333}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(two_min_in_update.inPort, update.suspend[2]) annotation (Line(
      points={{-154,68},{-154,45},{-143,45}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(perform_increment.inPort, update.suspend[3]) annotation (Line(
      points={{-150,2},{-150,2},{-150,35.6667},{-143,35.6667}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(T2.conditionPort, bus_node2.b) annotation (Line(
      points={{-139,78},{-134,78},{-134,70.7813},{-134,-69.2743},{-134,-90},
          {-150,-90}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(T2.outPort, time_.inPort[5]) annotation (Line(
      points={{-144,83},{-144,94},{-131.994,94},{-10.3665,94},{21,94},{21,
          82}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(not4.u, not1.u) annotation (Line(
      points={{84,48.8},{84,60},{76.1719,60},{68,60},{60.8,60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_.activePort, bus_node1.time_active) annotation (Line(
      points={{24.72,78},{58,78},{68.6348,78},{88,78},{88,70},{90,70}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(pre1.u, bus_node2.c) annotation (Line(
      points={{-130,-90.8},{-130,-90.8},{-130,-96},{-135.703,-96},{-142.851,
          -96},{-150,-96},{-150,-90}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(pre1.y, ten_minutes_c.conditionPort) annotation (Line(
      points={{-130,-81.6},{-130,-56.0176},{-130,-50},{-125,-50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_setting.u, time_quantity.y) annotation (Line(
      points={{46.2,-70},{41,-70}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(time_setting.trigger, perform_increment.firePort) annotation (
      Line(
      points={{50.4,-77.2},{50,-80},{43.8444,-80},{-3.875,-80},{-10,-80},
          {-10,-78},{-16.5078,-78},{-99.6906,-78},{-108,-78},{-108,-70.4941},
          {-108,-64},{-116.818,-64},{-123.176,-64},{-136,-64},{-136,-50.9789},
          {-136,-12.7168},{-136,-2},{-145.8,-2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_setting.y, signalBus.update_time) annotation (Line(
      points={{61.2,-70},{61.2,-70},{71.6648,-70},{84,-70},{84,-82},{92,-82},
          {144,-82},{144,-80},{140,-80}},
      color={255,127,0},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(second.activePort, show_time.u[1]) annotation (Line(
      points={{-115.28,50},{-100,50},{-100,30.3125},{-100,-80.7181},{-100,
          -90.76},{-92,-90.76}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(minute.activePort, show_time.u[2]) annotation (Line(
      points={{-115.28,10},{-100,10},{-100,-5.04383},{-100,-81.6957},{-100,
          -91.88},{-92,-91.88}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(ten_minutes.activePort, show_time.u[3]) annotation (Line(
      points={{-115.28,-30},{-100,-30},{-100,-43.8752},{-100,-82.6229},{-100,
          -93},{-92,-93}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(hour.activePort, show_time.u[4]) annotation (Line(
      points={{-75.28,50},{-60,50},{-60,66},{-81.2542,66},{-102,66},{-102,
          46.1292},{-102,-81.4468},{-102,-94.12},{-92,-94.12}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(month.activePort, show_date.u[1]) annotation (Line(
      points={{-75.28,10},{-60,10},{-60,-6.5},{-60,-65.5815},{-60,-86},{-16,
          -86},{-16,-86.1333}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date.activePort, show_date.u[2]) annotation (Line(
      points={{-75.28,-26},{-62,-26},{-62,-39.4814},{-62,-64.1352},{-62,-87.4},
          {-16,-87.4},{-16,-88}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(day.activePort, show_date.u[3]) annotation (Line(
      points={{-35.28,50},{-26,50},{-26,68},{-40.707,68},{-56,68},{-56,
          50.3432},{-56,-63.572},{-56,-89.8667},{-16,-89.8667}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(show_date.y, signalBus.show_date) annotation (Line(
      points={{-7.2,-88},{-7.2,-88},{122.894,-88},{140,-88},{140,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(show_time.y, signalBus.show_time) annotation (Line(
      points={{-83.2,-93},{-83.2,-93},{123.652,-93},{140,-93},{140,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(year.activePort, signalBus.show_year) annotation (Line(
      points={{-35.28,10},{-28,10},{-28,0.25},{-28,-72.1863},{-28,-94},{-4.70313,
          -94},{126.293,-94},{140,-94},{140,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(mode.activePort, signalBus.mode_active) annotation (Line(
      points={{-35.28,-30},{-30,-30},{-30,-37.3621},{-30,-78.0176},{-30,-96},
          {-10.7811,-96},{128.711,-96},{140,-96},{140,-80}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_.outPort[1], time_c_down.inPort) annotation (Line(
      points={{18.6667,73.4},{18.6667,70},{16.8438,70},{4.89859e-016,70},
          {4.89859e-016,64}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(edge1.y, and1.u2) annotation (Line(
      points={{51.6,50},{50,50},{50,52.902},{50,56.8},{46.8,56.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_d.outPort, time_.inPort[6]) annotation (Line(
      points={{17,27},{17,22},{24.0375,22},{45.7109,22},{66,22},{66,
          40.2129},{66,72},{66,86},{51.9355,86},{28,86},{21.6667,86},{
          21.6667,82}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(date_setting.u, date_quantity.y) annotation (Line(
      points={{46.2,-50},{46.2,-50},{41,-50}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(mode_setting.u, mode_quantity.y) annotation (Line(
      points={{46.2,-30},{46.2,-30},{41,-30}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(year_setting.u, year_quantity.y) annotation (Line(
      points={{46.2,-10},{46.2,-10},{41,-10}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(time_setting.trigger, date_setting.trigger) annotation (Line(
      points={{50.4,-77.2},{50.4,-78},{43,-78},{43,-60},{50.4,-60},{50.4,
          -57.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(date_setting.trigger, mode_setting.trigger) annotation (Line(
      points={{50.4,-57.2},{50.4,-60},{43,-60},{43,-40},{50.4,-40},{50.4,
          -37.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(mode_setting.trigger, year_setting.trigger) annotation (Line(
      points={{50.4,-37.2},{50.4,-40},{43,-40},{43,-20},{50.4,-20},{50.4,
          -17.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(time_c_down.conditionPort, day_c.conditionPort) annotation (
      Line(
      points={{-5,60},{-5,60},{-10,60},{-17.7344,60},{-39.6649,60},{-50,
          60},{-50,50.4841},{-50,38.584},{-50,30},{-45,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(year_setting.trigger, day_setting.trigger) annotation (Line(
      points={{50.4,-17.2},{50.4,-20},{43,-20},{43,0},{50.4,0},{50.4,2.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(day.activePort, day_quantity.u[1]) annotation (Line(
      points={{-35.28,50},{-26,50},{-26,36},{-26,10},{0,10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(year_quantity.u[1], year.activePort) annotation (Line(
      points={{0,-10},{-18.3203,-10},{-28,-10},{-28,0},{-28,10},{-35.28,
          10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(mode_quantity.u[1], mode.activePort) annotation (Line(
      points={{0,-30},{-35.28,-30}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(bus_node3, signalBus) annotation (Line(
      points={{74,-20},{74,-20},{74,-30},{74,-64.2344},{74,-86},{93.541,-86},
          {132,-86},{132,-80},{140,-80}},
      color={255,204,51},
      smooth=Smooth.Bezier,
      thickness=0.5));
  connect(bus_node3, bus_node1) annotation (Line(
      points={{74,-20},{74,-20},{74,10},{74,56.1719},{74,70},{90,70}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.Bezier));
  connect(day_setting.y, bus_node3.day_setting) annotation (Line(
      points={{61.2,10},{72,10},{72,-20},{74,-20}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(year_setting.y, bus_node3.year_setting) annotation (Line(
      points={{61.2,-10},{70,-10},{70,-20},{74,-20}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(day_quantity.y, day_setting.u) annotation (Line(
      points={{41,10},{46.2,10}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(date_setting.y, bus_node3.date_setting) annotation (Line(
      points={{61.2,-50},{70,-50},{70,-20},{74,-20}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(time_c_down.outPort, update.inPort[1]) annotation (Line(
      points={{-6.12323e-016,55},{0,50},{-6,50},{-6,56.4453},{-6,74},{-6,
          90},{-20.9065,90},{-65.4688,90},{-80,90},{-80,80}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(time_.outPort[2], exit[1]) annotation (Line(
      points={{20,73.4},{20,73.4},{20,60.3422},{20,46},{8.06641,46},{-6,
          46},{-6,27.6523},{-6,-64.2581},{-6,-76},{0,-76},{0,-105}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(time_.outPort[3], time_d_b_up.inPort) annotation (Line(
      points={{21.3333,73.4},{22,73.4},{22,70},{30,70},{30,64}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(mode_setting.y, bus_node3.mode_setting) annotation (Line(
      points={{61.2,-30},{66,-30},{66,-20},{74,-20}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(pre2.y, perform_increment.conditionPort) annotation (Line(
      points={{-152,-67.6},{-152,-67.6},{-152,-10.8125},{-152,-6},{-156,-6},
          {-158,-6},{-158,-3.77734},{-158,-2},{-155,-2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(pre2.u, bus_node2.d) annotation (Line(
      points={{-152,-76.8},{-152,-76.8},{-152,-90},{-150,-90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update.activePort, bus_node3.update_active) annotation (Line(
      points={{-17.5,0},{-17.5,0},{55.9121,0},{76,0},{76,-20},{74,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(time_setting.reset, bus_node3.dead_active) annotation (Line(
      points={{57.6,-77.2},{57.6,-84},{64.7438,-84},{72,-84},{72,-74.3125},
          {72,-20},{74,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(date_setting.reset, time_setting.reset) annotation (Line(
      points={{57.6,-57.2},{57.6,-60},{66,-60},{66,-80},{57.6,-80},{57.6,
          -77.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(date_setting.reset, mode_setting.reset) annotation (Line(
      points={{57.6,-57.2},{57.6,-60},{66,-60},{66,-40},{57.6,-40},{57.6,
          -37.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(mode_setting.reset, year_setting.reset) annotation (Line(
      points={{57.6,-37.2},{57.6,-40},{66,-40},{66,-20},{57.6,-20},{57.6,
          -17.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(year_setting.reset, day_setting.reset) annotation (Line(
      points={{57.6,-17.2},{57.6,-20},{66,-20},{66,0},{57.6,0},{57.6,2.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(edge2.u, bus_node1.d) annotation (Line(
      points={{82.8,90},{92,90},{92,82.168},{92,70},{90,70}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge2.y, date_d.conditionPort) annotation (Line(
      points={{73.6,90},{73.6,90},{8.4125,90},{-16,90},{-16,64.2036},{-16,
          54.543},{-16,32},{12,32}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge2.y, edge1.u) annotation (Line(
      points={{73.6,90},{70,90},{70,84.8828},{70,57.8691},{70,50},{60.8,
          50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(month.activePort, date_quantity.u[1]) annotation (Line(
      points={{-75.28,10},{-60,10},{-60,-6},{-60,-35.6484},{-60,-50},{-46.5234,
          -50},{0,-50},{0,-48.5}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date.activePort, date_quantity.u[2]) annotation (Line(
      points={{-75.28,-26},{-62,-26},{-62,-37.2808},{-62,-51.5},{-48.4375,
          -51.5},{0,-51.5}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(date_.activePort, bus_node3.date_active) annotation (Line(
      points={{34.72,46},{41.599,46},{50,46},{50,40},{59.3516,40},{78,40},
          {78,23.5938},{78,-20},{74,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(mode.activePort, show_time.u[5]) annotation (Line(
      points={{-35.28,-30},{-30,-30},{-30,-37.7363},{-30,-64},{-51.752,-64},
          {-80.3251,-64},{-104,-64},{-104,-78.0031},{-104,-95.24},{-92,-95.24}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={
            {-160,-100},{160,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-200,-200},{200,200}}),
        graphics={Bitmap(extent={{-160,160},{160,-160}}, fileName=
          "Images/StateGraph/Examples/Regular_sm.png")}));
end Regular;
