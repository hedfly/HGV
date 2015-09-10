within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch;
model Out
  extends Modelica_StateGraph2_udf.PartialParallel(nEntry=1, nExit=1);
  Parallel chime(
    nEntry=1,
    use_suspend=true,
    nResume=1,
    use_inPort=false,
    nSuspend=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-220,-40},{-160,60}})));
  Modelica_StateGraph2_udf.Step chime_off(
    nIn=2,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-204,36},{-196,44}})));
  Modelica_StateGraph2_udf.Transition chime_off_d(use_conditionPort=true,
      use_firePort=false)
    annotation (Placement(transformation(extent={{-204,16},{-196,24}})));
  Modelica_StateGraph2_udf.Step chime_on(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-204,-4},{-196,4}})));
  Modelica_StateGraph2_udf.Transition chime_on_d(
    use_conditionPort=true,
    use_firePort=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{-204,-24},{-196,-16}})));
  Parallel alarm1(
    nEntry=1,
    use_suspend=true,
    nSuspend=2,
    nResume=3,
    use_inPort=false,
    use_activePort=true)
    annotation (Placement(transformation(extent={{60,-40},{120,60}})));
  Modelica_StateGraph2_udf.Step alarm1_off(
    nIn=2,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{76,36},{84,44}})));
  Modelica_StateGraph2_udf.Transition alarm1_off_d(use_conditionPort=true,
      use_firePort=false)
    annotation (Placement(transformation(extent={{76,16},{84,24}})));
  Modelica_StateGraph2_udf.Step alarm1_on(
    nIn=1,
    nOut=1,
    initialStep=false,
    use_activePort=true)
    annotation (Placement(transformation(extent={{76,-4},{84,4}})));
  Modelica_StateGraph2_udf.Transition alarm1_on_d(
    use_conditionPort=true,
    use_firePort=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{76,-24},{84,-16}})));
  Parallel update1(
    use_outPort=true,
    use_suspend=true,
    nEntry=1,
    nExit=1,
    nIn=1,
    nSuspend=2,
    nResume=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{150,-60},{210,80}})));
  Modelica_StateGraph2_udf.Step update1_hour(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{166,46},{174,54}})));
  Modelica_StateGraph2_udf.Transition update1_hour_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{166,26},{174,34}})));
  Modelica_StateGraph2_udf.Step update1_ten_min(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{166,6},{174,14}})));
  Modelica_StateGraph2_udf.Transition update1_ten_min_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{166,-14},{174,-6}})));
  Modelica_StateGraph2_udf.Step update1_min(
    nIn=1,
    use_activePort=true,
    nOut=1) annotation (Placement(transformation(extent={{166,-34},{174,-26}})));
  Modelica_StateGraph2_udf.Transition update1_d(
    use_firePort=true,
    use_conditionPort=true,
    loopCheck=false)
    annotation (Placement(transformation(extent={{138,14},{146,22}})));
  Modelica_StateGraph2_udf.Transition update1_b(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{126,22},{134,30}})));
  Modelica_StateGraph2_udf.Transition update1_c(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{176,-78},{184,-70}})));
  Parallel alarm2(
    nEntry=1,
    use_suspend=true,
    nSuspend=2,
    nResume=3,
    use_inPort=false,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-128,-40},{-68,60}})));
  Modelica_StateGraph2_udf.Step alarm2_off(
    nIn=2,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-112,36},{-104,44}})));
  Modelica_StateGraph2_udf.Transition alarm2_off_d(use_conditionPort=true,
      use_firePort=false)
    annotation (Placement(transformation(extent={{-112,16},{-104,24}})));
  Modelica_StateGraph2_udf.Step alarm2_on(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-112,-4},{-104,4}})));
  Modelica_StateGraph2_udf.Transition alarm2_on_d(
    use_conditionPort=true,
    use_firePort=false,
    loopCheck=false)
    annotation (Placement(transformation(extent={{-112,-24},{-104,-16}})));
  Parallel update2(
    use_outPort=true,
    use_suspend=true,
    nEntry=1,
    nExit=1,
    nIn=1,
    nSuspend=2,
    nResume=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-40,-60},{20,80}})));
  Modelica_StateGraph2_udf.Step update2_hour(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-24,46},{-16,54}})));
  Modelica_StateGraph2_udf.Transition update2_hour_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-24,26},{-16,34}})));
  Modelica_StateGraph2_udf.Step update2_ten_min(
    nIn=1,
    nOut=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-24,6},{-16,14}})));
  Modelica_StateGraph2_udf.Transition update2_ten_min_c(use_conditionPort=true)
    annotation (Placement(transformation(extent={{-24,-14},{-16,-6}})));
  Modelica_StateGraph2_udf.Step update2_min(
    nOut=1,
    nIn=1,
    use_activePort=true)
    annotation (Placement(transformation(extent={{-24,-34},{-16,-26}})));
  Modelica_StateGraph2_udf.Transition update2_d(
    use_firePort=true,
    use_conditionPort=true,
    loopCheck=false)
    annotation (Placement(transformation(extent={{-52,10},{-44,18}})));
  Modelica_StateGraph2_udf.Transition update2_b(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{-62,24},{-54,32}})));
  Modelica_StateGraph2_udf.Transition update2_c(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{-14,-72},{-6,-64}})));
  Modelica_StateGraph2_udf.Transition alarm1_c(use_conditionPort=true)
    annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={50,60})));
  Modelica_StateGraph2_udf.Transition alarm1_a(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{38,-38},{46,-30}})));
  Modelica_StateGraph2_udf.Transition alarm2_a(use_conditionPort=true,
      loopCheck=false)
    annotation (Placement(transformation(extent={{-148,-8},{-156,0}})));
  Modelica_StateGraph2_udf.Transition alarm2_c(use_conditionPort=true,
      loopCheck=false) annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-138,60})));
