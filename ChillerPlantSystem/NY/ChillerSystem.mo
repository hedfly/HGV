within ChillerPlantSystem.NY;
model ChillerSystem
  import ChillerPlantSystem;
  extends Modelica.Icons.Example;
  package MediumCW = Buildings.Media.ConstantPropertyLiquidWater "Medium model";
  package MediumCHW = Buildings.Media.ConstantPropertyLiquidWater
    "Medium model";
  parameter Modelica.SIunits.Pressure dPCHW_nominal=100000
    "Pressure difference between the outlet and inlet of the evaporative side ";
  parameter Modelica.SIunits.Pressure dPCW_nominal=100000
    "Pressure difference between the outlet and inlet of the condenser side ";
  parameter Modelica.SIunits.MassFlowRate mCHW_flow_nominal=98.93
    "Nominal mass flow rate at the chilled water side";
  parameter Modelica.SIunits.MassFlowRate mCW_flow_nominal=137.61
    "Nominal mass flow rate at the condenser water wide";
  parameter Real tWai = 900 "Waiting time";
  parameter Real TraPoi1 = 3411/3.517*0.9
    "Transition point form OneOn to TwoOn";
  parameter Real TraPoi2 = 6822/3.517*0.9
    "Transition point form TwoOn to ThreeOn";
  parameter Real DeaBanWid = 50 "Chiller stage control dead band width";
  parameter Modelica.SIunits.Temperature TCWSet(fixed=false)
    "The lower temperatre limit of condenser water entering the chiller plant";
  parameter Modelica.SIunits.Power P_nominal=37285
    "Nominal tower power (at y=1)";
  parameter Modelica.SIunits.TemperatureDifference dTCW_nominal = 5.6
    "Temperature difference between the outlet and inlet of the tower";
  parameter Modelica.SIunits.Pressure dP_nominal=100000
    "Pressure difference between the outlet and inlet of the tower ";
  parameter Real GaiPi=0.1 "Gain of the tower PI controller";
  parameter Real tIntPi=60 "Integration time of the tower PI controller";
  parameter Real v_flow_ratio[:]={0,0.1,0.3,0.6,1} "Volume flow rate ratio";
  parameter Real eta[:]={0,0.1^3,0.3^3,0.6^3,1} "Fan efficiency";
  parameter Real Motor_eta[:]={1} "Motor efficiency";
  parameter Real Hydra_eta[:]={1} "Hydraulic efficiency";
  parameter String inputFileName = "Input.txt"
    "File on which input variable is present";
  parameter String resultFileName = "result.txt"
    "File on which data is present";
  parameter Modelica.SIunits.Pressure dPByp_nominal=1000
    "Pressure difference between the outlet and inlet of the bypass valve ";
  BaseClasses.MultiChillerSystem muliChiSys(redeclare package MediumCHW = MediumCHW, redeclare
      package MediumCW =                                                                                          MediumCW,
    dPCHW_nominal=dPCHW_nominal,
    dPCW_nominal=dPCW_nominal,
    mCHW_flow_nominal=mCHW_flow_nominal,
    mCW_flow_nominal=mCW_flow_nominal,
    GaiPi=GaiPi,
    tIntPi=tIntPi,
    dTCHW_nominal=8.9,
    dTCW_nominal=5.6,
    P_nominal=745000,
    COP_nominal=4.58,
    TCWB_nominal=273.15 + 30.09,
    TCHWSet=273.15 + 3.9,
    chiC(chi(T2_start=273.15 + 3.9)),
    chiB(chi(T2_start=273.15 + 3.9)),
    chiA(chi(T2_start=273.15 + 3.9)),
    TCHWC_nominal=273.15 + 5.78,
    TCWC_nominal=273.15 + 31.655,
    TCHWB_nominal=273.15 + 7.1,
    TCHWA_nominal=273.15 + 7.11,
    TCWA_nominal=273.15 + 30.09,
    ChillerCurveC={0,0.5,2.6,1 - 0.5 - 2.6},
    ChillerCurveB={0,1,0.8,-0.8},
    ChillerCurveA={0,0.8,0.8,1 - 0.8 - 0.8})
    annotation (Placement(transformation(extent={{0,2},{20,22}})));
  BaseClasses.CoolingTowerWithBypass cooTowWitByp(redeclare package MediumCW = MediumCW, mCW_flow_nominal=mCW_flow_nominal,
    P_nominal=P_nominal,
    TLowLim=273.15 + 15,
    dP_nominal=dPCW_nominal,
    GaiPi=GaiPi,
    tIntPi=tIntPi,
    v_flow_ratio=v_flow_ratio,
    eta=eta,
    dTCW_nominal=dTCW_nominal,
    TCWSet(displayUnit="K") = TCWSet,
    dPByp_nominal(displayUnit="Pa") = dPByp_nominal,
    dTAppC_nominal=3.9,
    TWetBulC_nominal=273.15 + 25.5,
    dTAppB_nominal=3.9,
    TWetBulB_nominal=273.15 + 25.5,
    dTAppA_nominal=3.9,
    TWetBulA_nominal=273.15 + 25.5,
    mulCooTowSys(
      cooTowC(yorkCalc(T_start=273.15 + 22.44)),
      cooTowB(yorkCalc(T_start=273.15 + 22.44)),
      cooTowA(yorkCalc(T_start=273.15 + 22.44))))
    annotation (Placement(transformation(extent={{-60,2},{-40,22}})));
  BaseClasses.PumpSystem pumCW(
    redeclare package Medium = MediumCW,
    m_flow_nominal=mCW_flow_nominal,
    Motor_eta=Motor_eta,
    Hydra_eta=Hydra_eta)
    annotation (Placement(transformation(extent={{-30,-30},{-10,-10}})));
  BaseClasses.PumpSystem pumCHW(
    redeclare package Medium = MediumCHW,
    Motor_eta=Motor_eta,
    Hydra_eta=Hydra_eta,
    m_flow_nominal=mCHW_flow_nominal)
    annotation (Placement(transformation(extent={{50,30},{30,50}})));
  ChillerPlantSystem.BaseClasses.Components.Building building(redeclare package
      Medium =                                                                           MediumCHW, m_flow_nominal=3*mCHW_flow_nominal,
    dP_nominal=0)
    annotation (Placement(transformation(extent={{32,-26},{48,-14}})));
  ChillerPlantSystem.NY.Control.Stage stage(
    tWai=tWai,
    TraPoi1=TraPoi1,
    TraPoi2=TraPoi2,
    DeaBanWid=DeaBanWid)
    annotation (Placement(transformation(extent={{74,74},{64,84}})));
  inner Modelica.Fluid.System system annotation (Placement(transformation(extent={{74,-80},
            {94,-60}})));
  ChillerPlantSystem.Buildings.Fluid.Storage.ExpansionVessel expVesCW(
      redeclare package Medium = MediumCW, VTot=1)
    annotation (Placement(transformation(extent={{-62,-15},{-54,-6}})));
  ChillerPlantSystem.Buildings.Fluid.Storage.ExpansionVessel expVesCHW(
      redeclare package Medium = MediumCHW, VTot=1)
    annotation (Placement(transformation(extent={{66,43},{74,52}})));
  Modelica.Blocks.Sources.CombiTimeTable TWetBul(
    tableOnFile=true,
    tableName="table1",
    fileName="Twb.txt",
    smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments)
    annotation (Placement(transformation(extent={{-94,-40},{-80,-26}})));
  Modelica.Blocks.Sources.CombiTimeTable CooLoa(
    tableOnFile=true,
    tableName="table1",
    fileName="Load.txt",
    smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments)
    annotation (Placement(transformation(extent={{0,-40},{14,-26}})));
  Modelica.Thermal.HeatTransfer.Celsius.ToKelvin toKelvin
    annotation (Placement(transformation(extent={{-76,-36},{-70,-30}})));
  Modelica.Blocks.Sources.RealExpression PHVAC(y=(muliChiSys.P[1] + muliChiSys.P[
        2] + muliChiSys.P[3] + cooTowWitByp.P[1] + cooTowWitByp.P[2] +
        cooTowWitByp.P[3])/3600/1000)
    annotation (Placement(transformation(extent={{-68,-84},{-48,-64}})));
  Modelica.Blocks.Continuous.Integrator EHVAC
    annotation (Placement(transformation(extent={{4,-80},{16,-68}})));
