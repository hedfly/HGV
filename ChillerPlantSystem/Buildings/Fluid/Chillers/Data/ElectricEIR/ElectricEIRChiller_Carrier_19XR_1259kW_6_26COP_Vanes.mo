within ChillerPlantSystem.Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_19XR_1259kW_6_26COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal=-1258900,
    COP_nominal=6.26,
    PLRMin=0.18,
    PLRMinUnl=0.18,
    PLRMax=1.03,
    mEva_flow_nominal=1000*0.02593,
    mCon_flow_nominal=1000*0.03823,
    TEvaLvg_nominal=273.15 + 8.89,
    TConEnt_nominal=273.15 + 26.67,
    TEvaLvgMin=273.15 + 7.22,
    TEvaLvgMax=273.15 + 12.78,
    TConEntMin=273.15 + 12.78,
    TConEntMax=273.15 + 26.67,
    capFunT={1.082071E+00,3.200888E-02,-3.994780E-03,-5.789604E-03,-8.238938E-04,
        2.933539E-03},
    EIRFunT={7.582035E-01,6.896017E-03,-1.491911E-03,2.249459E-03,3.908697E-04,
        -1.735265E-04},
    EIRFunPLR={2.226232E-01,5.199282E-01,2.578470E-01},
    etaMotor=1.0) "ElectricEIRChiller Carrier 19XR 1259kW/6.26COP/Vanes"
                                                         annotation (
    Documentation(info =     "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 19XR 1259kW/6.26COP/Vanes,  !- Name
    1258900,                 !- Reference Capacity {W}
    6.26,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02593,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.03823,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 19XR 1259kW/6.26COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1259kW/6.26COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 19XR 1259kW/6.26COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.18,                    !- Minimum Part Load Ratio
    1.03,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.18,                    !- Minimum Unloading Ratio
    Chilled Water Side Inlet Node,  !- Chilled Water Inlet Node Name
    Chilled Water Side Outlet Node,  !- Chilled Water Outlet Node Name
    Condenser Side Inlet Node,  !- Condenser Inlet Node Name
    Condenser Side Outlet Node,  !- Condenser Outlet Node Name
    WaterCooled,             !- Condenser Type
    ,                        !- Condenser Fan Power Ratio {W/W}
    1.0,                     !- Compressor Motor Efficiency
    2.0,                     !- Leaving Chilled Water Lower Temperature Limit {C}
    ConstantFlow,            !- Chiller Flow Mode
    0.0;                     !- Design Heat Recovery Water Flow Rate {m3/s}
</pre>
</html>"));