protected
  outer
    Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    signalBus
    annotation (Placement(transformation(extent={{-240,60},{-200,100}})));
public
  Modelica.Blocks.Logical.Edge edge2
    annotation (Placement(transformation(extent={{-180,88},{-172,96}})));
  Modelica.Blocks.Logical.Edge edge3
    annotation (Placement(transformation(extent={{26,-38},{34,-30}})));
  Modelica.Blocks.Logical.Edge edge4
    annotation (Placement(transformation(extent={{-168,76},{-160,84}})));
  Modelica.Blocks.Logical.Edge edge5 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={-212,46})));
  Modelica.Blocks.Logical.Edge edge6 annotation (Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=90,
        origin={-80,-20})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    update2_bus_node annotation (Placement(transformation(extent={{-2,-44},{18,
            -24}}), iconTransformation(extent={{-10,-4},{10,16}})));
public
  Modelica.Blocks.Logical.Edge edge8
    annotation (Placement(transformation(extent={{-16,-54},{-24,-46}})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    alarm2_bus_node
    annotation (Placement(transformation(extent={{-88,-10},{-68,10}})));
public
  Modelica.Blocks.Logical.Edge edge9 annotation (Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=270,
        origin={-74,18})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    chime_bus_node
    annotation (Placement(transformation(extent={{-180,-10},{-160,10}})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    alarm1_bus_node
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
public
  Modelica.Blocks.Logical.Edge edge10 annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={112,-14})));
  Modelica.Blocks.Logical.Edge edge7 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={114,12})));
protected
  Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
    alarm1_bus_node1 annotation (Placement(transformation(extent={{190,-44},{
            210,-24}}), iconTransformation(extent={{190,-20},{210,0}})));
