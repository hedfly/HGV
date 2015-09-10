within ChillerPlantSystem.Buildings.Examples.DualFanDualDuct;
model ClosedLoop "Closed loop model of a dual-fan dual-duct system"
  extends Modelica.Icons.Example;

  replaceable package MediumA =
      Buildings.Media.GasesPTDecoupled.MoistAirUnsaturated;
  package MediumW = Buildings.Media.ConstantPropertyLiquidWater
    "Medium model for water";

  parameter Real yFan_start=0.0 "Initial or guess value of output (= state)";
  parameter Boolean dynamicBalanceJunction=true
    "Set to true to use a dynamic balance for junction volumes, which often leads to smaller systems of equations";
  parameter Modelica.Fluid.Types.Dynamics energyDynamicsJunctions=Modelica.Fluid.Types.Dynamics.FixedInitial
    "Formulation of energy balance in junction volumes";
  parameter Boolean from_dp=true
    "= true, use m_flow = f(dp) else dp = f(m_flow)";
  parameter Boolean linearizeFlowResistance=false
    "= true, use linear relation between m_flow and dp for any flow rate";

  parameter Modelica.SIunits.Volume VRooCor=2698 "Room volume corridor";
  parameter Modelica.SIunits.Volume VRooSou=568.77 "Room volume south";
  parameter Modelica.SIunits.Volume VRooNor=568.77 "Room volume north";
  parameter Modelica.SIunits.Volume VRooEas=360.08 "Room volume east";
  parameter Modelica.SIunits.Volume VRooWes=360.08 "Room volume west";

  constant Real conv=1.2/3600 "Conversion factor for nominal mass flow rate";
  parameter Modelica.SIunits.MassFlowRate m0_flow_cor=3*VRooCor*conv
    "Design mass flow rate core";
  parameter Modelica.SIunits.MassFlowRate m0_flow_sou=8*VRooSou*conv
    "Design mass flow rate perimeter 1";
  parameter Modelica.SIunits.MassFlowRate m0_flow_eas=9*VRooEas*conv
    "Design mass flow rate perimeter 2";
  parameter Modelica.SIunits.MassFlowRate m0_flow_nor=11*VRooNor*conv
    "Design mass flow rate perimeter 3";
  parameter Modelica.SIunits.MassFlowRate m0_flow_wes=10*VRooWes*conv
    "Design mass flow rate perimeter 4";

  parameter Modelica.SIunits.MassFlowRate m_flow_nominal=m0_flow_cor +
      m0_flow_sou + m0_flow_eas + m0_flow_nor + m0_flow_wes
    "Nominal air mass flow rate";
  parameter Modelica.SIunits.MassFlowRate mAirOut_flow_nominal = 0.3*m_flow_nominal
    "Nominal outside air mass flow rate";
  parameter Modelica.SIunits.MassFlowRate mAirHot_flow_nominal = 0.3*m_flow_nominal
    "Nominal air mass flow rate for hot deck";
  parameter Modelica.SIunits.MassFlowRate mAirCol_flow_nominal = m_flow_nominal
    "Nominal air mass flow rate for cold deck";
  ///////////////////////////////////////////////////////////////////////////////////////
  // Water mass flow rates
  parameter Modelica.SIunits.MassFlowRate mWatPre_flow_nominal = (TMixHea_nominal-273.15-(-20))*1000/15/4200*mAirOut_flow_nominal
    "Nominal water mass flow rate for preheat coil";
  parameter Modelica.SIunits.MassFlowRate mWatCol_flow_nominal = (28-13)*1000*1.3/4200/15*mAirCol_flow_nominal
    "Nominal water mass flow rate for cooling coil of cold deck";
  parameter Modelica.SIunits.MassFlowRate mWatHot_flow_nominal = (40-(TMixHea_nominal-273.15))*1000/15/4200*mAirHot_flow_nominal
    "Nominal water mass flow rate for heating coil of cold deck";
  // Water temperatures
  parameter Modelica.SIunits.Temperature TMixHea_nominal = 0.3*(273.15+(-20)) + 0.7 * (273.15+20)
    "Mixed air temperature at winter design conditions";
  parameter Modelica.SIunits.Temperature TMixCoo_nominal = 0.3*(273.15+(33)) + 0.7 * (273.15+26)
    "Mixed air temperature at summer design conditions";
  parameter Modelica.SIunits.Temperature TSupCol_nominal = 12+273.15
    "Cold deck temperature at nominal condition";
  parameter Modelica.SIunits.Angle lat=41.98*3.14159/180 "Latitude";

  Fluid.Sources.Outside amb(redeclare package Medium = MediumA, nPorts=2)
    "Ambient conditions"
    annotation (Placement(transformation(extent={{-132,12},{-112,32}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM fil(
    m_flow_nominal=m_flow_nominal,
    redeclare package Medium = MediumA,
    dp_nominal=200 + 200 + 100,
    from_dp=from_dp,
    linearized=linearizeFlowResistance) "Filter"
    annotation (Placement(transformation(extent={{60,-50},{80,-30}})));
  Buildings.Fluid.HeatExchangers.DryEffectivenessNTU preHeaCoi(
    redeclare package Medium1 = MediumA,
    redeclare package Medium2 = MediumW,
    allowFlowReversal2=false,
    dp2_nominal=6000,
    m1_flow_nominal=mAirOut_flow_nominal,
    m2_flow_nominal=mWatPre_flow_nominal,
    dp1_nominal=200,
    Q_flow_nominal=mAirOut_flow_nominal*1006*(TMixHea_nominal - TSupCol_nominal),
    T_a1_nominal=281.65,
    T_a2_nominal=323.15,
    configuration=Buildings.Fluid.Types.HeatExchangerConfiguration.ParallelFlow)
    "Preheat coil"
    annotation (Placement(transformation(extent={{100,-56},{120,-36}})));

  Buildings.Fluid.HeatExchangers.WetCoilCounterFlow cooCoi(
    redeclare package Medium1 = MediumW,
    redeclare package Medium2 = MediumA,
    m1_flow_nominal=mWatCol_flow_nominal,
    m2_flow_nominal=mAirCol_flow_nominal,
    UA_nominal=-mAirCol_flow_nominal*1000*15/
        Buildings.Fluid.HeatExchangers.BaseClasses.lmtd(
        T_a1=6,
        T_b1=12,
        T_a2=28,
        T_b2=13),
    dp2_nominal=0,
    from_dp2=from_dp,
    linearizeFlowResistance2=linearizeFlowResistance,
    dp1_nominal=0) "Cooling coil"
    annotation (Placement(transformation(extent={{372,-146},{352,-166}})));
  Buildings.Fluid.Movers.FlowMachine_y fanSupHot(
    redeclare package Medium = MediumA,
    pressure(V_flow=mAirHot_flow_nominal/1.2*{0,2}, dp=600*{2,0}),
    energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial,
    dynamicBalance=true) "Supply air fan for hot deck"
    annotation (Placement(transformation(extent={{300,-10},{320,10}})));
  Buildings.Fluid.Movers.FlowMachine_y fanSupCol(
    redeclare package Medium = MediumA,
    pressure(V_flow=mAirCol_flow_nominal/1.2*{0,2}, dp=600*{2,0}),
    energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial,
    dynamicBalance=true) "Supply air fan for cold deck"
    annotation (Placement(transformation(extent={{302,-160},{322,-140}})));
  Buildings.Fluid.Movers.FlowMachine_y fanRet(
    redeclare package Medium = MediumA,
    pressure(V_flow=m_flow_nominal/1.2*{0,2}, dp=100*{2,0}),
    energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial,
    dynamicBalance=true) "Return air fan"
    annotation (Placement(transformation(extent={{360,150},{340,170}})));
  Buildings.Fluid.Sources.FixedBoundary sinHea(
    redeclare package Medium = MediumW,
    nPorts=2,
    p=300000,
    T=308.15) "Sink for heating coil" annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={90,-220})));
  Buildings.Fluid.Sources.FixedBoundary sinCoo(
    redeclare package Medium = MediumW,
    p=300000,
    T=285.15,
    nPorts=1) "Sink for cooling coil" annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={310,-222})));
  Modelica.Blocks.Routing.RealPassThrough TOut(y(
      final quantity="ThermodynamicTemperature",
      final unit="K",
      displayUnit="degC",
      min=0))
    annotation (Placement(transformation(extent={{-300,138},{-280,158}})));
  inner Modelica.Fluid.System system(
    p_ambient(displayUnit="Pa"),
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    m_flow_small=1E-4*m_flow_nominal)
    annotation (Placement(transformation(extent={{-340,100},{-320,120}})));
  Buildings.Examples.DualFanDualDuct.Controls.HeatingCoilTemperatureSetpoint TSupSetHea(TOn=
        284.15, TOff=279.15) "Supply air temperature setpoint for heating"
    annotation (Placement(transformation(extent={{-80,-180},{-60,-160}})));
  Buildings.Controls.Continuous.LimPID preHeaCoiCon(
    yMax=1,
    yMin=0,
    Td=60,
    initType=Modelica.Blocks.Types.InitPID.InitialState,
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    Ti=120,
    k=0.1) "Controller for pre-heating coil"
    annotation (Placement(transformation(extent={{20,-180},{40,-160}})));
  Buildings.Controls.Continuous.LimPID cooCoiCon(
    reverseAction=true,
    Td=60,
    initType=Modelica.Blocks.Types.InitPID.InitialState,
    yMax=1,
    yMin=0,
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    k=0.1,
    Ti=120) "Controller for cooling coil"
    annotation (Placement(transformation(extent={{340,-200},{360,-180}})));
  Buildings.Examples.VAVReheat.Controls.FanVFD conFanSupHot(
    initType=Modelica.Blocks.Types.Init.InitialState,
    y_start=yFan_start,
    r_N_min=0,
    xSet_nominal(displayUnit="Pa") = 30) "Controller for fan of hot deck"
    annotation (Placement(transformation(extent={{120,80},{140,100}})));
  Buildings.Controls.SetPoints.OccupancySchedule occSch(occupancy=3600*{6,19})
    "Occupancy schedule"
    annotation (Placement(transformation(extent={{-318,-220},{-298,-200}})));
  Buildings.Examples.VAVReheat.Controls.ModeSelector modeSelector
    annotation (Placement(transformation(extent={{-106,-380},{-84,-358}})));
  Buildings.Examples.VAVReheat.Controls.ControlBus controlBus
    annotation (Placement(transformation(extent={{-250,-270},{-230,-250}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TPreHeaCoi(redeclare package
      Medium = MediumA, m_flow_nominal=m_flow_nominal)
    "Preheating coil outlet temperature"
    annotation (Placement(transformation(extent={{134,-50},{154,-30}})));
  Buildings.Utilities.Math.Min min(nin=5) "Computes lowest room temperature"
    annotation (Placement(transformation(extent={{1200,440},{1220,460}})));
  Buildings.Utilities.Math.Average ave(nin=5)
    "Compute average of room temperatures"
    annotation (Placement(transformation(extent={{1200,410},{1220,430}})));
  Buildings.Fluid.Actuators.Valves.TwoWayLinear valCoo(
    redeclare package Medium = MediumW,
    CvData=Buildings.Fluid.Types.CvTypes.OpPoint,
    m_flow_nominal=m_flow_nominal*1000*15/4200/10,
    dpValve_nominal=6000,
    from_dp=true,
    dpFixed_nominal=6000) "Cooling coil valve" annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={380,-190})));
  Buildings.Fluid.Sources.FixedBoundary souCoo(
    redeclare package Medium = MediumW,
    p=3E5 + 12000,
    nPorts=1,
    T=279.15) "Source for cooling coil" annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={380,-220})));
  Buildings.Examples.VAVReheat.Controls.Economizer conEco(
    dT=1,
    Ti=60,
    VOut_flow_min=0.3*m_flow_nominal/1.2,
    k=0.1) "Controller for economizer"
    annotation (Placement(transformation(extent={{-80,140},{-60,160}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TRet(redeclare package Medium =
        MediumA, m_flow_nominal=m_flow_nominal) "Return air temperature sensor"
    annotation (Placement(transformation(extent={{102,150},{82,170}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TMix(redeclare package Medium =
        MediumA, m_flow_nominal=m_flow_nominal) "Mixed air temperature sensor"
    annotation (Placement(transformation(extent={{30,-50},{50,-30}})));
  Buildings.Examples.VAVReheat.Controls.RoomTemperatureSetpoint TSetRoo(THeaOff=
        289.15)
    annotation (Placement(transformation(extent={{-300,-276},{-280,-256}})));
  Buildings.Fluid.Sources.FixedBoundary souHea(
    redeclare package Medium = MediumW,
    p(displayUnit="Pa") = 300000 + 12000,
    T=318.15,
    nPorts=2) "Source for heating coil" annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={122,-220})));
  Buildings.Fluid.Actuators.Dampers.MixingBox eco(
    redeclare package Medium = MediumA,
    mOut_flow_nominal=m_flow_nominal,
    mRec_flow_nominal=m_flow_nominal,
    mExh_flow_nominal=m_flow_nominal,
    dpOut_nominal=10,
    dpRec_nominal=10,
    dpExh_nominal=10,
    from_dp=from_dp,
    linearized=linearizeFlowResistance) "Economizer"
    annotation (Placement(transformation(extent={{-40,66},{14,12}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TCoiCoo(redeclare package Medium
      = MediumA, m_flow_nominal=mAirCol_flow_nominal)
    "Cooling coil outlet temperature"
    annotation (Placement(transformation(extent={{402,-160},{422,-140}})));
  Buildings.Fluid.Sensors.VolumeFlowRate VOut1(redeclare package Medium =
        MediumA, m_flow_nominal=m_flow_nominal) "Outside air volume flow rate"
    annotation (Placement(transformation(extent={{-80,12},{-60,32}})));
  Buildings.Examples.DualFanDualDuct.ThermalZones.SupplyBranch cor(
    redeclare package MediumA = MediumA,
    m_flow_nominal=m0_flow_cor,
    VRoo=2698,
    energyDynamicsJunctions=energyDynamicsJunctions,
    dynamicBalanceJunction=dynamicBalanceJunction,
    from_dp=true) "Zone for core of buildings (azimuth will be neglected)"
    annotation (Placement(transformation(extent={{548,44},{616,112}})));
  Buildings.Examples.DualFanDualDuct.ThermalZones.SupplyBranch sou(
    redeclare package MediumA = MediumA,
    m_flow_nominal=m0_flow_sou,
    VRoo=568.77,
    energyDynamicsJunctions=energyDynamicsJunctions,
    dynamicBalanceJunction=dynamicBalanceJunction,
    from_dp=true) "South-facing thermal zone"
    annotation (Placement(transformation(extent={{686,42},{758,114}})));
  Buildings.Examples.DualFanDualDuct.ThermalZones.SupplyBranch eas(
    redeclare package MediumA = MediumA,
    m_flow_nominal=m0_flow_eas,
    VRoo=360.08,
    energyDynamicsJunctions=energyDynamicsJunctions,
    dynamicBalanceJunction=dynamicBalanceJunction,
    from_dp=true) "East-facing thermal zone"
    annotation (Placement(transformation(extent={{824,46},{892,114}})));
  Buildings.Examples.DualFanDualDuct.ThermalZones.SupplyBranch nor(
    redeclare package MediumA = MediumA,
    m_flow_nominal=m0_flow_nor,
    VRoo=568.77,
    energyDynamicsJunctions=energyDynamicsJunctions,
    dynamicBalanceJunction=dynamicBalanceJunction,
    from_dp=true) "North-facing thermal zone"
    annotation (Placement(transformation(extent={{964,46},{1032,114}})));
  Buildings.Examples.DualFanDualDuct.ThermalZones.SupplyBranch wes(
    redeclare package MediumA = MediumA,
    m_flow_nominal=m0_flow_wes,
    VRoo=360.08,
    energyDynamicsJunctions=energyDynamicsJunctions,
    dynamicBalanceJunction=dynamicBalanceJunction,
    from_dp=true) "West-facing thermal zone"
    annotation (Placement(transformation(extent={{1102,46},{1170,114}})));
  Buildings.Examples.VAVReheat.Controls.FanVFD conFanRet(
    xSet_nominal(displayUnit="Pa") = 30,
    initType=Modelica.Blocks.Types.Init.InitialState,
    y_start=yFan_start,
    r_N_min=0) "Controller for return air fan"
    annotation (Placement(transformation(extent={{240,220},{260,240}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splRetRoo1(
    redeclare package Medium = MediumA,
    m_flow_nominal={m_flow_nominal,m_flow_nominal - m0_flow_cor,m0_flow_cor},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal(displayUnit="Pa") = {30,0,70}) "Splitter for room return"
    annotation (Placement(transformation(extent={{590,170},{610,150}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splRetSou(
    redeclare package Medium = MediumA,
    m_flow_nominal={m0_flow_sou + m0_flow_eas + m0_flow_nor + m0_flow_wes,
        m0_flow_eas + m0_flow_nor + m0_flow_wes,m0_flow_sou},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal(displayUnit="Pa") = {20,0,50}) "Splitter for room return"
    annotation (Placement(transformation(extent={{730,170},{750,150}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splRetEas(
    redeclare package Medium = MediumA,
    m_flow_nominal={m0_flow_eas + m0_flow_nor + m0_flow_wes,m0_flow_nor +
        m0_flow_wes,m0_flow_eas},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal(displayUnit="Pa") = {20,0,30}) "Splitter for room return"
    annotation (Placement(transformation(extent={{870,170},{890,150}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splRetNor(
    redeclare package Medium = MediumA,
    m_flow_nominal={m0_flow_nor + m0_flow_wes,m0_flow_wes,m0_flow_nor},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal(displayUnit="Pa") = {20,10,10}) "Splitter for room return"
    annotation (Placement(transformation(extent={{1010,170},{1030,150}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splSupRoo1Hot(
    redeclare package Medium = MediumA,
    m_flow_nominal={m_flow_nominal,m_flow_nominal - m0_flow_cor,m0_flow_cor},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal(displayUnit="Pa") = {240,0,-80}) "Splitter for room supply"
    annotation (Placement(transformation(extent={{560,10},{580,-10}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splSupSouHot(
    redeclare package Medium = MediumA,
    m_flow_nominal={m0_flow_sou + m0_flow_eas + m0_flow_nor + m0_flow_wes,
        m0_flow_eas + m0_flow_nor + m0_flow_wes,m0_flow_sou},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal={20,0,-60}) "Splitter for room supply"
    annotation (Placement(transformation(extent={{700,10},{720,-10}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splSupEasHot(
    redeclare package Medium = MediumA,
    m_flow_nominal={m0_flow_eas + m0_flow_nor + m0_flow_wes,m0_flow_nor +
        m0_flow_wes,m0_flow_eas},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal={20,0,-40}) "Splitter for room supply"
    annotation (Placement(transformation(extent={{840,10},{860,-10}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splSupNorHot(
    redeclare package Medium = MediumA,
    m_flow_nominal={m0_flow_nor + m0_flow_wes,m0_flow_wes,m0_flow_nor},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal={20,0,-20}) "Splitter for room supply"
    annotation (Placement(transformation(extent={{980,10},{1000,-10}})));
  Buildings.Examples.DualFanDualDuct.Controls.CoolingCoilTemperatureSetpoint TSetCoo(TOn=
        285.15, TOff=313.15) "Setpoint for cooling coil"
    annotation (Placement(transformation(extent={{-80,-250},{-60,-230}})));
  BoundaryConditions.WeatherData.ReaderTMY3 weaDat(filNam=
        "modelica://Buildings/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
    annotation (Placement(transformation(extent={{-390,170},{-370,190}})));
  BoundaryConditions.WeatherData.Bus weaBus "Weather Data Bus"
    annotation (Placement(transformation(extent={{-360,170},{-340,190}})));
  Buildings.Examples.VAVReheat.ThermalZones.Floor flo(redeclare package Medium
      = MediumA, lat=lat)
    "Model of a floor of the building that is served by this VAV system"
    annotation (Placement(transformation(extent={{800,280},{1128,674}})));
  Modelica.Blocks.Routing.DeMultiplex5 TRooAir
    "Demultiplex for room air temperature"
    annotation (Placement(transformation(extent={{498,120},{518,140}})));

  Fluid.HeatExchangers.DryEffectivenessNTU          heaCoi(
    redeclare package Medium1 = MediumW,
    redeclare package Medium2 = MediumA,
    m1_flow_nominal=mWatHot_flow_nominal,
    m2_flow_nominal=mAirHot_flow_nominal,
    Q_flow_nominal=mAirHot_flow_nominal*1000*(45 - 12),
    configuration=Buildings.Fluid.Types.HeatExchangerConfiguration.CounterFlow,
    dp2_nominal=0,
    from_dp2=from_dp,
    linearizeFlowResistance2=linearizeFlowResistance,
    dp1_nominal=0,
    T_a1_nominal=285.15,
    T_a2_nominal=318.15) "Heating coil for hot deck"
    annotation (Placement(transformation(extent={{370,4},{350,-16}})));
  Buildings.Fluid.Sensors.TemperatureTwoPort TCoiHea(redeclare package Medium
      = MediumA, m_flow_nominal=mAirHot_flow_nominal)
    "Heating coil outlet temperature"
    annotation (Placement(transformation(extent={{400,-10},{420,10}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splHotColDec(
    redeclare package Medium = MediumA,
    m_flow_nominal=m_flow_nominal*{1,1,1},
    dp_nominal(displayUnit="Pa") = {0,0,0},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance) "Splitter for cold deck" annotation (
      Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={200,-40})));
  Buildings.Fluid.Actuators.Valves.TwoWayLinear valPreHea(
    redeclare package Medium = MediumW,
    CvData=Buildings.Fluid.Types.CvTypes.OpPoint,
    dpValve_nominal=6000,
    from_dp=true,
    m_flow_nominal=mWatPre_flow_nominal,
    riseTime=10) "Preheating coil valve" annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={120,-170})));
  Fluid.Movers.FlowMachine_m_flow pumPreHea(redeclare package Medium = MediumW,
      m_flow_nominal=mWatPre_flow_nominal)
    "Pump for preheat coil (to ensure constant flow through the coil)"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={120,-90})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splCol1(
    from_dp=true,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    linearized=true,
    dp_nominal(displayUnit="Pa") = {0,0,0},
    redeclare package Medium = MediumW,
    m_flow_nominal=mWatPre_flow_nominal*{1,1,1}) "Splitter for cold deck"
    annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={120,-130})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splCol2(
    from_dp=true,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    linearized=true,
    dp_nominal(displayUnit="Pa") = {0,0,0},
    redeclare package Medium = MediumW,
    m_flow_nominal=mWatPre_flow_nominal*{1,1,1}) "Splitter for cold deck"
    annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=270,
        origin={88,-130})));
  Buildings.Fluid.Actuators.Valves.TwoWayLinear valHea(
    redeclare package Medium = MediumW,
    CvData=Buildings.Fluid.Types.CvTypes.OpPoint,
    dpValve_nominal=6000,
    from_dp=true,
    m_flow_nominal=mWatPre_flow_nominal,
    dpFixed_nominal=6000) "Heating coil valve" annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={380,-50})));
  Buildings.Controls.Continuous.LimPID heaCoiCon(
    Td=60,
    initType=Modelica.Blocks.Types.InitPID.InitialState,
    yMax=1,
    yMin=0,
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    Ti=120,
    k=0.1) "Controller for heating coil"
    annotation (Placement(transformation(extent={{340,-60},{360,-40}})));
  Buildings.Controls.SetPoints.Table TSetHot(table=[273.15 + 5,273.15 + 40;
        273.15 + 22,273.15 + 22]) "Setpoint for hot deck temperature"
    annotation (Placement(transformation(extent={{300,-60},{320,-40}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splSupRoo1Col(
    redeclare package Medium = MediumA,
    m_flow_nominal={m_flow_nominal,m_flow_nominal - m0_flow_cor,m0_flow_cor},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal(displayUnit="Pa") = {240,0,-80}) "Splitter for room supply"
    annotation (Placement(transformation(extent={{580,-30},{600,-50}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splSupSouCol(
    redeclare package Medium = MediumA,
    m_flow_nominal={m0_flow_sou + m0_flow_eas + m0_flow_nor + m0_flow_wes,
        m0_flow_eas + m0_flow_nor + m0_flow_wes,m0_flow_sou},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal={20,0,-60}) "Splitter for room supply"
    annotation (Placement(transformation(extent={{724,-30},{744,-50}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splSupEasCol(
    redeclare package Medium = MediumA,
    m_flow_nominal={m0_flow_eas + m0_flow_nor + m0_flow_wes,m0_flow_nor +
        m0_flow_wes,m0_flow_eas},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal={20,0,-40}) "Splitter for room supply"
    annotation (Placement(transformation(extent={{860,-30},{880,-50}})));
  Buildings.Fluid.FixedResistances.SplitterFixedResistanceDpM splSupNorCol(
    redeclare package Medium = MediumA,
    m_flow_nominal={m0_flow_nor + m0_flow_wes,m0_flow_wes,m0_flow_nor},
    energyDynamics=energyDynamicsJunctions,
    massDynamics=energyDynamicsJunctions,
    dynamicBalance=dynamicBalanceJunction,
    from_dp=from_dp,
    linearized=linearizeFlowResistance,
    dp_nominal={20,0,-20}) "Splitter for room supply"
    annotation (Placement(transformation(extent={{1000,-30},{1020,-50}})));
  Modelica.Blocks.Sources.Constant pStaPre_Set(      y(final unit="Pa", min=0), k=30)
    "Setpoint for static pressure"
    annotation (Placement(transformation(extent={{60,80},{80,100}})));
  Buildings.Examples.VAVReheat.Controls.FanVFD conFanSupCol(
    initType=Modelica.Blocks.Types.Init.InitialState,
    y_start=yFan_start,
    r_N_min=0,
    xSet_nominal(displayUnit="Pa") = 30) "Controller for fan of cold deck"
    annotation (Placement(transformation(extent={{100,40},{120,60}})));
  Modelica.Blocks.Logical.Switch swiPumPreCoi "Switch for preheat coil pump"
    annotation (Placement(transformation(extent={{40,-100},{60,-80}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=273.15 + 10)
    annotation (Placement(transformation(extent={{0,-100},{20,-80}})));
  Modelica.Blocks.Sources.Constant mWatPreOn(k=mWatPre_flow_nominal)
    "Water flow rate at preheat coil if on"
    annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
  Modelica.Blocks.Sources.Constant mWatPreOff(k=0)
    "Water flow rate at preheat coil if off"
    annotation (Placement(transformation(extent={{0,-140},{20,-120}})));
  Modelica.Blocks.Sources.Constant pStaBui_Set(y(final unit="Pa", min=0), k=30)
    "Setpoint for static pressure of building"
    annotation (Placement(transformation(extent={{140,220},{160,240}})));

equation
  connect(fil.port_b, preHeaCoi.port_a1)
                                      annotation (Line(
      points={{80,-40},{100,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(controlBus, modeSelector.cb) annotation (Line(
      points={{-240,-260},{-104,-260},{-104,-286},{-102.5,-286},{-102.5,-361.5}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(occSch.tNexOcc, controlBus.dTNexOcc) annotation (Line(
      points={{-297,-204},{-240,-204},{-240,-260}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(TOut.y, controlBus.TOut) annotation (Line(
      points={{-279,148},{-240,148},{-240,-260}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(occSch.occupied, controlBus.occupied) annotation (Line(
      points={{-297,-216},{-240,-216},{-240,-260}},
      color={255,0,255},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(min.y, controlBus.TRooMin) annotation (Line(
      points={{1221,450},{1248,450},{1248,-260},{-240,-260}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(ave.y, controlBus.TRooAve) annotation (Line(
      points={{1221,420},{1248,420},{1248,-260},{-240,-260}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(controlBus, conFanSupHot.controlBus)
                                            annotation (Line(
      points={{-240,-260},{280,-260},{280,98},{123,98}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(TRet.T, conEco.TRet) annotation (Line(
      points={{92,171},{92,194},{-94,194},{-94,157.333},{-81.3333,157.333}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TMix.T, conEco.TMix) annotation (Line(
      points={{40,-29},{40,168},{-90,168},{-90,153.333},{-81.3333,153.333}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(controlBus, conEco.controlBus) annotation (Line(
      points={{-240,-260},{-240,120},{-76,120},{-76,150.667}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(TSetRoo.controlBus, controlBus) annotation (Line(
      points={{-288,-260},{-240,-260}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fil.port_a, TMix.port_b) annotation (Line(
      points={{60,-40},{50,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(cor.controlBus, controlBus) annotation (Line(
      points={{548,60.32},{548,20},{540,20},{540,-160},{480,-160},{480,-260},{
          -240,-260}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(sou.controlBus, controlBus) annotation (Line(
      points={{686,59.28},{686,18},{674,18},{674,-160},{480,-160},{480,-260},{-240,
          -260}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(eas.controlBus, controlBus) annotation (Line(
      points={{824,62.32},{812,62.32},{812,-160},{480,-160},{480,-260},{-240,
          -260}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(nor.controlBus, controlBus) annotation (Line(
      points={{964,62.32},{950,62.32},{950,-160},{480,-160},{480,-260},{-240,
          -260}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(wes.controlBus, controlBus) annotation (Line(
      points={{1102,62.32},{1092,62.32},{1092,-160},{480,-160},{480,-260},{-240,
          -260}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(TPreHeaCoi.T, preHeaCoiCon.u_m)
                                       annotation (Line(
      points={{144,-29},{144,-20},{160,-20},{160,-192},{30,-192},{30,-182}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(conEco.yOA, eco.y) annotation (Line(
      points={{-59.3333,152},{-48,152},{-48,-8},{-13,-8},{-13,6.6}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(eco.port_Exh, amb.ports[1]) annotation (Line(
      points={{-40,55.2},{-100,55.2},{-100,24},{-112,24}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(TCoiCoo.T, cooCoiCon.u_m)    annotation (Line(
      points={{412,-139},{412,-120},{440,-120},{440,-240},{350,-240},{350,-202}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(amb.ports[2], VOut1.port_a) annotation (Line(
      points={{-112,20},{-96,20},{-96,22},{-80,22}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(VOut1.port_b, eco.port_Out) annotation (Line(
      points={{-60,22},{-50,22},{-50,22.8},{-40,22.8}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(eco.port_Sup, TMix.port_a) annotation (Line(
      points={{14,22.8},{24,22.8},{24,-40},{30,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(preHeaCoi.port_b1, TPreHeaCoi.port_a)
                                             annotation (Line(
      points={{120,-40},{134,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(controlBus, conFanRet.controlBus) annotation (Line(
      points={{-240,-260},{280,-260},{280,238},{243,238}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(TRet.port_b, eco.port_Ret) annotation (Line(
      points={{82,160},{24,160},{24,54},{14,54},{14,55.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splRetNor.port_1, splRetEas.port_2) annotation (Line(
      points={{1010,160},{890,160}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splRetEas.port_1, splRetSou.port_2) annotation (Line(
      points={{870,160},{750,160}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splRetSou.port_1, splRetRoo1.port_2) annotation (Line(
      points={{730,160},{610,160}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splSupRoo1Hot.port_2, splSupSouHot.port_1)
                                                annotation (Line(
      points={{580,-6.10623e-16},{652,3.36456e-22},{652,-6.10623e-16},{700,
          -6.10623e-16}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splSupSouHot.port_2, splSupEasHot.port_1)
                                                annotation (Line(
      points={{720,-6.10623e-16},{790,3.36456e-22},{790,-6.10623e-16},{840,
          -6.10623e-16}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splSupEasHot.port_2, splSupNorHot.port_1)
                                                annotation (Line(
      points={{860,-6.10623e-16},{928,3.36456e-22},{928,-6.10623e-16},{980,
          -6.10623e-16}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(cooCoi.port_b2, TCoiCoo.port_a)    annotation (Line(
      points={{372,-150},{402,-150}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(valCoo.port_b, cooCoi.port_a1) annotation (Line(
      points={{380,-180},{380,-162},{372,-162}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(cooCoi.port_b1, sinCoo.ports[1]) annotation (Line(
      points={{352,-162},{332,-162},{332,-172},{310,-172},{310,-212}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(TSetCoo.TSet, cooCoiCon.u_s) annotation (Line(
      points={{-59,-240},{220,-240},{220,-190},{338,-190}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TSetCoo.TSet, conEco.TSupCooSet) annotation (Line(
      points={{-59,-240},{-46,-240},{-46,-104},{-160,-104},{-160,141.333},{
          -81.3333,141.333}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(modeSelector.cb, TSetCoo.controlBus) annotation (Line(
      points={{-102.5,-361.5},{-102,-286},{-102,-248},{-71.8,-248}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
  connect(conEco.VOut_flow, VOut1.V_flow) annotation (Line(
      points={{-81.3333,149.333},{-90,149.333},{-90,80},{-70,80},{-70,33}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(weaDat.weaBus, weaBus) annotation (Line(
      points={{-370,180},{-350,180}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
  connect(weaBus.TDryBul, TOut.u) annotation (Line(
      points={{-350,180},{-326,180},{-326,148},{-302,148}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
  connect(amb.weaBus, weaBus) annotation (Line(
      points={{-132,22.2},{-350,22.2},{-350,180}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
  connect(cor.port_b, flo.portsCor[1]) annotation (Line(
      points={{582,112},{582,252},{784,252},{784,364},{918.08,364},{918.08,
          375.873}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splRetRoo1.port_3, flo.portsCor[2]) annotation (Line(
      points={{600,170},{600,240},{792,240},{792,352},{928,352},{928,375.873},{
          931.2,375.873}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(sou.port_b, flo.portsSou[1]) annotation (Line(
      points={{722,114},{722,228},{918.08,228},{918.08,323.34}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splRetSou.port_3, flo.portsSou[2]) annotation (Line(
      points={{740,170},{740,218},{934,218},{934,323.34},{931.2,323.34}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(eas.port_b, flo.portsEas[1]) annotation (Line(
      points={{858,114},{858,212},{1078,212},{1078,369.307},{1078.14,369.307}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splRetEas.port_3, flo.portsEas[2]) annotation (Line(
      points={{880,170},{880,210},{1091.26,210},{1091.26,369.307}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(nor.port_b, flo.portsNor[1]) annotation (Line(
      points={{998,114},{998,412},{918.08,412},{918.08,428.407}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splRetNor.port_3, flo.portsNor[2]) annotation (Line(
      points={{1020,170},{1020,418},{931.2,418},{931.2,428.407}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(wes.port_b, flo.portsWes[1]) annotation (Line(
      points={{1136,114},{1136,248},{839.36,248},{839.36,375.873}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splRetNor.port_2, flo.portsWes[2]) annotation (Line(
      points={{1030,160},{1130,160},{1130,240},{852.48,240},{852.48,375.873}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(weaBus, flo.weaBus) annotation (Line(
      points={{-350,180},{-348,180},{-348,477},{1003.36,477}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
  connect(flo.TRooAir, min.u) annotation (Line(
      points={{1121.44,450.733},{1164.7,450.733},{1164.7,450},{1198,450}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(flo.TRooAir, ave.u) annotation (Line(
      points={{1121.44,450.733},{1162,450.733},{1162,420},{1198,420}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TRooAir.y1[1], sou.TRoo) annotation (Line(
      points={{519,138},{660,138},{660,90},{681.2,90}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TRooAir.y2[1], eas.TRoo) annotation (Line(
      points={{519,134},{808,134},{808,91.3333},{819.467,91.3333}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TRooAir.y3[1], nor.TRoo) annotation (Line(
      points={{519,130},{950,130},{950,91.3333},{959.467,91.3333}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TRooAir.y4[1], wes.TRoo) annotation (Line(
      points={{519,126},{1088,126},{1088,91.3333},{1097.47,91.3333}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TRooAir.y5[1], cor.TRoo) annotation (Line(
      points={{519,122},{530,122},{530,89.3333},{543.467,89.3333}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TRooAir.u, flo.TRooAir) annotation (Line(
      points={{496,130},{478,130},{478,500},{1162,500},{1162,450.733},{1121.44,
          450.733}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(fanSupCol.port_b, cooCoi.port_a2) annotation (Line(
      points={{322,-150},{352,-150}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(fanSupHot.port_b, heaCoi.port_a2) annotation (Line(
      points={{320,6.10623e-16},{320,-5.55112e-16},{350,-5.55112e-16}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(heaCoi.port_b2, TCoiHea.port_a) annotation (Line(
      points={{370,-5.55112e-16},{370,6.10623e-16},{400,6.10623e-16}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(TPreHeaCoi.port_b, splHotColDec.port_3)
                                            annotation (Line(
      points={{154,-40},{190,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splHotColDec.port_1, fanSupCol.port_a)
                                           annotation (Line(
      points={{200,-50},{200,-150},{302,-150}},
      color={0,127,255},
      smooth=Smooth.None));

  connect(pumPreHea.port_b, preHeaCoi.port_a2) annotation (Line(
      points={{120,-80},{120,-52}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(souHea.ports[1], valPreHea.port_a)
                                          annotation (Line(
      points={{120,-210},{120,-180}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(valPreHea.port_b, splCol1.port_1)
                                         annotation (Line(
      points={{120,-160},{120,-140}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splCol1.port_2, pumPreHea.port_a) annotation (Line(
      points={{120,-120},{120,-100}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splCol2.port_3, splCol1.port_3) annotation (Line(
      points={{98,-130},{110,-130}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splCol2.port_1, preHeaCoi.port_b2) annotation (Line(
      points={{88,-120},{88,-52},{100,-52}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splCol2.port_2, sinHea.ports[1]) annotation (Line(
      points={{88,-140},{88,-210}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(heaCoi.port_a1, valHea.port_b)  annotation (Line(
      points={{370,-12},{380,-12},{380,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(valHea.port_a, souHea.ports[2])  annotation (Line(
      points={{380,-60},{380,-80},{180,-80},{180,-208},{124,-208},{124,-210}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(heaCoi.port_b1, sinHea.ports[2]) annotation (Line(
      points={{350,-12},{340,-12},{340,-28},{220,-28},{220,-74},{174,-74},{174,
          -200},{92,-200},{92,-210}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(TSetHot.y, heaCoiCon.u_s) annotation (Line(
      points={{321,-50},{338,-50}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(heaCoiCon.u_m, TCoiHea.T) annotation (Line(
      points={{350,-62},{350,-90},{432,-90},{432,20},{410,20},{410,11}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(heaCoiCon.y, valHea.y)  annotation (Line(
      points={{361,-50},{368,-50}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(valCoo.port_a, souCoo.ports[1]) annotation (Line(
      points={{380,-200},{380,-210}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splSupRoo1Col.port_2, splSupSouCol.port_1)
                                                annotation (Line(
      points={{600,-40},{724,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splSupSouCol.port_2, splSupEasCol.port_1)
                                                annotation (Line(
      points={{744,-40},{860,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splSupEasCol.port_2, splSupNorCol.port_1)
                                                annotation (Line(
      points={{880,-40},{1000,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(cor.port_aHot, splSupRoo1Hot.port_3) annotation (Line(
      points={{570.213,44},{570,44},{570,10}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(cor.port_aCol, splSupRoo1Col.port_3) annotation (Line(
      points={{593.787,44},{590,44},{590,-30}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(sou.port_aHot, splSupSouHot.port_3) annotation (Line(
      points={{709.52,42},{709.52,26},{710,26},{710,10}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(sou.port_aCol, splSupSouCol.port_3) annotation (Line(
      points={{734.48,42},{734.48,6},{734,6},{734,-30}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(eas.port_aHot, splSupEasHot.port_3) annotation (Line(
      points={{846.213,46},{850,46},{850,10}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(eas.port_aCol, splSupEasCol.port_3) annotation (Line(
      points={{869.787,46},{870,46},{870,-30}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(nor.port_aHot, splSupNorHot.port_3) annotation (Line(
      points={{986.213,46},{990,46},{990,10}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(nor.port_aCol, splSupNorCol.port_3) annotation (Line(
      points={{1009.79,46},{1010,46},{1010,-30}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splSupNorHot.port_2, wes.port_aHot) annotation (Line(
      points={{1000,-6.10623e-16},{1058,-6.10623e-16},{1058,0},{1124.21,0},{
          1124.21,46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splSupNorCol.port_2, wes.port_aCol) annotation (Line(
      points={{1020,-40},{1147.79,-40},{1147.79,46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(nor.p_relHot, conFanSupHot.u_m) annotation (Line(
      points={{1034.27,68.6667},{1048,68.6667},{1048,28},{130,28},{130,78}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(pStaPre_Set.y, conFanSupHot.u)
                                        annotation (Line(
      points={{81,90},{118,90}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(pStaPre_Set.y, conFanSupCol.u)
                                        annotation (Line(
      points={{81,90},{90,90},{90,50},{98,50}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(conFanSupCol.controlBus, conFanSupHot.controlBus) annotation (Line(
      points={{103,58},{280,58},{280,98},{123,98}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
  connect(nor.p_relCol, conFanSupCol.u_m) annotation (Line(
      points={{1034.27,55.0667},{1044,55.0667},{1044,32},{110,32},{110,38}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(flo.p_rel, conFanRet.u_m) annotation (Line(
      points={{793.44,490.133},{180,490.133},{180,200},{250,200},{250,218}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(controlBus.TOut, TSetHot.u) annotation (Line(
      points={{-240,-260},{280,-260},{280,-50},{298,-50}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(cooCoiCon.y, valCoo.y) annotation (Line(
      points={{361,-190},{368,-190}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(preHeaCoiCon.y, valPreHea.y)
                                    annotation (Line(
      points={{41,-170},{108,-170}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TSupSetHea.TSet, conEco.TSupHeaSet) annotation (Line(
      points={{-59,-170},{-52,-170},{-52,-110},{-170,-110},{-170,145.333},{
          -81.3333,145.333}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(modeSelector.cb, TSupSetHea.controlBus) annotation (Line(
      points={{-102.5,-361.5},{-102,-178},{-71.8,-178}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
  connect(TSupSetHea.TSet, preHeaCoiCon.u_s) annotation (Line(
      points={{-59,-170},{18,-170}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(lessThreshold.y, swiPumPreCoi.u2) annotation (Line(
      points={{21,-90},{38,-90}},
      color={255,0,255},
      smooth=Smooth.None));
  connect(lessThreshold.u, TMix.T) annotation (Line(
      points={{-2,-90},{-32,-90},{-32,-20},{40,-20},{40,-29}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(mWatPreOn.y, swiPumPreCoi.u1) annotation (Line(
      points={{21,-60},{30,-60},{30,-82},{38,-82}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swiPumPreCoi.y, pumPreHea.m_flow_in) annotation (Line(
      points={{61,-90},{76,-90},{76,-90.2},{108,-90.2}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(mWatPreOff.y, swiPumPreCoi.u3) annotation (Line(
      points={{21,-130},{30,-130},{30,-98},{38,-98}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(conFanRet.y, fanRet.y) annotation (Line(
      points={{261,230},{350,230},{350,172}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(conFanSupHot.y, fanSupHot.y) annotation (Line(
      points={{141,90},{310,90},{310,12}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(conFanSupCol.y, fanSupCol.y) annotation (Line(
      points={{121,50},{260,50},{260,-120},{312,-120},{312,-138}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(pStaBui_Set.y, conFanRet.u) annotation (Line(
      points={{161,230},{238,230}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TCoiCoo.port_b, splSupRoo1Col.port_1) annotation (Line(
      points={{422,-150},{480,-150},{480,-40},{580,-40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(TCoiHea.port_b, splSupRoo1Hot.port_1) annotation (Line(
      points={{420,6.10623e-16},{491,6.10623e-16},{491,-6.10623e-16},{560,
          -6.10623e-16}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splRetRoo1.port_1, fanRet.port_a) annotation (Line(
      points={{590,160},{360,160}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(TRet.port_a, fanRet.port_b) annotation (Line(
      points={{102,160},{220,160},{220,160},{340,160}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(splHotColDec.port_2, fanSupHot.port_a) annotation (Line(
      points={{200,-30},{200,0},{250,0},{250,6.10623e-16},{300,6.10623e-16}},
      color={0,127,255},
      smooth=Smooth.None));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-400,-400},{1400,
            600}}),      graphics),
    Documentation(info="<html>
<p>
This model consist of an HVAC system, a building envelope model and a model 
for air flow through building leakage and through open doors.
</p>
<p>
The HVAC system is a dual-fan, dual-duct system with economizer and a heating and 
cooling coil in the air handler unit. 
One of the supply air streams is called the hot-deck 
and has a heating coil, the other is called
the cold-deck and has a cooling coil. There is also one return fan and
an economizer. The figure below shows the schematic diagram of the dual-fan,
dual-duct system.
</p>
<p align=\"center\">
<img alt=\"image\" src=\"modelica://Buildings/Resources/Images/Examples/DualFanDualDuct/dualFanDualDuctSchematics.png\" border=\"1\"/>
</p>
<p>
Each thermal zone inlet branch has a flow mixer and an air damper
in the hot deck and the cold deck. The air damper control signals are
as shown in the figure below.
</p>
<p align=\"center\">
<img alt=\"image\" src=\"modelica://Buildings/Resources/Images/Examples/DualFanDualDuct/hotColdDeckControl.png\" border=\"1\"/>
</p>
<p>
Hence, at low room temperatures, the amount
of hot air is increased, and at high room temperatures, the amount
of cold air is increased. In addition, whenever the air mass flow rate
is below a prescribed limit, the hot air deck damper opens to track
the minimum air flow rate. The temperature of the hot-deck is reset 
based on the outside air temperature. The temperature of the
cold-deck is constant. The revolutions of both supply fans are controlled 
in order to track a pressure difference between VAV damper
inlet and room pressure of 30 Pascals. The return fan is controlled
to track a building pressure of 30 Pascals above outside air pressure.
There is also an economizer. 
During night-time, the fans are switched off.
The coils are controlled as follows: The preheat coil is controlled to
maintain an air outlet temperature of 11&deg;C during day-time, and
6&deg;C during night-time. The heating coil is controlled to maintain the
air outlet temperature shown in the figure below.
</p>
<p align=\"center\">
<img alt=\"image\" src=\"modelica://Buildings/Resources/Images/Examples/DualFanDualDuct/hotDeckTemperatureSetPoint.png\" border=\"1\"/>
</p>
<p>
The cooling coil is controlled to maintain a constant outlet temperature 
of 12&deg; during day-time, and 40&deg;C during night-time
</p>
<p>
There is also a 
finite state machine that transitions the mode of operation of 
the HVAC system between the modes 
<i>occupied</i>, <i>unoccupied off</i>, <i>unoccupied night set back</i>,
<i>unoccupied warm-up</i> and <i>unoccupied pre-cool</i>. 
</p>
<p>
All air flows are computed based on the 
duct static pressure distribution and the performance curves of the fans. 
Local loop control is implemented using proportional and proportional-integral 
controllers, while the supervisory control is implemented 
using a finite state machine.
</p>
<p>
To model the heat transfer through the building envelope, 
a model of five interconnected rooms is used.
The five room model is representative of one floor of the 
new construction medium office building for Chicago, IL, 
as described in the set of DOE Commercial Building Benchmarks 
(Deru et al, 2009). There are four perimeter zones and one core zone. 
The envelope thermal properties meet ASHRAE Standard 90.1-2004.
The thermal room model computes transient heat conduction through
walls, floors and ceilings and long-wave radiative heat exchange between
surfaces. The convective heat transfer coefficient is computed based
on the temperature difference between the surface and the room air.
There is also a layer-by-layer short-wave radiation,
long-wave radiation, convection and conduction heat transfer model for the
windows. The model is similar to the 
Window 5 model and described in TARCOG 2006.
</p>
<p>
Each thermal zone can have air flow from the HVAC system, through leakages of the building envelope (except for the core zone) and through bi-directional air exchange through open doors that connect adjacent zones. The bi-directional air exchange is modeled based on the differences in static pressure between adjacent rooms at a reference height plus the difference in static pressure across the door height as a function of the difference in air density.
There is also wind pressure acting on each facade. The wind pressure is a function
of the wind speed and wind direction. Therefore, infiltration is a function of the
flow imbalance of the HVAC system and of the wind conditions.
</p>
<h4>References</h4>
<p>
ASHRAE.
<i>Sequences of Operation for Common HVAC Systems</i>.
ASHRAE, Atlanta, GA, 2006.
</p>
<p>
Deru M., K. Field, D. Studer, K. Benne, B. Griffith, P. Torcellini,
 M. Halverson, D. Winiarski, B. Liu, M. Rosenberg, J. Huang, M. Yazdanian, and D. Crawley.
<i>DOE commercial building research benchmarks for commercial buildings</i>.
Technical report, U.S. Department of Energy, Energy Efficiency and
Renewable Energy, Office of Building Technologies, Washington, DC, 2009.
</p>
<p>
TARCOG 2006: Carli, Inc., TARCOG: Mathematical models for calculation
of thermal performance of glazing systems with our without
shading devices, Technical Report, Oct. 17, 2006.
</p>
</html>", revisions="<html>
<ul>
<li>
December 6, 2011, by Michael Wetter:<br/>
Improved control for minimum zone flow rate.
</li>
<li>
July 18, 2011, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),
__Dymola_Commands(file="modelica://Buildings/Resources/Scripts/Dymola/Examples/DualFanDualDuct/ClosedLoop.mos"
        "Simulate and plot"),
    experiment(
      StopTime=172800,
      Tolerance=1e-006));
end ClosedLoop;
