within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch;
model WristWatch

  extends Modelica.Icons.Example;
  Parallel main(
    use_outPort=true,
    use_suspend=true,
    nExit=1,
    nOut=1,
    nIn=1,
    nEntry=6,
    nSuspend=1)
    annotation (Placement(transformation(extent={{-280,-200},{280,60}})));
  Modelica_StateGraph2_udf.Step dead(
    initialStep=true,
    nOut=1,
    nIn=2,
    use_activePort=true)
    annotation (Placement(transformation(extent={{4,96},{-4,104}})));
  Modelica_StateGraph2_udf.Transition battery_removed(use_conditionPort=true)
    annotation (Placement(transformation(
        extent={{2,2},{10,10}},
        rotation=180,
        origin={-314,46})));
  Parallel alarms_beep(
    use_suspend=true,
    nEntry=1,
    initialStep=false,
    use_inPort=true,
    nIn=1,
    nSuspend=2)
    annotation (Placement(transformation(extent={{-20,-140},{20,0}})));
  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton insert_battery(label=
        "Insert Battery")
    annotation (Placement(transformation(extent={{0,220},{-80,240}})));
  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton remove_battery(label=
        "Remove Battery")
    annotation (Placement(transformation(extent={{0,200},{-80,220}})));
  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton kill_battery(label=
        "Kill Battery")
    annotation (Placement(transformation(extent={{0,160},{-80,180}})));
  Modelica_StateGraph2_udf.Step alarm1_beeps(nIn=1, use_activePort=true)
    annotation (Placement(transformation(extent={{4,-54},{-4,-46}})));
  Modelica_StateGraph2_udf.Step alarm1_status_disabled(nOut=1, nIn=2)
    annotation (Placement(transformation(extent={{76,6},{84,14}})));
  Modelica_StateGraph2_udf.Step alarm1_status_enabled(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{76,-34},{84,-26}})));
  Modelica_StateGraph2_udf.Transition alarm1_disabled_d(use_conditionPort=true)
    annotation (Placement(transformation(extent={{76,-14},{84,-6}})));
  Modelica_StateGraph2_udf.Transition alarm1_enabled_d(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{76,-54},{84,-46}})));
  Modelica_StateGraph2_udf.Step alarm2_beeps(nIn=1, use_activePort=true)
    annotation (Placement(transformation(extent={{4,-94},{-4,-86}})));
  Modelica_StateGraph2_udf.Step both_beep(nIn=1, use_activePort=true)
    annotation (Placement(transformation(extent={{4,-134},{-4,-126}})));
  Modelica_StateGraph2_udf.Transition t_hits_t2_p2(use_conditionPort=true)
    annotation (Placement(transformation(extent={{4,-74},{-4,-66}})));
  Modelica_StateGraph2_udf.Transition t_hits_t1_p(use_conditionPort=true)
    annotation (Placement(transformation(extent={{4,-114},{-4,-106}})));
  Modelica_StateGraph2_udf.Step choose_alarm(nIn=1, nOut=3)
    annotation (Placement(transformation(extent={{-4,-24},{4,-16}})));
  Modelica_StateGraph2_udf.Transition p_or_p1_or_p2(use_conditionPort=true)
    annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-40,-8})));
  Modelica_StateGraph2_udf.Transition any_button_pressed(
    delayedTransition=false,
    loopCheck=false,
    condition=edge(A.y) or edge(B.y) or edge(C.y) or edge(D.y))
    annotation (Placement(transformation(extent={{-44,-82},{-36,-74}})));
  Modelica_StateGraph2_udf.Transition thirty_secs_in_alarms_beep(
      delayedTransition=true, waitTime=30)
    annotation (Placement(transformation(extent={{-34,-104},{-26,-96}})));
  Modelica_StateGraph2_udf.Blocks.Interactive.TrigButton weaken_battery(label=
        "Weaken Battery")
    annotation (Placement(transformation(extent={{0,180},{-80,200}})));
  Modelica_StateGraph2_udf.Step alarm2_status_disabled(nOut=1, nIn=2)
    annotation (Placement(transformation(extent={{76,-94},{84,-86}})));
  Modelica_StateGraph2_udf.Step alarm2_status_enabled(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{76,-134},{84,-126}})));
  Modelica_StateGraph2_udf.Transition alarm2_disabled_d(use_conditionPort=true)
    annotation (Placement(transformation(extent={{76,-114},{84,-106}})));
  Modelica_StateGraph2_udf.Transition alarm2_enabled_d(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{76,-154},{84,-146}})));
  Modelica_StateGraph2_udf.Step light_off(
    nOut=1,
    nIn=2,
    use_activePort=true)
    annotation (Placement(transformation(extent={{236,6},{244,14}})));
  Modelica_StateGraph2_udf.Step light_on(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{236,-34},{244,-26}})));
  Modelica_StateGraph2_udf.Transition light_off_b_down(use_conditionPort=true)
    annotation (Placement(transformation(extent={{236,-14},{244,-6}})));
  Modelica_StateGraph2_udf.Transition light_on_b_up(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{236,-54},{244,-46}})));
  Modelica_StateGraph2_udf.Step chime_enabled_quiet(nOut=1, nIn=2)
    annotation (Placement(transformation(extent={{156,-68},{164,-60}})));
  Modelica_StateGraph2_udf.Step chime_enabled_beep(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{156,-108},{164,-100}})));
  Modelica_StateGraph2_udf.Transition chime_enabled_quiet_t_is_whole_hour(
      use_conditionPort=true)
    annotation (Placement(transformation(extent={{156,-88},{164,-80}})));
  Modelica_StateGraph2_udf.Transition two_secs_in_chime_enabled_beeps(
    delayedTransition=true,
    waitTime=2,
    loopCheck=false)
    annotation (Placement(transformation(extent={{156,-128},{164,-120}})));
  Parallel chime_enabled(
    nEntry=1,
    nIn=1,
    use_suspend=true,
    nSuspend=1)
    annotation (Placement(transformation(extent={{130,-148},{210,-28}})));
  Modelica_StateGraph2_udf.Step chime_disabled(nOut=1, nIn=2)
    annotation (Placement(transformation(extent={{166,-6},{174,2}})));
  Modelica_StateGraph2_udf.Transition chime_disabled_d(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{174,-20},{166,-12}})));
  Modelica_StateGraph2_udf.Transition chime_enabled_d(
    use_conditionPort=true,
    delayedTransition=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{116,-24},{124,-32}})));
  Modelica_StateGraph2_udf.Step power_ok(nOut=1, nIn=1)
    annotation (Placement(transformation(extent={{246,-94},{254,-86}})));
  Modelica_StateGraph2_udf.Step power_blink(nIn=1, nOut=1)
    annotation (Placement(transformation(extent={{246,-154},{254,-146}})));
  Modelica_StateGraph2_udf.Transition power_ok_battery_weakens(
      use_conditionPort=true, loopCheck=false)
    annotation (Placement(transformation(extent={{246,-124},{254,-116}})));
  Modelica_StateGraph2_udf.Transition battery_dies(use_conditionPort=true)
    annotation (Placement(transformation(extent={{4,-224},{-4,-216}})));
  Parallel displays(
    use_outPort=false,
    use_suspend=true,
    nSuspend=1,
    nResume=2,
    initialStep=false,
    use_inPort=true,
    nIn=1,
    nEntry=1)
    annotation (Placement(transformation(extent={{-60,-160},{-260,20}})));
  Regular regular(
    nOut=1,
    nIn=4,
    nSuspend=1,
    nResume=1,
    time_setting(y_start=3600*5 + 60*59 + 30),
    date_setting(y_start=625),
    year_setting(y_start=2009))
    annotation (Placement(transformation(extent={{-208,-66},{-112,-6}})));
  Out out(
    nIn=1,
    nSuspend=1,
    nOut=1,
    alarm1_setting(y_start=3600*6)) annotation (Placement(transformation(
          extent={{-170,-140},{-74,-100}})));
  Stopwatch stopwatch(
    nResume=1,
    nSuspend=1,
    use_activePort=true) annotation (Placement(transformation(extent={{-200,
            -140},{-240,-100}})));
  Modelica_StateGraph2_udf.Transition regular_a(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-156,-82},{-164,-74}})));
  Modelica_StateGraph2_udf.Transition two_min_in_out(delayedTransition=true,
      waitTime=120) annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-186,-80})));
  Modelica_StateGraph2_udf.Transition out_a(use_conditionPort=true, loopCheck=
        false)
    annotation (Placement(transformation(extent={{-182,-138},{-190,-146}})));
  Modelica_StateGraph2_udf.Transition stopwatch_a(use_conditionPort=true)
    annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-194,-90})));
  Modelica_StateGraph2_udf.Blocks.Interactive.PressButton C(label="C")
    annotation (Placement(transformation(extent={{-160,180},{-140,200}})));
  Modelica_StateGraph2_udf.Blocks.Interactive.PressButton D(label="D")
    annotation (Placement(transformation(extent={{-160,160},{-140,180}})));
  Modelica_StateGraph2_udf.Blocks.Interactive.PressButton B(label="B")
    annotation (Placement(transformation(extent={{-160,200},{-140,220}})));
  Modelica_StateGraph2_udf.Blocks.Interactive.PressButton A(label="A")
    annotation (Placement(transformation(extent={{-160,220},{-140,240}})));