initial algorithm
  if (resultFileName <> "") then
    Modelica.Utilities.Files.removeFile(resultFileName);
  end if;
  TCWSet := Modelica.Utilities.Examples.readRealParameter(inputFileName, "TCWSet");
equation
   when terminal() then
     Modelica.Utilities.Streams.print("ETOTAL = "+realString(number=EHVAC.y, minimumWidth=1, precision=5), resultFileName);
   end when;
  connect(cooTowWitByp.port_b, pumCW.port_a) annotation (Line(
      points={{-40,4},{-40,-20},{-30,-20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(pumCW.port_b, muliChiSys.port_a_CW) annotation (Line(
      points={{-10,-20},{0,-20},{0,4}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(cooTowWitByp.port_a, muliChiSys.port_b_CW) annotation (Line(
      points={{-40,18},{-40,40},{0,40},{0,20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(pumCHW.port_b, muliChiSys.port_a_CHW) annotation (Line(
      points={{30,40},{20,40},{20,20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(muliChiSys.port_b_CHW, building.port_a) annotation (Line(
      points={{20,4},{20,-20},{32,-20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(building.port_b, pumCHW.port_a) annotation (Line(
      points={{48,-20},{60,-20},{60,40},{50,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(building.MeaCooLoa, stage.CooLoa) annotation (Line(
      points={{48.8,-17.6},{80,-17.6},{80,79},{75,79}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(stage.y, cooTowWitByp.On) annotation (Line(
      points={{63.5,79},{-80,79},{-80,18},{-60.9,18}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(pumCHW.On, stage.y) annotation (Line(
      points={{50.9,46},{60,46},{60,79},{63.5,79}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(pumCW.On, stage.y) annotation (Line(
      points={{-30.9,-14},{-34,-14},{-34,79},{63.5,79}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(muliChiSys.On, stage.y) annotation (Line(
      points={{-0.9,12},{-34,12},{-34,79},{63.5,79}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(expVesCW.port_a, pumCW.port_a) annotation (Line(
      points={{-58,-15},{-58,-20},{-30,-20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(expVesCHW.port_a, pumCHW.port_a) annotation (Line(
      points={{70,43},{70,40},{50,40}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(CooLoa.y[1], building.CooLoa) annotation (Line(
      points={{14.7,-33},{24,-33},{24,-17.6},{31.28,-17.6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(toKelvin.Celsius, TWetBul.y[1]) annotation (Line(
      points={{-76.6,-33},{-79.3,-33}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(toKelvin.Kelvin, cooTowWitByp.TWetBul) annotation (Line(
      points={{-69.7,-33},{-66,-33},{-66,6},{-60.9,6}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(PHVAC.y, EHVAC.u) annotation (Line(
      points={{-47,-74},{2.8,-74}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics),
    experiment(StopTime=3600),
    __Dymola_experimentSetupOutput);
end ChillerSystem;
