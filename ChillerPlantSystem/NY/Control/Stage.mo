within ChillerPlantSystem.NY.Control;
model Stage "Stage controller for compressors"
  parameter Real tWai "Waiting time";
  parameter Real TraPoi1 "Transition point form OneOn to TwoOn";
  parameter Real TraPoi2 "Transition point form TwoOn to ThreeOn";
  parameter Real DeaBanWid "Chiller stage control dead band width";

  Modelica.Blocks.Interfaces.RealInput CooLoa(min=0)
    "Caculated cooling load(Tonnage)"
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
  Modelica_StateGraph2_udf.Step AllOff(
    initialStep=true,
    nOut=1,
    use_activePort=true,
    nIn=1) annotation (Placement(transformation(extent={{-58,56},{-50,64}})));
  Modelica_StateGraph2_udf.Step OneOn(
    initialStep=false,
    nIn=2,
    use_activePort=true,
    nOut=2) annotation (Placement(transformation(extent={{-58,16},{-50,24}})));
  Modelica_StateGraph2_udf.Step TwoOn(
    initialStep=false,
    nIn=2,
    use_activePort=true,
    nOut=2) annotation (Placement(transformation(extent={{-58,-24},{-50,-16}})));
  Modelica_StateGraph2_udf.Transition T1(
    waitTime=tWai,
    condition=true,
    delayedTransition=false)
                   annotation (Placement(transformation(extent={{-78,36},{-70,44}})));
  Modelica_StateGraph2_udf.Transition T2(
    waitTime=tWai,
    delayedTransition=true,
    condition=CooLoa > TraPoi1 + DeaBanWid)
                    annotation (Placement(transformation(extent={{-78,-4},{-70,4}})));
  Modelica_StateGraph2_udf.Transition T4(
    waitTime=tWai,
    condition=CooLoa < TraPoi2 - DeaBanWid,
    delayedTransition=true,
    loopCheck=true) annotation (Placement(transformation(extent={{-18,-38},{-10,
            -46}})));
  Modelica_StateGraph2_udf.Transition T6(
    waitTime=tWai,
    condition=not true,
    delayedTransition=false,
    loopCheck=false)
                    annotation (Placement(transformation(extent={{-18,44},{-10,36}})));
  Modelica_StateGraph2_udf.Blocks.MathReal.MultiSwitch multiSwitch(expr={0,1,2,3},
      nu=4) annotation (Placement(transformation(extent={{10,-4},{28,4}})));
  Modelica.Blocks.Interfaces.RealOutput y[3]
    "Output of stage control(0: Alloff; 1: OneOn; 2: TwoOn;3:ThreeOn)"
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Modelica_StateGraph2_udf.Step AllOn(
    initialStep=false,
    nIn=1,
    use_activePort=true,
    nOut=1) annotation (Placement(transformation(extent={{-58,-64},{-50,-56}})));
  Modelica_StateGraph2_udf.Transition T3(
    waitTime=tWai,
    delayedTransition=true,
    condition=CooLoa > TraPoi2 + DeaBanWid)
    annotation (Placement(transformation(extent={{-78,-44},{-70,-36}})));
  Modelica_StateGraph2_udf.Transition T5(
    condition=CooLoa < TraPoi1 - DeaBanWid,
    waitTime=tWai,
    delayedTransition=true,
    loopCheck=true) annotation (Placement(transformation(extent={{-38,4},{-30,-4}})));
  Modelica.Blocks.Routing.Replicator replicator(nout=3)
    annotation (Placement(transformation(extent={{44,-6},{56,6}})));
  Modelica.Blocks.Tables.CombiTable1D combiTable1D(table=[0,0,0,0; 1,1,0,0; 2,1,
        1,0; 3,1,1,1])
    annotation (Placement(transformation(extent={{64,-6},{76,6}})));
equation
  connect(AllOff.outPort[1], T1.inPort) annotation (Line(
      points={{-54,55.4},{-74,55.4},{-74,44}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(T1.outPort, OneOn.inPort[1]) annotation (Line(
      points={{-74,35},{-74,30},{-55,30},{-55,24}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(T2.outPort, TwoOn.inPort[1]) annotation (Line(
      points={{-74,-5},{-74,-10},{-55,-10},{-55,-16}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(T2.inPort, OneOn.outPort[1]) annotation (Line(
      points={{-74,4},{-74,8},{-55,8},{-55,15.4}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(T6.outPort, AllOff.inPort[1])
    annotation (Line(
      points={{-14,45},{-14,80},{-54,80},{-54,64}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TwoOn.outPort[1], T3.inPort) annotation (Line(
      points={{-55,-24.6},{-55,-32},{-74,-32},{-74,-36}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(T3.outPort, AllOn.inPort[1]) annotation (Line(
      points={{-74,-45},{-74,-52},{-54,-52},{-54,-56}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(AllOn.outPort[1], T4.inPort) annotation (Line(
      points={{-54,-64.6},{-54,-70},{-14,-70},{-14,-46}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(AllOff.activePort, multiSwitch.u[1]) annotation (Line(
      points={{-49.28,60},{2,60},{2,0.9},{10,0.9}},
      color={255,0,255},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(OneOn.activePort, multiSwitch.u[2]) annotation (Line(
      points={{-49.28,20},{-8,20},{-8,0.3},{10,0.3}},
      color={255,0,255},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TwoOn.activePort, multiSwitch.u[3]) annotation (Line(
      points={{-49.28,-20},{-8,-20},{-8,-0.3},{10,-0.3}},
      color={255,0,255},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(AllOn.activePort, multiSwitch.u[4]) annotation (Line(
      points={{-49.28,-60},{2,-60},{2,-0.9},{10,-0.9}},
      color={255,0,255},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(T6.inPort, OneOn.outPort[2]) annotation (Line(
      points={{-14,36},{-14,8},{-53,8},{-53,15.4}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(T4.outPort, TwoOn.inPort[2]) annotation (Line(
      points={{-14,-37},{-14,-10},{-53,-10},{-53,-16}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TwoOn.outPort[2], T5.inPort) annotation (Line(
      points={{-53,-24.6},{-53,-32},{-34,-32},{-34,-4}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(T5.outPort, OneOn.inPort[2]) annotation (Line(
      points={{-34,5},{-34,30},{-53,30},{-53,24}},
      color={0,0,0},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(multiSwitch.y, replicator.u) annotation (Line(
      points={{28.45,0},{42.8,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(replicator.y, combiTable1D.u) annotation (Line(
      points={{56.6,0},{62.8,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(combiTable1D.y, y) annotation (Line(
      points={{76.6,0},{110,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}),      graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
        graphics={Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-42,20},{28,-12}},
          lineColor={0,0,255},
          textString="Stage"),
        Text(
          extent={{-42,-110},{52,-152}},
          lineColor={0,0,255},
          textString="%name")}),
    Documentation(revisions="<html>
<ul>
<li>
March 22, 2014 by Sen Huang:<br/>
First implementation.
</li>
</ul>
</html>"));
end Stage;