protected
  inner
    Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    signalBus
    annotation (Placement(transformation(extent={{-132,198},{-92,238}})));
public
  Modelica_StateGraph2_udf.Transition battery_inserted(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{-4,76},{4,84}})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    displays_bus_node
    annotation (Placement(transformation(extent={{-100,-80},{-80,-60}})));
public
  Modelica_StateGraph2_udf.Transition t_hits_t1(use_conditionPort=true)
    annotation (Placement(transformation(extent={{4,-42},{-4,-34}})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    top_level_bus_node
    annotation (Placement(transformation(extent={{-122,80},{-102,100}})));
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    main_bus_node
    annotation (Placement(transformation(extent={{200,-10},{220,10}})));
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    alarms_bus_node
    annotation (Placement(transformation(extent={{50,-200},{70,-180}})));
public
  Modelica.Blocks.Logical.And and1
    annotation (Placement(transformation(extent={{188,-20},{180,-12}})));
  Modelica.Blocks.Logical.And and2
    annotation (Placement(transformation(extent={{134,-10},{126,-2}})));
  Modelica_StateGraph2_udf.Transition regular_time_c(use_conditionPort=true,
      delayedTransition=false)
    annotation (Placement(transformation(extent={{-232,-26},{-224,-18}})));
  Modelica_StateGraph2_udf.Step wait(nIn=1, nOut=2)
    annotation (Placement(transformation(extent={{-232,-44},{-224,-36}})));
  Modelica_StateGraph2_udf.Transition two_sec_in_wait(
    delayedTransition=true,
    use_conditionPort=false,
    waitTime=2)
    annotation (Placement(transformation(extent={{-228,-60},{-220,-52}})));
  Modelica_StateGraph2_udf.Transition wait_c_up_1(
    delayedTransition=true,
    use_conditionPort=true,
    waitTime=0.01)
    annotation (Placement(transformation(extent={{-244,-24},{-236,-32}})));
  Modelica.Blocks.Logical.Not not1 annotation (Placement(transformation(
          extent={{-258,-32},{-250,-24}})));
  Modelica.Blocks.Logical.And and3
    annotation (Placement(transformation(extent={{-218,6},{-226,14}})));
  Modelica.Blocks.Logical.Edge edge1
    annotation (Placement(transformation(extent={{-198,2},{-206,10}})));
  Modelica.Blocks.Logical.Pre pre1
    annotation (Placement(transformation(extent={{-234,6},{-242,14}})));
  Modelica.Blocks.Logical.Edge edge2
    annotation (Placement(transformation(extent={{152,-16},{144,-8}})));
  Modelica.Blocks.Logical.Edge edge3 annotation (Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=90,
        origin={194,-8})));
  Modelica.Blocks.Logical.Not not2 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={232,-38})));
  Modelica.Blocks.Logical.Edge edge4 annotation (Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=270,
        origin={56,-162})));
  Modelica.Blocks.Logical.And and4
    annotation (Placement(transformation(extent={{62,-114},{70,-106}})));
  Modelica.Blocks.Logical.And and5
    annotation (Placement(transformation(extent={{62,-154},{70,-146}})));
  Modelica.Blocks.Logical.And and6
    annotation (Placement(transformation(extent={{62,-54},{70,-46}})));
  Modelica.Blocks.Logical.And and7
    annotation (Placement(transformation(extent={{62,-14},{70,-6}})));
  Modelica.Blocks.Logical.Edge edge5 annotation (Placement(transformation(
          extent={{-120,-82},{-128,-74}})));
  Utilities.WatchDisplay watchDisplay
    annotation (Placement(transformation(extent={{116,196},{240,240}})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch set_illumination(
    nu=2,
    expr={1,2},
    y_default=0,
    use_pre_as_default=false) annotation (Placement(transformation(
        extent={{-20,-10},{20,10}},
        rotation=90,
        origin={370,40})));
public
  Modelica.Blocks.Logical.Edge edge6 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-36,100})));
  Utilities.AlarmTrigger alarmTrigger annotation (Placement(
        transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={24,-154})));
  Modelica.Blocks.Logical.Edge edge7 annotation (Placement(transformation(
        extent={{4,4},{-4,-4}},
        rotation=270,
        origin={-26,-18})));
  Utilities.WatchController watchController
    annotation (Placement(transformation(extent={{20,140},{60,180}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue showValue
    annotation (Placement(transformation(extent={{-232,210},{-272,250}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue showValue1
    annotation (Placement(transformation(extent={{-232,190},{-272,230}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue showValue2
    annotation (Placement(transformation(extent={{-232,170},{-272,210}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue showValue3
    annotation (Placement(transformation(extent={{-232,150},{-272,190}})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.ShowValue showValue4
    annotation (Placement(transformation(extent={{-232,130},{-272,170}})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    top_level_bus_node1 annotation (Placement(transformation(extent={{-190,140},
            {-170,160}}), iconTransformation(extent={{-82,110},{-62,130}})));
public
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or1(nu=2) annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-208,150})));
public
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or2(nu=2) annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-208,170})));
equation

  connect(alarm1_enabled_d.inPort, alarm1_status_enabled.outPort[1])
    annotation (Line(
      points={{80,-46},{80,-34.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_status_enabled.inPort[1], alarm1_disabled_d.outPort)
    annotation (Line(
      points={{80,-26},{80,-15}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_disabled_d.inPort, alarm1_status_disabled.outPort[1])
    annotation (Line(
      points={{80,-6},{80,5.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(t_hits_t1_p.outPort, both_beep.inPort[1]) annotation (Line(
      points={{0,-115},{0,-126}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(t_hits_t2_p2.outPort, alarm2_beeps.inPort[1]) annotation (Line(
      points={{0,-75},{0,-86}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarms_beep.entry[1], choose_alarm.inPort[1]) annotation (Line(
      points={{0,-7},{0,-16}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(alarm2_enabled_d.inPort, alarm2_status_enabled.outPort[1])
    annotation (Line(
      points={{80,-146},{80,-134.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_status_enabled.inPort[1], alarm2_disabled_d.outPort)
    annotation (Line(
      points={{80,-126},{80,-115}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_disabled_d.inPort, alarm2_status_disabled.outPort[1])
    annotation (Line(
      points={{80,-106},{80,-94.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(light_on_b_up.inPort, light_on.outPort[1]) annotation (Line(
      points={{240,-46},{240,-34.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(light_on.inPort[1], light_off_b_down.outPort) annotation (Line(
      points={{240,-26},{240,-15}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(light_off_b_down.inPort, light_off.outPort[1]) annotation (Line(
      points={{240,-6},{240,5.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(two_secs_in_chime_enabled_beeps.inPort, chime_enabled_beep.outPort[
    1]) annotation (Line(
      points={{160,-120},{160,-108.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_enabled_beep.inPort[1],
    chime_enabled_quiet_t_is_whole_hour.outPort) annotation (Line(
      points={{160,-100},{160,-89}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_enabled_quiet_t_is_whole_hour.inPort, chime_enabled_quiet.outPort[
    1]) annotation (Line(
      points={{160,-80},{160,-68.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_enabled.entry[1], chime_enabled_quiet.inPort[1])
    annotation (Line(
      points={{170,-34},{170,-34},{170,-48},{159,-48},{159,-60}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(two_secs_in_chime_enabled_beeps.outPort, chime_enabled_quiet.inPort[
    2]) annotation (Line(
      points={{160,-129},{160,-134},{168,-134},{180,-134},{180,-119.924},
          {180,-64.7031},{180,-54},{169.665,-54},{161,-54},{161,-60}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(chime_disabled.outPort[1], chime_disabled_d.inPort) annotation (
     Line(
      points={{170,-6.6},{170,-12}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_disabled_d.outPort, chime_enabled.inPort[1]) annotation (
      Line(
      points={{170,-21},{170,-28}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_enabled_d.inPort, chime_enabled.suspend[1]) annotation (
      Line(
      points={{120,-32},{120,-54.25},{128,-54.25}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_enabled_d.outPort, chime_disabled.inPort[1]) annotation (
      Line(
      points={{120,-23},{120,-23},{120,-6},{120,12},{138.592,12},{158,12},
          {169,12},{169,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(power_blink.inPort[1], power_ok_battery_weakens.outPort)
    annotation (Line(
      points={{250,-146},{250,-125}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(power_ok_battery_weakens.inPort, power_ok.outPort[1])
    annotation (Line(
      points={{250,-116},{250,-94.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(power_blink.outPort[1], main.exit[1]) annotation (Line(
      points={{250,-154.6},{250,-180},{217.041,-180},{12.2933,-180},{0,-180},
          {0,-188.625}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(battery_dies.inPort, main.outPort[1]) annotation (Line(
      points={{0,-216},{0,-210},{0,-203.25}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(regular_a.inPort, regular.outPort[1]) annotation (Line(
      points={{-160,-74},{-160,-74},{-160,-67.05},{-159.76,-67.05}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(regular_a.outPort, out.inPort[1]) annotation (Line(
      points={{-160,-83},{-160,-83},{-160,-94},{-150.595,-94},{-132.947,-94},
          {-122,-94},{-122,-100}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(two_min_in_out.inPort, out.suspend[1]) annotation (Line(
      points={{-186,-84},{-186,-108},{-171.92,-108}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(out.outPort[1], out_a.inPort) annotation (Line(
      points={{-121.76,-140.7},{-121.76,-152.35},{-135.255,-152.35},{-173.516,
          -152.35},{-186,-152.35},{-186,-146}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(out_a.outPort, stopwatch.resume[1]) annotation (Line(
      points={{-186,-137},{-186,-132},{-194,-132},{-199.95,-132}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(stopwatch_a.inPort, stopwatch.suspend[1]) annotation (Line(
      points={{-194,-94},{-194,-94},{-194,-108},{-199.2,-108}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(p_or_p1_or_p2.inPort, displays.suspend[1]) annotation (Line(
      points={{-40,-12},{-40,-19},{-48.0859,-19},{-55,-19},{-55,-19.375}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(p_or_p1_or_p2.outPort, alarms_beep.inPort[1]) annotation (Line(
      points={{-40,-3},{-40,8},{-23,8},{-6,8},{0,8},{0,0}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(any_button_pressed.inPort, alarms_beep.suspend[1]) annotation (
      Line(
      points={{-40,-74},{-40,-40.0273},{-40,-24.5},{-21,-24.5}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(thirty_secs_in_alarms_beep.inPort, alarms_beep.suspend[2])
    annotation (Line(
      points={{-30,-96},{-30,-52.4199},{-30,-36.75},{-21,-36.75}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(any_button_pressed.outPort, displays.resume[1]) annotation (
      Line(
      points={{-40,-83},{-40,-83},{-40,-112.75},{-60,-112.75}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(thirty_secs_in_alarms_beep.outPort, displays.resume[2])
    annotation (Line(
      points={{-30,-105},{-30,-128.5},{-60,-128.5}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(A.y, signalBus.a) annotation (Line(
      points={{-140,230},{-112,230},{-112,218}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(B.y, signalBus.b) annotation (Line(
      points={{-140,210},{-130,210},{-130,218},{-112,218}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(C.y, signalBus.c) annotation (Line(
      points={{-140,190},{-124,190},{-124,218},{-112,218}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(D.y, signalBus.d) annotation (Line(
      points={{-140,170},{-118,170},{-118,218},{-112,218}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(battery_inserted.outPort, main.inPort[1]) annotation (Line(
      points={{0,75},{0,68},{0,60}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(dead.outPort[1], battery_inserted.inPort) annotation (Line(
      points={{0,95.4},{0,84}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(displays.inPort[1], main.entry[1]) annotation (Line(
      points={{-160,20},{-160,20},{-160,40},{-139.046,40},{-40.0574,40},{
          -23.3333,40},{-23.3333,47}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(main.entry[2], alarm1_status_disabled.inPort[1]) annotation (
      Line(
      points={{-14,47},{-14,34},{6.8477,34},{32,34},{79,34},{79,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_enabled_d.outPort, alarm1_status_disabled.inPort[2])
    annotation (Line(
      points={{80,-55},{80,-60},{87.93,-60},{100,-60},{100,-50.3548},{100,
          7.188},{100,20},{90.704,20},{81,20},{81,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_status_disabled.inPort[1], main.entry[3]) annotation (
      Line(
      points={{79,-86},{79,-70},{92,-70},{110,-70},{110,-45.956},{110,
          14.031},{110,36},{81.367,36},{8.8965,36},{-4.66667,36},{-4.66667,
          47}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_enabled_d.outPort, alarm2_status_disabled.inPort[2])
    annotation (Line(
      points={{80,-155},{80,-160},{90.332,-160},{100,-160},{100,-146.268},
          {100,-91.4062},{100,-80},{90.018,-80},{81,-80},{81,-86}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(main.entry[4], chime_disabled.inPort[2]) annotation (Line(
      points={{4.66667,47},{5,47},{5,38},{23.7549,38},{146.124,38},{171,
          38},{171,2}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(main.entry[5], light_off.inPort[1]) annotation (Line(
      points={{14,47},{14,40},{30.3125,40},{209.857,40},{239,40},{239,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(light_on_b_up.outPort, light_off.inPort[2]) annotation (Line(
      points={{240,-55},{240,-60},{249.297,-60},{260,-60},{260,-44.5312},
          {260,7.207},{260,20},{250.018,20},{241,20},{241,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(main.entry[6], power_ok.inPort[1]) annotation (Line(
      points={{23.3333,47},{25,47},{25,42},{39.3192,42},{247.165,42},{272,
          42},{272,20},{272,-57.4453},{272,-72},{260.012,-72},{250,-72},{
          250,-86}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(stopwatch_a.conditionPort, regular_a.conditionPort) annotation (
     Line(
      points={{-189,-90},{-155.888,-90},{-148,-90},{-148,-83.7305},{-148,
          -78},{-155,-78}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(out_a.conditionPort, stopwatch_a.conditionPort) annotation (
      Line(
      points={{-181,-142},{-181,-142},{-178,-142},{-178,-136.609},{-178,-96},
          {-178,-90},{-189,-90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(two_min_in_out.outPort, regular.inPort[1]) annotation (Line(
      points={{-186,-75},{-186,-75},{-186,-68},{-199.975,-68},{-216,-68},
          {-216,-50.6912},{-216,-18.629},{-216,-2},{-192.102,-2},{-174.156,
          -2},{-167.2,-2},{-167.2,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(stopwatch_a.outPort, regular.inPort[2]) annotation (Line(
      points={{-194,-85},{-194,-85},{-194,-81.0352},{-194,-70},{-205.156,
          -70},{-218,-70},{-218,-58.3203},{-218,-18},{-218,0},{-198.988,0},
          {-168.986,0},{-162.4,0},{-162.4,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(choose_alarm.outPort[1], t_hits_t1_p.inPort) annotation (Line(
      points={{-1.33333,-24.6},{-1.33333,-24.6984},{-1.33333,-30},{-5.7812,
          -30},{-12,-30},{-12,-38.75},{-12,-87.8164},{-12,-98},{-5.95312,
          -98},{0,-98},{0,-106}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(t_hits_t1.outPort, alarm1_beeps.inPort[1]) annotation (Line(
      points={{0,-43},{0,-46}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(choose_alarm.outPort[2], t_hits_t2_p2.inPort) annotation (Line(
      points={{1.11022e-016,-24.6},{0,-24.6},{0,-26},{0,-32},{-4.5996,-32},
          {-10,-32},{-10,-37.5898},{-10,-58},{0,-58},{0,-66}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(choose_alarm.outPort[3], t_hits_t1.inPort) annotation (Line(
      points={{1.33333,-24.6},{1.33333,-34},{0,-34}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(battery_removed.inPort, main.suspend[1]) annotation (Line(
      points={{-320,36},{-320,3.125},{-294,3.125}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(battery_removed.outPort, dead.inPort[2]) annotation (Line(
      points={{-320,45},{-320,45},{-320,100},{-320,120},{-297.586,120},{-18,
          120},{-1,120},{-1,104}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(battery_dies.outPort, dead.inPort[1]) annotation (Line(
      points={{0,-225},{0,-240},{20.5078,-240},{280,-240},{320,-240},{320,
          -197.962},{320,78.867},{320,120},{280.532,120},{20.626,120},{1,
          120},{1,104}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(insert_battery.y, signalBus.insert_battery) annotation (Line(
      points={{-80,230},{-108,230},{-108,218},{-112,218}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(remove_battery.y, signalBus.remove_battery) annotation (Line(
      points={{-80,210},{-94,210},{-94,218},{-112,218}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(kill_battery.y, signalBus.kill_battery) annotation (Line(
      points={{-80,170},{-106,170},{-106,214},{-112,214},{-112,218}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(weaken_battery.y, signalBus.weaken_battery) annotation (Line(
      points={{-80,190},{-102,190},{-102,218},{-112,218}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(signalBus, top_level_bus_node) annotation (Line(
      points={{-112,218},{-112,218},{-112,172},{-112,90}},
      color={255,204,51},
      smooth=Smooth.Bezier,
      thickness=0.5));
  connect(top_level_bus_node, displays_bus_node) annotation (Line(
      points={{-112,90},{-90,90},{-90,64},{-90,-70}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.Bezier));
  connect(top_level_bus_node, main_bus_node) annotation (Line(
      points={{-112,90},{-112,90},{190.504,90},{210,90},{210,69.521},{210,
          0}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.Bezier));

  connect(alarms_bus_node, main_bus_node) annotation (Line(
      points={{60,-190},{60,-190},{204.906,-190},{226,-190},{226,-168.494},
          {226,-36},{226,0},{210,0}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.Bezier));
  connect(light_off_b_down.conditionPort, main_bus_node.b) annotation (
      Line(
      points={{235,-10},{222,-10},{210,-10},{210,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(power_ok_battery_weakens.conditionPort, main_bus_node.weaken_battery)
    annotation (Line(
      points={{245,-120},{236.879,-120},{218,-120},{218,-99.73},{218,-22.0937},
          {218,-16},{212.58,-16},{208,-16},{208,-7.437},{208,0},{210,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(battery_inserted.conditionPort, top_level_bus_node.insert_battery)
    annotation (Line(
      points={{-5,80},{-95.281,80},{-112,80},{-112,90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(battery_removed.conditionPort, top_level_bus_node.remove_battery)
    annotation (Line(
      points={{-315,40},{-299.688,40},{-280,40},{-280,60.313},{-280,90},{
          -252.602,90},{-112,90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(chime_enabled_quiet_t_is_whole_hour.conditionPort,
    alarms_bus_node.T_is_whole_hour) annotation (Line(
      points={{155,-84},{144,-84},{144,-94.4705},{144,-143.898},{144,-166},
          {123.424,-166},{70.3281,-166},{60,-166},{60,-177.766},{60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(chime_disabled_d.conditionPort, and1.y) annotation (Line(
      points={{175,-16},{179.6,-16}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and2.y, chime_enabled_d.conditionPort) annotation (Line(
      points={{125.6,-6},{112,-6},{112,-22.2422},{112,-28},{115,-28}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and2.u1, main_bus_node.chime_on) annotation (Line(
      points={{134.8,-6},{144,-6},{144,1.875},{144,8},{152,8},{200,8},{
          210,8},{210,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(regular_time_c.inPort, regular.suspend[1]) annotation (Line(
      points={{-228,-18},{-228,-18},{-228,-12},{-222.238,-12},{-213.603,-12},
          {-208,-12},{-208,-16.4063},{-208,-18},{-209.92,-18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(wait.inPort[1], regular_time_c.outPort) annotation (Line(
      points={{-228,-36},{-228,-32},{-228,-30},{-228,-27}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(two_sec_in_wait.outPort, regular.resume[1]) annotation (Line(
      points={{-224,-61},{-224,-68},{-216,-68},{-212,-68},{-212,-59.4414},
          {-212,-54},{-208.12,-54}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(wait_c_up_1.outPort, regular.inPort[3]) annotation (Line(
      points={{-240,-23},{-240,-16.9209},{-240,2},{-220.919,2},{-166.819,
          2},{-157.6,2},{-157.6,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(displays.entry[1], regular.inPort[4]) annotation (Line(
      points={{-160,11},{-154,11},{-154,-6},{-152.8,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(wait_c_up_1.inPort, wait.outPort[1]) annotation (Line(
      points={{-240,-32},{-240,-43.0918},{-240,-50},{-233.802,-50},{-229,
          -50},{-229,-44.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(two_sec_in_wait.inPort, wait.outPort[2]) annotation (Line(
      points={{-224,-52},{-224,-48},{-227,-48},{-227,-44.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(pre1.y, regular_time_c.conditionPort) annotation (Line(
      points={{-242.4,10},{-252,10},{-252,1.40625},{-252,-9.74829},{-252,
          -22},{-240,-22},{-233,-22}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and3.y, pre1.u) annotation (Line(
      points={{-226.4,10},{-233.2,10},{-233.2,10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge1.y, and3.u2) annotation (Line(
      points={{-206.4,6},{-212.15,6},{-212.15,6.8},{-217.2,6.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge1.u, top_level_bus_node.c) annotation (Line(
      points={{-197.2,6},{-184,6},{-184,20.926},{-184,60.1992},{-184,80},
          {-165.377,80},{-125.143,80},{-114,80},{-114,90},{-112,90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and3.u1, top_level_bus_node.time_active) annotation (Line(
      points={{-217.2,10},{-210,10},{-210,19.0669},{-210,67.668},{-210,86},
          {-193.737,86},{-116,86},{-116,88},{-112,88},{-112,90}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not1.u, edge1.u) annotation (Line(
      points={{-258.8,-28},{-272,-28},{-272,-16},{-272,7.99414},{-272,26},
          {-247.154,26},{-191.992,26},{-184,26},{-184,20},{-184,6},{-197.2,
          6}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(not1.y, wait_c_up_1.conditionPort) annotation (Line(
      points={{-249.6,-28},{-245,-28}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and1.u2, main_bus_node.chime_off) annotation (Line(
      points={{188.8,-19.2},{200,-19.2},{200,-7.36875},{200,0},{210,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge2.y, and2.u2) annotation (Line(
      points={{143.6,-12},{142,-12},{142,-9.2},{134.8,-9.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge2.u, main_bus_node.d) annotation (Line(
      points={{152.8,-12},{160,-12},{160,-4.3409},{160,-0.380859},{160,6},
          {168.281,6},{200,6},{206,6},{206,0},{210,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge3.y, and1.u1) annotation (Line(
      points={{194,-12.4},{194,-16},{188.8,-16}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge3.u, main_bus_node.d) annotation (Line(
      points={{194,-3.2},{194,2},{198.859,2},{210,2},{210,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not2.u, light_off_b_down.conditionPort) annotation (Line(
      points={{232,-33.2},{232,-13.9648},{232,-10},{235,-10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(not2.y, light_on_b_up.conditionPort) annotation (Line(
      points={{232,-42.4},{232,-46.2223},{232,-50},{235,-50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge4.u, alarms_bus_node.d) annotation (Line(
      points={{56,-166.8},{56,-166.8},{56,-181.108},{56,-190},{59.0703,-190},
          {60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge4.y, and5.u2) annotation (Line(
      points={{56,-157.6},{56,-154},{61.2,-154},{61.2,-153.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and5.y, alarm2_enabled_d.conditionPort) annotation (Line(
      points={{70.4,-150},{75,-150}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and4.y, alarm2_disabled_d.conditionPort) annotation (Line(
      points={{70.4,-110},{75,-110}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and7.y, alarm1_disabled_d.conditionPort) annotation (Line(
      points={{70.4,-10},{75,-10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and6.y, alarm1_enabled_d.conditionPort) annotation (Line(
      points={{70.4,-50},{75,-50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and4.u2, edge4.y) annotation (Line(
      points={{61.2,-113.2},{56,-113.2},{56,-118.62},{56,-157.6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and6.u2, and4.u2) annotation (Line(
      points={{61.2,-53.2},{56,-53.2},{56,-58.5979},{56,-107.927},{56,-113.2},
          {61.2,-113.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and7.u2, and6.u2) annotation (Line(
      points={{61.2,-13.2},{56,-13.2},{56,-18.1609},{56,-47.0408},{56,-53.2},
          {61.2,-53.2}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and5.u1, alarms_bus_node.alarm2_on) annotation (Line(
      points={{61.2,-150},{50,-150},{50,-160.195},{50,-179.318},{50,-190},
          {60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and4.u1, alarms_bus_node.alarm2_off) annotation (Line(
      points={{61.2,-110},{48,-110},{48,-119.766},{48,-174.979},{48,-190},
          {60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and6.u1, alarms_bus_node.alarm1_on) annotation (Line(
      points={{61.2,-50},{46,-50},{46,-67.9102},{46,-170.804},{46,-190},{
          60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(and7.u1, alarms_bus_node.alarm1_off) annotation (Line(
      points={{61.2,-10},{44,-10},{44,-28.6328},{44,-169.199},{44,-190},{
          60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(battery_dies.conditionPort, alarms_bus_node.kill_battery)
    annotation (Line(
      points={{5,-220},{60,-220},{60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge5.y, regular_a.conditionPort) annotation (Line(
      points={{-128.4,-78},{-155,-78},{-155,-78}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge5.u, displays_bus_node.a) annotation (Line(
      points={{-119.2,-78},{-119.2,-78},{-100.209,-78},{-90,-78},{-90,-70}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(light_off.activePort, set_illumination.u[1]) annotation (Line(
      points={{244.72,10},{244.72,10},{332,10},{358.5,10},{358.5,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(set_illumination.y, watchDisplay.illumination) annotation (Line(
      points={{360,71},{360,260},{194,260},{168,260},{168,242}},
      color={255,127,0},
      smooth=Smooth.Bezier));

  connect(alarmTrigger.alarm1_enabled, alarm1_status_enabled.activePort)
    annotation (Line(
      points={{33.2857,-165.429},{33.2857,-170},{37.6525,-170},{42.7188,-170},
          {82,-170},{106,-170},{106,-146.127},{106,-51.3281},{106,-30},{
          84.72,-30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarmTrigger.alarm2_enabled, alarm2_status_enabled.activePort)
    annotation (Line(
      points={{26.1429,-165.429},{26.1429,-172},{37.5295,-172},{85.7158,-172},
          {110,-172},{110,-149.4},{110,-130},{84.72,-130}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarmTrigger.T1, alarms_bus_node.T1) annotation (Line(
      points={{18.2857,-165.429},{18.2857,-174},{24.5039,-174},{34,-174},
          {34,-183.035},{34,-192},{47.8047,-192},{58,-192},{58,-190},{60,
          -190}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(alarmTrigger.T2, alarms_bus_node.T2) annotation (Line(
      points={{14.7143,-165.429},{14.7143,-176},{21.9609,-176},{32,-176},
          {32,-185.58},{32,-194},{44.5039,-194},{60,-194},{60,-190}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(edge7.y, p_or_p1_or_p2.conditionPort) annotation (Line(
      points={{-26,-13.6},{-26,-8},{-35,-8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarmTrigger.T_hits_T1, alarms_bus_node.T_hits_T1) annotation (
      Line(
      points={{29.7143,-165.429},{29.7143,-171},{36.0851,-171},{42,-171},
          {42,-178.96},{42,-190},{60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarmTrigger.T_hits_T2, alarms_bus_node.T_hits_T2) annotation (
      Line(
      points={{22.5714,-165.429},{22.5714,-173},{30.0898,-173},{38,-173},
          {38,-181.234},{38,-190},{46.4434,-190},{60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(t_hits_t1.conditionPort, alarmTrigger.P1) annotation (Line(
      points={{5,-38},{31,-38},{31,-63.7046},{31,-143.286},{31.1429,-143.286}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(t_hits_t2_p2.conditionPort, alarmTrigger.P2) annotation (Line(
      points={{5,-70},{27,-70},{27,-93.6891},{27,-143.286},{26.8571,-143.286}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(t_hits_t1_p.conditionPort, alarmTrigger.P) annotation (Line(
      points={{5,-110},{23,-110},{23,-130.251},{23,-143.286},{22.7143,-143.286}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(alarmTrigger.alarms_beep, edge7.u) annotation (Line(
      points={{17,-143.286},{17,-142},{13.2627,-142},{-26,-142},{-26,-103.586},
          {-26,-22.8}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(set_illumination.u[2], light_on.activePort) annotation (Line(
      points={{361.5,30},{361.5,-0.527344},{361.5,-30},{330.936,-30},{
          244.72,-30}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(stopwatch.activePort, displays_bus_node.stopwatch_mode)
    annotation (Line(
      points={{-241,-120.1},{-250,-120.1},{-250,-130},{-250,-154},{-228.958,
          -154},{-90.3945,-154},{-68,-154},{-68,-130.326},{-68,-92},{-68,
          -70},{-90,-70}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(watchController.large_digit1, watchDisplay.large_digit1)
    annotation (Line(
      points={{62,176},{62,176},{109.76,176},{128,176},{128,194}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(watchController.large_digit2, watchDisplay.large_digit2)
    annotation (Line(
      points={{62,170},{62,170},{124.736,170},{148,170},{148,194}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(watchController.large_digit3, watchDisplay.large_digit3)
    annotation (Line(
      points={{62,164},{62,164},{160,164},{190,164},{190,194}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(watchController.large_digit4, watchDisplay.large_digit4)
    annotation (Line(
      points={{62,158},{62,158},{186.756,158},{208,158},{208,174.77},{208,
          194}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(watchController.small_digit, watchDisplay.small_digit)
    annotation (Line(
      points={{62,152},{62,152},{234,152},{254,152},{254,167.947},{254,
          194.973},{254,208},{242,208}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(watchController.text_digit, watchDisplay.text_digit)
    annotation (Line(
      points={{62,146},{62,146},{246,146},{272,146},{272,167.225},{272,
          205.545},{272,232},{242,232}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(dead.activePort, edge6.u) annotation (Line(
      points={{-4.72,100},{-31.2,100}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge6.y, top_level_bus_node.dead_active) annotation (Line(
      points={{-40.4,100},{-40.4,100},{-92,100},{-108,100},{-108,90},{-112,
          90}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(watchController.display_node, top_level_bus_node) annotation (
      Line(
      points={{37.6,140},{33.6,140},{33.6,128},{14.1535,128},{-71.7609,
          128},{-112,128},{-112,90}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.Bezier));
  connect(alarm1_beeps.activePort, displays_bus_node.alarm1_beeps)
    annotation (Line(
      points={{-4.72,-50},{-4.72,-50},{-74.7595,-50},{-90,-50},{-90,-70}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(alarm2_beeps.activePort, displays_bus_node.alarm2_beeps)
    annotation (Line(
      points={{-4.72,-90},{-16,-90},{-71.7891,-90},{-90,-90},{-90,-70}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(both_beep.activePort, displays_bus_node.both_beep) annotation (
      Line(
      points={{-4.72,-130},{-54,-130},{-54,-86.3008},{-54,-64},{-76,-64},
          {-88,-64},{-88,-70},{-90,-70}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(top_level_bus_node1, top_level_bus_node) annotation (Line(
      points={{-180,150},{-180,126},{-146,126},{-112,126},{-112,90}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.Bezier));
  connect(or1.y, showValue4.activePort) annotation (Line(
      points={{-212.8,150},{-229,150}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.u[1], top_level_bus_node1.alarm2_beeps) annotation (Line(
      points={{-204,148.6},{-182,148.6},{-182,150},{-180,150}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.u[2], top_level_bus_node1.both_beep) annotation (Line(
      points={{-204,151.4},{-204,152},{-182,152},{-182,150},{-180,150}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or2.y, showValue3.activePort) annotation (Line(
      points={{-212.8,170},{-229,170},{-229,170}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or2.u[1], top_level_bus_node1.alarm1_beeps) annotation (Line(
      points={{-204,168.6},{-204,168},{-184,168},{-184,152},{-180,150}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or2.u[2], top_level_bus_node1.both_beep) annotation (Line(
      points={{-204,171.4},{-198.844,171.4},{-180,171.4},{-180,150}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(showValue2.activePort, top_level_bus_node1.chime_on)
    annotation (Line(
      points={{-229,190},{-210,190},{-180,190},{-180,150}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm2_status_enabled.activePort, alarms_bus_node.alarm2_enabled)
    annotation (Line(
      points={{84.72,-130},{110,-130},{110,-152},{110,-186},{74,-186},{60,
          -186},{60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm1_status_enabled.activePort, alarms_bus_node.alarm1_enabled)
    annotation (Line(
      points={{84.72,-30},{106,-30},{106,-52},{106,-151.773},{106,-184},{
          74,-184},{60,-184},{60,-190}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(showValue.activePort, top_level_bus_node1.alarm1_enabled)
    annotation (Line(
      points={{-229,230},{-178,230},{-178,180},{-178,150},{-180,150}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(showValue1.activePort, top_level_bus_node1.alarm2_enabled)
    annotation (Line(
      points={{-229,210},{-178,210},{-178,160},{-178,150},{-180,150}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-400,-300},
            {400,300}}), graphics={Text(
                  extent={{-308,240},{-308,220}},
                  lineColor={0,0,0},
                  lineThickness=0.5,
                  textString="Alarm 1 on"),Text(
                  extent={{-308,220},{-308,200}},
                  lineColor={0,0,0},
                  lineThickness=0.5,
                  textString="Alarm 2 on"),Text(
                  extent={{-304,200},{-304,180}},
                  lineColor={0,0,0},
                  lineThickness=0.5,
                  textString="Chime on"),Text(
                  extent={{-324,180},{-324,160}},
                  lineColor={0,0,0},
                  lineThickness=0.5,
                  textString="Alarm 1 beeps"),Text(
                  extent={{-324,160},{-324,140}},
                  lineColor={0,0,0},
                  lineThickness=0.5,
                  textString="Alarm 2 beeps")}),
    experiment(StopTime=200, Interval=0.01),
    Documentation(info="<html>
<p>This example is a StateGraph2 implementation of David Harel&apos;s Wristwatch presented in &QUOT;Statecharts: A Visual Formalism for Complex Systems&QUOT;, see <a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">literature</a>.</p>
<p>As an application example, D. Harel used a Citizen Quartz Multi-Alarm III wristwatch as a case study to prove that his new formalism was flexible and powerful enough to describe a behavior that contains numerous modes with only four input signals coming from the buttons of the watch. </p>
<p>The watch display comprises six different displays showing time, 12/24h time setting, AM/PM setting, alarm on/off, chime on/offand stop watch indication. It is operated by four buttons: A, B, C and D. The watch can display time and date (day of month, weekday, date, month, year). It has a chime function, display back-light for improved illumination, low-battery warning, a stop watch with lap/reg mode options and two alarms.</p>
<p>Button A works as a switch between display modes of the watch. The different display modes are: Time (default), alarm1, alarm2, and stopwatch. In each of these, button C will enter update mode where the current time or the alarm time can be set. Inside the update modes, C will flip through different time entities and finally return from update mode. Button B is used to exit update regardless of which internal state being active. In stopwatch mode, button B is used as on/off switch. Additionally, the illumination is turned on every time B is pressed down, and shut off on release. Button D serves as an on/off switch of the current active display mode. If in time mode, pressing button D will result in display of the current date. In stopwatch mode, button D works as a selector between reg/lap display mode.</p>
<p>To run model interactively, enable Realtime in the Experiment setup and set load result interval to 0.01.</p>
</html>"));
end WristWatch;
