within GreenVillage.Top_level;
model Water_loop_withResistance_onepump
  import GreenVillage;
  extends Modelica.Icons.Example;
 package Medium = Buildings.Media.Water "Medium model";
 package MediumAir = Buildings.Media.Air;
 parameter Real P[:]={0,50^2,100^2} "Hydraulic efficiecny";
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump_air
                    heatPump_with_load_input(
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000,
    P_SF=P,
    redeclare package Medium_Air = MediumAir,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    k_air=0.01,
    ti_air=120,
    ti_SF=120,
    k_SF=0.01,
    k=1,
    ti=60,
    P_nominal=1720,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
                         annotation (Placement(transformation(extent={{-220,40},{-198,64}})));
  Buildings.Fluid.Sources.FixedBoundary sinDem(redeclare package Medium = Medium, nPorts=1) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        origin={256,-90},
        rotation=90)));
  Buildings.Fluid.Sources.MassFlowSource_T souDem(
    redeclare package Medium = Medium,
    use_T_in=false,
    nPorts=1,
    m_flow=9*heatPump_with_load_input.m1_flow_nominal,
    T=292.59) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={294,-90})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump_air
                             heatPump_with_load_input1(
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000,
    redeclare package Medium_Air = MediumAir,
    P_SF=P,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    k_air=0.01,
    ti_air=120,
    ti_SF=120,
    k_SF=0.01,
    k=1,
    ti=60,
    P_nominal=1720,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
                         annotation (Placement(transformation(extent={{-180,40},{-158,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump_air
                             heatPump_with_load_input2(
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000,
    redeclare package Medium_Air = MediumAir,
    P_SF=P,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    k_air=0.01,
    ti_air=120,
    ti_SF=120,
    k_SF=0.01,
    k=1,
    ti=60,
    P_nominal=1720,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
                         annotation (Placement(transformation(extent={{-140,40},{-118,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump_air
                             heatPump_with_load_input3(
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000,
    redeclare package Medium_Air = MediumAir,
    P_SF=P,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    k_air=0.01,
    ti_air=120,
    ti_SF=120,
    k_SF=0.01,
    k=1,
    ti=60,
    P_nominal=1720,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
                         annotation (Placement(transformation(extent={{-92,40},{-70,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump_air
                             heatPump_with_load_input4(
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000,
    redeclare package Medium_Air = MediumAir,
    P_SF=P,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    k_air=0.01,
    ti_air=120,
    ti_SF=120,
    k_SF=0.01,
    k=1,
    ti=60,
    P_nominal=1720,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
                         annotation (Placement(transformation(extent={{-52,40},{-30,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump_air
                             heatPump_with_load_input5(
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000,
    redeclare package Medium_Air = MediumAir,
    P_SF=P,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    k_air=0.01,
    ti_air=120,
    ti_SF=120,
    k_SF=0.01,
    k=1,
    ti=60,
    P_nominal=1720,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
                         annotation (Placement(transformation(extent={{-12,40},{10,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump_air
                             heatPump_with_load_input6(
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000,
    redeclare package Medium_Air = MediumAir,
    P_SF=P,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    k_air=0.01,
    ti_air=120,
    ti_SF=120,
    k_SF=0.01,
    k=1,
    ti=60,
    P_nominal=1720,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
                         annotation (Placement(transformation(extent={{36,40},{58,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump_air
                             heatPump_with_load_input7(
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000,
    redeclare package Medium_Air = MediumAir,
    P_SF=P,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    k_air=0.01,
    ti_air=120,
    ti_SF=120,
    k_SF=0.01,
    k=1,
    ti=60,
    P_nominal=1720,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
                         annotation (Placement(transformation(extent={{76,40},{98,64}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_withOnePump_air
                             heatPump_with_load_input8(
    dTEva_nominal=7,
    dTCon_nominal=5,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000,
    redeclare package Medium_Air = MediumAir,
    P_SF=P,
    S_min_SF=0,
    mOut_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mRec_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mExh_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/20,
    mAir_CC_flow_nominal=heatPump_with_load_input.m2_flow_nominal*4.2*7/10,
    dpWater_CC_nominal(displayUnit="Pa") = 1000,
    k_air=0.01,
    ti_air=120,
    ti_SF=120,
    k_SF=0.01,
    k=1,
    ti=60,
    P_nominal=1720,
    TCon_nominal=302.59,
    TEva_nominal=278.15,
    TAir_CC_a_nominal=298.15,
    TAir_CC_b_nominal=288.15,
    TWater_CC_a_nominal=278.15,
    TWater_CC_b_nominal=285.15)
                         annotation (Placement(transformation(extent={{116,40},{138,64}})));
  Buildings.Fluid.HeatExchangers.ConstantEffectiveness hex(
    redeclare package Medium1 = Medium,
    redeclare package Medium2 = Medium,
    dp1_nominal=1000,
    dp2_nominal=1000,
    m1_flow_nominal=10*heatPump_with_load_input.m1_flow_nominal,
    m2_flow_nominal=10*heatPump_with_load_input.m1_flow_nominal)
                                                           annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={198,-60})));
  Buildings.Fluid.Storage.ExpansionVessel expVes(
    V_start=1,
    redeclare package Medium = Medium,
    p(displayUnit="Pa") = 0)
    annotation (Placement(transformation(extent={{186,-27},{198,-18}})));
  Modelica.Blocks.Sources.Constant CoolOn(k=1)
    annotation (Placement(transformation(extent={{-280,-60},{-260,-40}})));
  Modelica.Blocks.Sources.Constant TsetPoi(k=273.15 + 5) annotation (Placement(transformation(extent={{-280,
            -90},{-260,-70}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res1(
    redeclare package Medium = Medium,
    dp_nominal=200,
    m_flow_nominal=10*heatPump_with_load_input.m1_flow_nominal)
    annotation (Placement(transformation(extent={{-40,-90},{-20,-70}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res2(
    dp_nominal=100,
    m_flow_nominal=8*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{116,-42},{96,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res3(
    dp_nominal=100,
    m_flow_nominal=7*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{72,-42},{52,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res4(
    dp_nominal=100,
    m_flow_nominal=6*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{32,-42},{12,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res5(
    dp_nominal=100,
    m_flow_nominal=5*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-16,-42},{-36,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res6(
    dp_nominal=100,
    m_flow_nominal=4*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-54,-42},{-74,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res7(
    dp_nominal=100,
    m_flow_nominal=3*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-100,-42},{-120,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res8(
    dp_nominal=100,
    m_flow_nominal=2*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-142,-42},{-162,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res9(
    dp_nominal=100,
    m_flow_nominal=heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-182,-42},{-202,-22}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res10(
    dp_nominal=100,
    m_flow_nominal=heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{118,-10},{98,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res11(
    dp_nominal=100,
    m_flow_nominal=2*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{80,-10},{60,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res12(
    dp_nominal=100,
    m_flow_nominal=3*heatPump_with_load_input.m1_flow_nominal,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{36,-10},{16,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res13(
    dp_nominal=100,
    redeclare package Medium = Medium,
    m_flow_nominal=5*heatPump_with_load_input.m1_flow_nominal)
    annotation (Placement(transformation(extent={{-10,-10},{-30,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res14(
    dp_nominal=100,
    redeclare package Medium = Medium,
    m_flow_nominal=6*heatPump_with_load_input.m1_flow_nominal)
    annotation (Placement(transformation(extent={{-52,-10},{-72,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res15(
    dp_nominal=100,
    redeclare package Medium = Medium,
    m_flow_nominal=7*heatPump_with_load_input.m1_flow_nominal)
    annotation (Placement(transformation(extent={{-92,-10},{-112,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res16(
    dp_nominal=100,
    redeclare package Medium = Medium,
    m_flow_nominal=8*heatPump_with_load_input.m1_flow_nominal)
    annotation (Placement(transformation(extent={{-140,-10},{-160,10}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res17(
    dp_nominal=100,
    redeclare package Medium = Medium,
    m_flow_nominal=9*heatPump_with_load_input.m1_flow_nominal)
    annotation (Placement(transformation(extent={{-178,-10},{-198,10}})));
  Modelica.Blocks.Sources.Constant On(k=1)
    annotation (Placement(transformation(extent={{220,40},{200,60}})));
  Modelica.Blocks.Sources.Step step(
    height=-1,
    offset=1,
    startTime=5e+05)
    annotation (Placement(transformation(extent={{220,72},{200,92}})));
  Modelica.Blocks.Sources.Constant TsetPoi_Air(k=273.15 + 15)
    annotation (Placement(transformation(extent={{-280,0},{-260,20}})));
  Modelica.Blocks.Sources.Constant TOut(k=273.15 + 25)
    annotation (Placement(transformation(extent={{-280,40},{-260,60}})));
  GreenVillage.Demanding_Side.UserSide.UserSide_RefRack userSide_RefRack(
    P_nominal=1000,
    COPc_nominal=3,
    dp_nominal(displayUnit="Pa") = 1000,
    dpPum_nominal(displayUnit="Pa") = 3000)
    annotation (Placement(transformation(extent={{192,-4},{224,30}})));
  Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                            res19(
    redeclare package Medium = Medium,
    m_flow_nominal=heatPump_with_load_input.m1_flow_nominal,
    dp_nominal=300)
    annotation (Placement(transformation(extent={{10,-10},{-10,10}},
        rotation=0,
        origin={162,20})));
  Modelica.Blocks.Sources.Constant RefLoad(k=1000*3)
    annotation (Placement(transformation(extent={{280,40},{260,60}})));
  Modelica.Blocks.Sources.CombiTimeTable Load_HP1(table=[3600,0; 7200,0; 10800,
        0; 14400,0; 18000,0; 21600,0; 25200,0; 28800,1.7585; 32400,3.517; 36000,
        8.7925; 39600,8.7925; 43200,12.3095; 46800,12.3095; 50400,12.3095;
        54000,12.3095; 57600,14.068; 61200,12.3095; 64800,8.7925; 68400,8.7925;
        72000,5.2755; 75600,5.2755; 79200,0; 82800,0; 86400,0])
    annotation (Placement(transformation(extent={{-260,100},{-240,120}})));
  Modelica.Blocks.Sources.CombiTimeTable Load_HP2(table=[3600,0; 7200,0; 10800,
        0; 14400,0; 18000,0; 21600,0; 25200,0; 28800,0.7034; 32400,1.4068;
        36000,3.517; 39600,3.517; 43200,4.9238; 46800,4.9238; 50400,4.9238;
        54000,4.9238; 57600,5.6272; 61200,4.9238; 64800,3.517; 68400,3.517;
        72000,2.1102; 75600,2.1102; 79200,0; 82800,0; 86400,0])
    annotation (Placement(transformation(extent={{-220,100},{-200,120}})));
  Modelica.Blocks.Sources.CombiTimeTable Load_HP3(table=[3600,12.6612; 7200,
        12.6612; 10800,12.6612; 14400,12.6612; 18000,12.6612; 21600,12.6612;
        25200,9.8476; 28800,5.6272; 32400,5.6272; 36000,2.8136; 39600,2.8136;
        43200,2.8136; 46800,2.8136; 50400,2.8136; 54000,2.8136; 57600,4.2204;
        61200,7.034; 64800,7.034; 68400,7.034; 72000,9.8476; 75600,9.8476;
        79200,11.2544; 82800,12.6612; 86400,12.6612])
    annotation (Placement(transformation(extent={{-180,100},{-160,120}})));
  Modelica.Blocks.Sources.CombiTimeTable Load_HP4(table=[3600,0; 7200,0; 10800,
        0; 14400,0; 18000,0; 21600,0; 25200,0; 28800,0.7034; 32400,1.4068;
        36000,3.517; 39600,3.517; 43200,4.9238; 46800,4.9238; 50400,4.9238;
        54000,4.9238; 57600,5.6272; 61200,4.9238; 64800,3.517; 68400,3.517;
        72000,2.1102; 75600,2.1102; 79200,0; 82800,0; 86400,0])
    annotation (Placement(transformation(extent={{-122,100},{-102,120}})));
  Modelica.Blocks.Sources.CombiTimeTable Load_HP5(table=[3600,0; 7200,0; 10800,
        0; 14400,0; 18000,0; 21600,0; 25200,0; 28800,1.0551; 32400,2.1102;
        36000,5.2755; 39600,5.2755; 43200,7.0357; 46800,7.0357; 50400,7.0357;
        54000,7.0357; 57600,8.4408; 61200,7.0357; 64800,5.2755; 68400,5.2755;
        72000,3.1653; 75600,3.1653; 79200,0; 82800,0; 86400,0])
    annotation (Placement(transformation(extent={{-80,100},{-60,120}})));
  Modelica.Blocks.Sources.CombiTimeTable Load_HP6(table=[3600,6.3306; 7200,
        6.3306; 10800,6.3306; 14400,6.3306; 18000,6.3306; 21600,6.3306; 25200,
        4.9238; 28800,2.8136; 32400,2.8136; 36000,1.4068; 39600,1.4068; 43200,
        1.4068; 46800,1.4068; 50400,1.4068; 54000,1.4068; 57600,2.1102; 61200,
        3.517; 64800,3.517; 68400,3.517; 72000,4.9238; 75600,4.9238; 79200,
        5.6272; 82800,6.3306; 86400,6.3306])
    annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
  Modelica.Blocks.Sources.CombiTimeTable Load_HP7(table=[3600,0; 7200,0; 10800,
        0; 14400,0; 18000,0; 21600,0; 25200,0; 28800,1.4068; 32400,2.8136;
        36000,7.034; 39600,7.034; 43200,9.8476; 46800,9.8476; 50400,9.8476;
        54000,9.8476; 57600,11.2544; 61200,9.8476; 64800,7.034; 68400,7.034;
        72000,4.2204; 75600,4.2204; 79200,0; 82800,0; 86400,0])
    annotation (Placement(transformation(extent={{8,100},{28,120}})));
  Modelica.Blocks.Sources.CombiTimeTable Load_HP8(table=[3600,0; 7200,0; 10800,
        0; 14400,0; 18000,0; 21600,0; 25200,0; 28800,1.4068; 32400,2.8136;
        36000,7.034; 39600,7.034; 43200,9.8476; 46800,9.8476; 50400,9.8476;
        54000,9.8476; 57600,11.2544; 61200,9.8476; 64800,7.034; 68400,7.034;
        72000,4.2204; 75600,4.2204; 79200,0; 82800,0; 86400,0])
    annotation (Placement(transformation(extent={{44,100},{64,120}})));
  Modelica.Blocks.Sources.CombiTimeTable Load_HP9(table=[3600,0; 7200,0; 10800,
        0; 14400,0; 18000,0; 21600,0; 25200,0; 28800,1.4068; 32400,2.8136;
        36000,7.034; 39600,7.034; 43200,9.8476; 46800,9.8476; 50400,9.8476;
        54000,9.8476; 57600,11.2544; 61200,9.8476; 64800,7.034; 68400,7.034;
        72000,4.2204; 75600,4.2204; 79200,0; 82800,0; 86400,0])
    annotation (Placement(transformation(extent={{80,100},{100,120}})));
equation

  connect(souDem.ports[1], hex.port_a2) annotation (Line(
      points={{294,-80},{296,-80},{296,-32},{204,-32},{204,-50}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(sinDem.ports[1], hex.port_b2) annotation (Line(
      points={{256,-80},{256,-76},{204,-76},{204,-70}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(CoolOn.y, heatPump_with_load_input.CoolOn) annotation (Line(
      points={{-259,-50},{-240,-50},{-240,48},{-218.429,48}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TsetPoi.y, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-259,-80},{-238,-80},{-238,44},{-218.429,44}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input1.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-178.429,48},{-190,48},{-190,36},{-232,36},{-232,48},{-218.429,
          48}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input2.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-138.429,48},{-150,48},{-150,36},{-232,36},{-232,48},{-218.429,
          48}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input3.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-90.4286,48},{-108,48},{-108,36},{-232,36},{-232,48},{-218.429,
          48}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input4.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-50.4286,48},{-66,48},{-66,36},{-232,36},{-232,48},{-218.429,48}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input5.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{-10.4286,48},{-22,48},{-22,36},{-232,36},{-232,48},{-218.429,48}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input6.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{37.5714,48},{24,48},{24,36},{-232,36},{-232,48},{-218.429,48}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input7.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{77.5714,48},{64,48},{64,36},{-232,36},{-232,48},{-218.429,48}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input8.CoolOn, heatPump_with_load_input.CoolOn)
    annotation (Line(
      points={{117.571,48},{104,48},{104,36},{-232,36},{-232,48},{-218.429,48}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input1.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-178.429,44},{-200,44},{-200,18},{-238,18},{-238,44},{-218.429,
          44}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input2.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-138.429,44},{-156,44},{-156,18},{-238,18},{-238,44},{-218.429,
          44}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input3.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-90.4286,44},{-114,44},{-114,18},{-238,18},{-238,44},{-218.429,
          44}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input4.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-50.4286,44},{-70,44},{-70,18},{-238,18},{-238,44},{-218.429,44}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input5.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{-10.4286,44},{-28,44},{-28,18},{-238,18},{-238,44},{-218.429,44}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input6.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{37.5714,44},{18,44},{18,18},{-238,18},{-238,44},{-218.429,44}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input7.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{77.5714,44},{60,44},{60,18},{-238,18},{-238,44},{-218.429,44}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input8.TSetPoi, heatPump_with_load_input.TSetPoi)
    annotation (Line(
      points={{117.571,44},{100,44},{100,18},{-238,18},{-238,44},{-218.429,44}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(hex.port_a1, res1.port_b) annotation (Line(
      points={{192,-70},{192,-80},{-20,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res2.port_a, heatPump_with_load_input8.port_a) annotation (Line(
      points={{116,-32},{123.857,-32},{123.857,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res2.port_b, heatPump_with_load_input7.port_a) annotation (Line(
      points={{96,-32},{83.8571,-32},{83.8571,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res3.port_a, heatPump_with_load_input7.port_a) annotation (Line(
      points={{72,-32},{83.8571,-32},{83.8571,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res3.port_b, heatPump_with_load_input6.port_a) annotation (Line(
      points={{52,-32},{43.8571,-32},{43.8571,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res4.port_a, heatPump_with_load_input6.port_a) annotation (Line(
      points={{32,-32},{43.8571,-32},{43.8571,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res4.port_b, heatPump_with_load_input5.port_a) annotation (Line(
      points={{12,-32},{-4.14286,-32},{-4.14286,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res5.port_a, heatPump_with_load_input5.port_a) annotation (Line(
      points={{-16,-32},{-4.14286,-32},{-4.14286,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res5.port_b, heatPump_with_load_input4.port_a) annotation (Line(
      points={{-36,-32},{-44.1429,-32},{-44.1429,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res6.port_a, heatPump_with_load_input4.port_a) annotation (Line(
      points={{-54,-32},{-44.1429,-32},{-44.1429,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res6.port_b, heatPump_with_load_input3.port_a) annotation (Line(
      points={{-74,-32},{-84.1429,-32},{-84.1429,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res7.port_a, heatPump_with_load_input3.port_a) annotation (Line(
      points={{-100,-32},{-84.1429,-32},{-84.1429,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res7.port_b, heatPump_with_load_input2.port_a) annotation (Line(
      points={{-120,-32},{-132.143,-32},{-132.143,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res8.port_a, heatPump_with_load_input2.port_a) annotation (Line(
      points={{-142,-32},{-132.143,-32},{-132.143,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(heatPump_with_load_input1.port_a, res9.port_a) annotation (Line(
      points={{-172.143,42},{-174,42},{-174,-32},{-182,-32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res9.port_b, heatPump_with_load_input.port_a) annotation (Line(
      points={{-202,-32},{-212.143,-32},{-212.143,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res8.port_b, res9.port_a) annotation (Line(
      points={{-162,-32},{-182,-32}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res10.port_a, heatPump_with_load_input8.port_b) annotation (Line(
      points={{118,0},{130.143,0},{130.143,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res10.port_b, heatPump_with_load_input7.port_b) annotation (Line(
      points={{98,0},{90.1429,0},{90.1429,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res11.port_a, heatPump_with_load_input7.port_b) annotation (Line(
      points={{80,0},{90.1429,0},{90.1429,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res11.port_b, heatPump_with_load_input6.port_b) annotation (Line(
      points={{60,0},{50.1429,0},{50.1429,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res12.port_a, heatPump_with_load_input6.port_b) annotation (Line(
      points={{36,0},{50.1429,0},{50.1429,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res12.port_b, heatPump_with_load_input5.port_b) annotation (Line(
      points={{16,0},{2.14286,0},{2.14286,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res13.port_a, heatPump_with_load_input5.port_b) annotation (Line(
      points={{-10,0},{2.14286,0},{2.14286,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res13.port_b, heatPump_with_load_input4.port_b) annotation (Line(
      points={{-30,0},{-37.8571,0},{-37.8571,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res14.port_a, res13.port_b) annotation (Line(
      points={{-52,0},{-30,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res14.port_b, heatPump_with_load_input3.port_b) annotation (Line(
      points={{-72,0},{-77.8571,0},{-77.8571,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res15.port_a, res14.port_b) annotation (Line(
      points={{-92,0},{-72,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res15.port_b, heatPump_with_load_input2.port_b) annotation (Line(
      points={{-112,0},{-125.857,0},{-125.857,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res16.port_a, res15.port_b) annotation (Line(
      points={{-140,0},{-112,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res16.port_b, heatPump_with_load_input1.port_b) annotation (Line(
      points={{-160,0},{-165.857,0},{-165.857,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res17.port_a, res16.port_b) annotation (Line(
      points={{-178,0},{-160,0}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res17.port_b, heatPump_with_load_input.port_b) annotation (Line(
      points={{-198,0},{-205.857,0},{-205.857,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res17.port_b, res1.port_a) annotation (Line(
      points={{-198,0},{-230,0},{-230,-80},{-40,-80}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(On.y, heatPump_with_load_input8.On) annotation (Line(
      points={{199,50},{160,50},{160,58},{136.271,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input7.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{96.2714,58},{108,58},{108,76},{160,76},{160,58},{136.271,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input6.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{56.2714,58},{70,58},{70,76},{160,76},{160,58},{136.271,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input4.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-31.7286,58},{-20,58},{-20,76},{160,76},{160,58},{136.271,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input3.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-71.7286,58},{-62,58},{-62,76},{156,76},{156,58},{136.271,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input2.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-119.729,58},{-102,58},{-102,76},{160,76},{160,58},{136.271,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input1.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-159.729,58},{-146,58},{-146,76},{160,76},{160,58},{136.271,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input.On, heatPump_with_load_input8.On)
    annotation (Line(
      points={{-199.729,58},{-184,58},{-184,76},{160,76},{160,58},{136.271,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(step.y, heatPump_with_load_input5.On) annotation (Line(
      points={{199,82},{18,82},{18,58},{8.27143,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(hex.port_b1, heatPump_with_load_input8.port_a) annotation (Line(
      points={{192,-50},{192,-32},{123.857,-32},{123.857,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(expVes.port_a, heatPump_with_load_input8.port_a) annotation (Line(
      points={{192,-27},{192,-32},{123.857,-32},{123.857,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(TsetPoi_Air.y, heatPump_with_load_input.SetPoi) annotation (Line(
      points={{-259,10},{-228,10},{-228,52},{-218.429,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input1.SetPoi, heatPump_with_load_input.SetPoi)
    annotation (Line(
      points={{-178.429,52},{-194,52},{-194,10},{-228,10},{-228,52},{-218.429,
          52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input2.SetPoi, heatPump_with_load_input.SetPoi)
    annotation (Line(
      points={{-138.429,52},{-146,52},{-146,10},{-228,10},{-228,52},{-218.429,
          52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input3.SetPoi, heatPump_with_load_input.SetPoi)
    annotation (Line(
      points={{-90.4286,52},{-106,52},{-106,10},{-228,10},{-228,52},{-218.429,
          52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input4.SetPoi, heatPump_with_load_input.SetPoi)
    annotation (Line(
      points={{-50.4286,52},{-64,52},{-64,10},{-228,10},{-228,52},{-218.429,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input5.SetPoi, heatPump_with_load_input.SetPoi)
    annotation (Line(
      points={{-10.4286,52},{-22,52},{-22,10},{-228,10},{-228,52},{-218.429,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input6.SetPoi, heatPump_with_load_input.SetPoi)
    annotation (Line(
      points={{37.5714,52},{24,52},{24,10},{-228,10},{-228,52},{-218.429,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input7.SetPoi, heatPump_with_load_input.SetPoi)
    annotation (Line(
      points={{77.5714,52},{66,52},{66,10},{-228,10},{-228,52},{-218.429,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input8.SetPoi, heatPump_with_load_input.SetPoi)
    annotation (Line(
      points={{117.571,52},{104,52},{104,10},{-228,10},{-228,52},{-218.429,52}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(TOut.y, heatPump_with_load_input.T_in) annotation (Line(
      points={{-259,50},{-248,50},{-248,60},{-218.429,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input1.T_in, heatPump_with_load_input.T_in)
    annotation (Line(
      points={{-178.429,60},{-188,60},{-188,72},{-248,72},{-248,60},{-218.429,
          60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input2.T_in, heatPump_with_load_input.T_in)
    annotation (Line(
      points={{-138.429,60},{-148,60},{-148,72},{-248,72},{-248,60},{-218.429,
          60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input3.T_in, heatPump_with_load_input.T_in)
    annotation (Line(
      points={{-90.4286,60},{-98,60},{-98,72},{-248,72},{-248,60},{-218.429,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input4.T_in, heatPump_with_load_input.T_in)
    annotation (Line(
      points={{-50.4286,60},{-58,60},{-58,72},{-248,72},{-248,60},{-218.429,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input5.T_in, heatPump_with_load_input.T_in)
    annotation (Line(
      points={{-10.4286,60},{-24,60},{-24,72},{-248,72},{-248,60},{-218.429,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(heatPump_with_load_input6.T_in, heatPump_with_load_input.T_in)
    annotation (Line(
      points={{37.5714,60},{28,60},{28,72},{-248,72},{-248,60},{-218.429,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input7.T_in, heatPump_with_load_input.T_in)
    annotation (Line(
      points={{77.5714,60},{66,60},{66,72},{-248,72},{-248,60},{-218.429,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));

  connect(heatPump_with_load_input8.T_in, heatPump_with_load_input.T_in)
    annotation (Line(
      points={{117.571,60},{104,60},{104,72},{-248,72},{-248,60},{-218.429,60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(userSide_RefRack.port_b, res19.port_a) annotation (Line(
      points={{192,19.8},{172,19.8},{172,20}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(res19.port_b, heatPump_with_load_input5.port_b) annotation (Line(
      points={{152,20},{140,20},{140,30},{10,30},{10,0},{2.14286,0},{2.14286,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(RefLoad.y, userSide_RefRack.Q) annotation (Line(
      points={{259,50},{240,50},{240,32},{180,32},{180,23.2},{190.4,23.2}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(userSide_RefRack.On, heatPump_with_load_input8.On) annotation (Line(
      points={{225.6,23.2},{234,23.2},{234,36},{180,36},{180,50},{160,50},{160,
          58},{136.271,58}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(userSide_RefRack.port_a, heatPump_with_load_input8.port_a)
    annotation (Line(
      points={{192,2.8},{140,2.8},{140,-32},{123.857,-32},{123.857,42}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(Load_HP1.y[1], heatPump_with_load_input.Q) annotation (Line(
      points={{-239,110},{-232,110},{-232,56},{-218.429,56}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(Load_HP2.y[1], heatPump_with_load_input1.Q) annotation (Line(
      points={{-199,110},{-190,110},{-190,56},{-178.429,56}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(Load_HP3.y[1], heatPump_with_load_input2.Q) annotation (Line(
      points={{-159,110},{-150,110},{-150,56},{-138.429,56}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(Load_HP4.y[1], heatPump_with_load_input3.Q) annotation (Line(
      points={{-101,110},{-96,110},{-96,56},{-90.4286,56}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(Load_HP5.y[1], heatPump_with_load_input4.Q) annotation (Line(
      points={{-59,110},{-56,110},{-56,56},{-50.4286,56}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(Load_HP6.y[1], heatPump_with_load_input5.Q) annotation (Line(
      points={{-19,110},{-16,110},{-16,56},{-10.4286,56}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(Load_HP7.y[1], heatPump_with_load_input6.Q) annotation (Line(
      points={{29,110},{34,110},{34,56},{37.5714,56}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(Load_HP8.y[1], heatPump_with_load_input7.Q) annotation (Line(
      points={{65,110},{72,110},{72,56},{77.5714,56}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(Load_HP9.y[1], heatPump_with_load_input8.Q) annotation (Line(
      points={{101,110},{108,110},{108,56},{117.571,56}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-320,-140},{
            320,160}}),                                                                  graphics),
    experiment(StopTime=1e+006),
    __Dymola_experimentSetupOutput);
end Water_loop_withResistance_onepump;