public
  Modelica.Blocks.Logical.Edge edge1 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={168,-50})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch quantity2(
    expr={60*60,60*10,60},
    nu=3,
    use_pre_as_default=false) annotation (Placement(transformation(
        extent={{-12,-6},{12,6}},
        rotation=270,
        origin={14,28})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd alarm2_setting
    annotation (Placement(transformation(
        extent={{-5,-5},{3,3}},
        rotation=270,
        origin={9,-3})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.MultiSwitch quantity1(
    expr={60*60,60*10,60},
    nu=3,
    use_pre_as_default=false) annotation (Placement(transformation(
        extent={{-12,-6},{12,6}},
        rotation=270,
        origin={206,26})));
  Modelica_StateGraph2_udf.Blocks.MathInteger.TriggeredAdd alarm1_setting
    annotation (Placement(transformation(
        extent={{-5,-5},{3,3}},
        rotation=270,
        origin={201,-5})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or1(nu=2) annotation (
      Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={28,-12})));
  Modelica_StateGraph2_udf.Blocks.MathBoolean.Or or2(nu=2) annotation (
      Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=270,
        origin={222,-20})));
equation
  connect(chime_off.inPort[1], chime.entry[1]) annotation (Line(
      points={{-201,44},{-200,44},{-200,55},{-190,55}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_off_d.inPort, chime_off.outPort[1]) annotation (Line(
      points={{-200,24},{-200,35.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_on.inPort[1], chime_off_d.outPort) annotation (Line(
      points={{-200,4},{-200,15}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_on_d.inPort, chime_on.outPort[1]) annotation (Line(
      points={{-200,-16},{-200,-4.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime_on_d.outPort, chime_off.inPort[2]) annotation (Line(
      points={{-200,-25},{-200,-34},{-188.926,-34},{-180,-34},{-180,-23.516},
          {-180,-20.289},{-180,44},{-180,50},{-189.723,50},{-199,50},{-199,
          44}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_off.inPort[1], alarm1.entry[1]) annotation (Line(
      points={{79,44},{80,44},{80,55},{90,55}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_off_d.inPort, alarm1_off.outPort[1]) annotation (Line(
      points={{80,24},{80,35.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_on_d.outPort, alarm1_off.inPort[2]) annotation (Line(
      points={{80,-25},{80,-34},{91.074,-34},{100,-34},{100,-23.516},{100,
          -20.289},{100,44},{100,50},{90.277,50},{81,50},{81,44}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update1.entry[1], update1_hour.inPort[1]) annotation (Line(
      points={{180,73},{180,64},{170,64},{170,54}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update1_hour.outPort[1], update1_hour_c.inPort) annotation (
      Line(
      points={{170,45.4},{170,34}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update1_hour_c.outPort, update1_ten_min.inPort[1]) annotation (
      Line(
      points={{170,25},{170,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update1_ten_min_c.outPort, update1_min.inPort[1]) annotation (
      Line(
      points={{170,-15},{170,-15},{170,-26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update1_ten_min.outPort[1], update1_ten_min_c.inPort)
    annotation (Line(
      points={{170,5.4},{170,5.4},{170,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update1_d.outPort, update1.resume[1]) annotation (Line(
      points={{142,13},{142,13},{142,-17.457},{142,-29.375},{150,-29.375}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(update1.suspend[1], update1_d.inPort) annotation (Line(
      points={{148.5,55.5},{142,55.5},{142,47.7139},{142,22}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update1.suspend[2], update1_b.inPort) annotation (Line(
      points={{148.5,43.25},{130,43.25},{130,30}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update1_b.outPort, alarm1.resume[1]) annotation (Line(
      points={{130,21},{130,21},{130,4},{130,-23.371},{130,-48},{105.244,
          -48},{79.35,-48},{52,-48},{52,-31.604},{52,-12.2917},{60,-12.2917}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(alarm1.resume[2], update1_c.outPort) annotation (Line(
      points={{60,-18.125},{44,-18},{44,-41.977},{44,-67.724},{44,-90},{
          68.248,-90},{165.594,-90},{180,-90},{180,-79}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update1_c.inPort, update1.outPort[1]) annotation (Line(
      points={{180,-70},{180,-61.75}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_off.inPort[1], alarm2.entry[1]) annotation (Line(
      points={{-109,44},{-108,44},{-108,55},{-98,55}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_off_d.inPort, alarm2_off.outPort[1]) annotation (Line(
      points={{-108,24},{-108,35.4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_on.inPort[1], alarm2_off_d.outPort) annotation (Line(
      points={{-108,4},{-108,4},{-108,15}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_on_d.inPort, alarm2_on.outPort[1]) annotation (Line(
      points={{-108,-16},{-108,-4.6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_on_d.outPort, alarm2_off.inPort[2]) annotation (Line(
      points={{-108,-25},{-108,-34},{-96.926,-34},{-88,-34},{-88,-23.516},
          {-88,-20.289},{-88,44},{-88,50},{-97.723,50},{-107,50},{-107,44}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(update2.entry[1], update2_hour.inPort[1]) annotation (Line(
      points={{-10,73},{-10,64},{-20,64},{-20,54}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update2_hour.outPort[1], update2_hour_c.inPort) annotation (
      Line(
      points={{-20,45.4},{-20,34}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update2_hour_c.outPort, update2_ten_min.inPort[1]) annotation (
      Line(
      points={{-20,25},{-20,14}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update2_min.outPort[1], update2.exit[1]) annotation (Line(
      points={{-20,-34.6},{-20,-44},{-14.8145,-44},{-10,-44},{-10,-53.875}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(update2_ten_min_c.outPort, update2_min.inPort[1]) annotation (
      Line(
      points={{-20,-15},{-20,-15},{-20,-26}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update2_ten_min.outPort[1], update2_ten_min_c.inPort)
    annotation (Line(
      points={{-20,5.4},{-20,5.4},{-20,-6}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update2_d.outPort, update2.resume[1]) annotation (Line(
      points={{-48,9},{-48,9},{-48,-2},{-48,-29.375},{-40,-29.375}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update2.suspend[1], update2_d.inPort) annotation (Line(
      points={{-41.5,55.5},{-48,55.5},{-48,48.4688},{-48,18}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update2.suspend[2], update2_b.inPort) annotation (Line(
      points={{-41.5,43.25},{-58,43.25},{-58,32}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update2_b.outPort, alarm2.resume[1]) annotation (Line(
      points={{-58,23},{-58,23},{-58,4},{-58,-23.371},{-58,-48},{-82.756,
          -48},{-108.65,-48},{-136,-48},{-136,-31.604},{-136,-12.2917},{-128,
          -12.2917}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2.resume[2], update2_c.outPort) annotation (Line(
      points={{-128,-18.125},{-130,-18.125},{-130,-18},{-140,-18},{-140,-32.47},
          {-140,-57.724},{-140,-80},{-115.752,-80},{-26.627,-80},{-10,-80},
          {-10,-73}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(update2_c.inPort, update2.outPort[1]) annotation (Line(
      points={{-10,-64},{-10,-62},{-8,-61.75},{-10,-61.75}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1.suspend[1], alarm1_c.inPort) annotation (Line(
      points={{58.5,42.5},{50,42.5},{50,56}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_c.outPort, update1.inPort[1]) annotation (Line(
      points={{50,65},{50,65},{50,90},{78.6914,90},{163.181,90},{180,90},
          {180,80}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_a.inPort, alarm1.suspend[2]) annotation (Line(
      points={{42,-30},{42,15.9448},{42,33.75},{58.5,33.75}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_a.outPort, alarm2.resume[3]) annotation (Line(
      points={{42,-39},{42,-39},{42,-68},{42,-84},{30,-84},{-109.906,-84},
          {-146,-84},{-146,-54.265},{-146,-36.4429},{-146,-24},{-138,-24},
          {-138,-23.9583},{-128,-23.9583}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_a.inPort, alarm2.suspend[1]) annotation (Line(
      points={{-152,0},{-152,0},{-152,22},{-152,42.5},{-129.5,42.5}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_a.outPort, chime.resume[1]) annotation (Line(
      points={{-152,-9},{-152,-60},{-186,-60},{-224,-60},{-224,-23.209},{
          -224,-18},{-222,-18},{-220,-18.125}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm2_c.inPort, alarm2.suspend[2]) annotation (Line(
      points={{-138,56},{-138,56},{-138,46},{-138,33.75},{-129.5,33.75}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(alarm2_c.outPort, update2.inPort[1]) annotation (Line(
      points={{-138,65},{-138,88},{-109.531,88},{-24.123,88},{-10,88},{-10,
          80}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_on.outPort[1], alarm1_on_d.inPort) annotation (Line(
      points={{80,-4.6},{80,-4.6},{80,-16}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(alarm1_off_d.outPort, alarm1_on.inPort[1]) annotation (Line(
      points={{80,15},{80,4}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(entry[1], alarm1.resume[3]) annotation (Line(
      points={{0,100},{0,84},{13.6953,84},{36,84},{36,58.5685},{36,
          22.2439},{36,-23.9583},{60,-23.9583}},
      color={0,0,0},
      smooth=Smooth.Bezier));
  connect(chime.suspend[1], exit[1]) annotation (Line(
      points={{-221.5,38.125},{-230,38.125},{-230,26.9166},{-230,-56.6897},
          {-230,-88},{-200,-88},{-26.1719,-88},{0,-88},{0,-105}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(chime_off_d.conditionPort, chime_on_d.conditionPort)
    annotation (Line(
      points={{-205,20},{-212,20},{-212,10.4297},{-212,-9.98554},{-212,-20},
          {-205,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm2_off_d.conditionPort, alarm2_on_d.conditionPort)
    annotation (Line(
      points={{-113,20},{-116,20},{-120,20},{-120,13.5938},{-120,-13.0122},
          {-120,-20},{-113,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(alarm1_off_d.conditionPort, alarm1_on_d.conditionPort)
    annotation (Line(
      points={{75,20},{70,20},{70,14.4922},{70,-15.3516},{70,-20},{75,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(update2_ten_min_c.conditionPort, update2_hour_c.conditionPort)
    annotation (Line(
      points={{-25,-10},{-30,-10},{-30,-1.10243},{-30,22.6563},{-30,30},{
          -25,30}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update1_hour_c.conditionPort, update1_ten_min_c.conditionPort)
    annotation (Line(
      points={{165,30},{160,30},{160,23.4766},{160,-3.10199},{160,-10},{
          165,-10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update2_ten_min_c.conditionPort, update2_c.conditionPort)
    annotation (Line(
      points={{-25,-10},{-30,-10},{-30,-15.3242},{-30,-52.1047},{-30,-68},
          {-15,-68}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(alarm1_c.conditionPort, alarm2_c.conditionPort) annotation (
      Line(
      points={{55,60},{60,60},{64,60},{64,65.4277},{64,82.209},{64,92},{
          54.9247,92},{-114.012,92},{-126,92},{-126,82.0313},{-126,70},{-126,
          60},{-133,60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge2.u, signalBus.c) annotation (Line(
      points={{-180.8,92},{-208,92},{-220,86},{-220,80}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(edge2.y, alarm2_c.conditionPort) annotation (Line(
      points={{-171.6,92},{-171.6,92},{-150.448,92},{-126,92},{-126,69.5},
          {-126,60},{-133,60}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge3.y, alarm1_a.conditionPort) annotation (Line(
      points={{34.4,-34},{34.4,-34},{37,-34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge4.u, signalBus.a) annotation (Line(
      points={{-168.8,80},{-220,80}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(edge4.y, alarm2_a.conditionPort) annotation (Line(
      points={{-159.6,80},{-150,80},{-142,80},{-142,69.418},{-142,4.46028},
          {-142,-4},{-147,-4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge5.u, signalBus.d) annotation (Line(
      points={{-212,50.8},{-212,68},{-220,68},{-220,80}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(edge5.y, chime_off_d.conditionPort) annotation (Line(
      points={{-212,41.6},{-212,30.0195},{-212,20},{-205,20}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(edge6.u, alarm2_bus_node.d) annotation (Line(
      points={{-80,-15.2},{-80,0},{-78,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge6.y, alarm2_on_d.conditionPort) annotation (Line(
      points={{-80,-24.4},{-80,-36},{-89.1609,-36},{-111.223,-36},{-120,-36},
          {-120,-26.75},{-120,-20},{-113,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm2_off.activePort, alarm2_bus_node.alarm2_off) annotation (
      Line(
      points={{-103.28,40},{-82,40},{-82,20.4219},{-82,0},{-78,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm2_on.activePort, alarm2_bus_node.alarm2_on) annotation (
      Line(
      points={{-103.28,0},{-93.2769,0},{-80,0},{-78,0}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge6.y, update2_d.conditionPort) annotation (Line(
      points={{-80,-24.4},{-80,-36},{-70.4219,-36},{-62,-36},{-62,-26},{-62,
          3.0625},{-62,14},{-53,14}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge9.u, alarm2_bus_node.b) annotation (Line(
      points={{-74,13.2},{-74,4},{-76,0},{-78,0}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(update2_b.conditionPort, edge9.y) annotation (Line(
      points={{-63,28},{-68.1885,28},{-74,28},{-74,22.4}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(chime_off.activePort, chime_bus_node.chime_off) annotation (
      Line(
      points={{-195.28,40},{-170,40},{-170,0}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(chime_on.activePort, chime_bus_node.chime_on) annotation (Line(
      points={{-195.28,0},{-184,0},{-184,0},{-170,0}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(signalBus, chime_bus_node) annotation (Line(
      points={{-220,80},{-234,80},{-234,64.0078},{-234,-77.1162},{-234,-98},
          {-213.625,-98},{-190.577,-98},{-170,-98},{-170,-77.2324},{-170,
          0}},
      color={255,128,0},
      smooth=Smooth.Bezier));

  connect(alarm2_bus_node, chime_bus_node) annotation (Line(
      points={{-78,0},{-78,0},{-74,0},{-74,-6.93676},{-74,-76.6571},{-74,
          -98},{-93.2868,-98},{-148.527,-98},{-170,-98},{-170,-76.9453},{
          -170,0}},
      color={255,128,0},
      smooth=Smooth.Bezier));
  connect(update2_bus_node, alarm2_bus_node) annotation (Line(
      points={{8,-34},{8,-72},{8,-80},{16,-80},{24,-80},{24,-88},{24,-98},
          {3.94271,-98},{-54.0938,-98},{-74,-98},{-74,-77.2713},{-74,-9.1875},
          {-74,0},{-78,0}},
      color={255,128,0},
      smooth=Smooth.Bezier));
  connect(alarm1_on.activePort, alarm1_bus_node.alarm1_on) annotation (
      Line(
      points={{84.72,0},{96,0},{110,0},{110,0}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(alarm1_off.activePort, alarm1_bus_node.alarm1_off) annotation (
      Line(
      points={{84.72,40},{106,40},{106,15.0313},{106,6},{106,0},{110,0}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));

  connect(edge10.u, alarm1_bus_node.d) annotation (Line(
      points={{112,-9.2},{112,0},{110,0}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(edge10.y, alarm1_on_d.conditionPort) annotation (Line(
      points={{112,-18.4},{112,-36},{96.2971,-36},{82.2227,-36},{70,-36},
          {70,-24.6406},{70,-20},{75,-20}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge10.y, update1_d.conditionPort) annotation (Line(
      points={{112,-18.4},{112,-27.4063},{112,-36},{119.438,-36},{126,-36},
          {126,-27.9844},{126,8.12054},{126,18},{137,18}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge7.u, alarm1_bus_node.b) annotation (Line(
      points={{114,7.2},{114,0},{110,0}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(edge7.y, update1_b.conditionPort) annotation (Line(
      points={{114,16.4},{114,26},{125,26}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update2_bus_node, alarm1_bus_node) annotation (Line(
      points={{8,-34},{8,-71.3301},{8,-80},{16,-80},{24,-80},{24,-88},{24,
          -98},{43.8594,-98},{84.6999,-98},{106,-98},{106,-77.232},{106,-8.0702},
          {106,0},{110,0}},
      color={255,128,0},
      smooth=Smooth.Bezier));
  connect(alarm1_bus_node, alarm1_bus_node1) annotation (Line(
      points={{110,0},{110,-2},{106,-2},{106,-6},{106,-78.6836},{106,-98},
          {125.277,-98},{180.298,-98},{200,-98},{200,-76.4082},{200,-34}},
      color={255,128,0},
      smooth=Smooth.Bezier));

  connect(update1_min.outPort[1], update1.exit[1]) annotation (Line(
      points={{170,-34.6},{170,-44},{175.322,-44},{180,-44},{180,-53.875}},
      color={0,0,0},
      smooth=Smooth.Bezier));

  connect(edge3.u, update2_bus_node.a) annotation (Line(
      points={{25.2,-34},{8,-34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge8.u, update2_bus_node.c) annotation (Line(
      points={{-15.2,-50},{0,-50},{0,-34},{8,-34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge8.y, update2_ten_min_c.conditionPort) annotation (Line(
      points={{-24.4,-50},{-30,-50},{-30,-44.0161},{-30,-14.375},{-30,-10},
          {-25,-10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update2_hour.activePort, quantity2.u[1]) annotation (Line(
      points={{-15.28,50},{-15.28,50},{-8.23785,50},{9,50},{9,34},{9.2,34}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(update2_ten_min.activePort, quantity2.u[2]) annotation (Line(
      points={{-15.28,10},{-12,10},{-12,14.5645},{-12,39.184},{-12,48},{-3.01563,
          48},{8,48},{8,34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update2_min.activePort, quantity2.u[3]) annotation (Line(
      points={{-15.28,-30},{-10,-30},{-10,-21.6616},{-10,34.1992},{-10,46},
          {-1.40313,46},{6.8,46},{6.8,34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm2_setting.u, quantity2.y) annotation (Line(
      points={{8,3.2},{8,4.75},{8,4.75},{8,6.3},{8,9.4},{8,9.4}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(alarm2_setting.trigger, update2_d.firePort) annotation (Line(
      points={{3.2,0.4},{-12,0.4},{-28.3828,0.4},{-36,0.4},{-36,7.39922},
          {-36,14},{-43.8,14}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge1.u, alarm1_bus_node1.c) annotation (Line(
      points={{172.8,-50},{178,-50},{200,-50},{200,-34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(edge1.y, update1_ten_min_c.conditionPort) annotation (Line(
      points={{163.6,-50},{160,-50},{160,-45.0195},{160,-16},{160,-10},{
          165,-10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update1_c.conditionPort, edge1.y) annotation (Line(
      points={{175,-74},{160,-74},{160,-61.4001},{160,-56.4219},{160,-50},
          {163.6,-50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(alarm1_setting.u, quantity1.y) annotation (Line(
      points={{200,1.2},{200,7.4}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(quantity1.u[1], update1_hour.activePort) annotation (Line(
      points={{201.2,32},{201,32},{201,50},{181.829,50},{174.72,50}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update1_ten_min.activePort, quantity1.u[2]) annotation (Line(
      points={{174.72,10},{182,10},{182,19.5371},{182,36.7983},{182,48},{
          191.053,48},{200,48},{200,32}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update1_min.activePort, quantity1.u[3]) annotation (Line(
      points={{174.72,-30},{184,-30},{184,-19.8917},{184,36.3516},{184,46},
          {191.805,46},{198.8,46},{198.8,32}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update1_d.firePort, alarm1_setting.trigger) annotation (Line(
      points={{146.2,18},{156,18},{156,9.09961},{156,-1.6},{195.2,-1.6}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(alarm1_setting.y, alarm1_bus_node1.T1) annotation (Line(
      points={{200,-8.8},{200,-8.8},{200,-34}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(alarm2_setting.y, update2_bus_node.T2) annotation (Line(
      points={{8,-6.8},{8,-6.8},{8,-34}},
      color={255,127,0},
      smooth=Smooth.Bezier));
  connect(alarm2.activePort, or1.u[1]) annotation (Line(
      points={{-66.75,10},{-64,10},{-64,18.3235},{-64,69.8145},{-64,90},{
          -41.5777,90},{8.75069,90},{30.1,90},{30.1,73.4063},{30.1,-6},{
          30.1,-6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update2.activePort, or1.u[2]) annotation (Line(
      points={{21.25,10},{26,10},{26,3.34375},{26,-6},{25.9,-6}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or1.y, update2_bus_node.in_alarm2) annotation (Line(
      points={{28,-19.2},{28,-19.2},{28,-24},{18,-24},{8,-24},{8,-34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(or2.u[1], alarm1.activePort) annotation (Line(
      points={{224.1,-14},{224,-14},{224,74},{224,96},{204.01,96},{
          146.754,96},{124,96},{124,70.0633},{124,16.7188},{124,10},{
          121.25,10}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(update1.activePort, or2.u[2]) annotation (Line(
      points={{211.25,10},{220,10},{220,-2.11719},{220,-14},{219.9,-14}},
      color={255,0,255},
      smooth=Smooth.Bezier));

  connect(or2.y, alarm1_bus_node1.in_alarm1) annotation (Line(
      points={{222,-27.2},{222,-34},{211.215,-34},{200,-34}},
      color={255,0,255},
      smooth=Smooth.Bezier));
  connect(chime.activePort, chime_bus_node.in_chime) annotation (Line(
      points={{-158.75,10},{-148,10},{-148,20},{-170,20},{-170,0}},
      color={255,0,255},
      smooth=Smooth.Bezier), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={
            {-240,-100},{240,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-200,-200},{200,200}}),
        graphics={Bitmap(extent={{-190,190},{192,-192}}, fileName=
          "Images/StateGraph/Examples/Out_sm.png")}));
end Out;
