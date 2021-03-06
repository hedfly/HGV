within ChillerPlantSystem.Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_McQuay_WSC_471kW_5_89COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal=-471200,
    COP_nominal=5.89,
    PLRMin=0.10,
    PLRMinUnl=0.10,
    PLRMax=1.15,
    mEva_flow_nominal=1000*0.01035,
    mCon_flow_nominal=1000*0.01924,
    TEvaLvg_nominal=273.15 + 8.89,
    TConEnt_nominal=273.15 + 26.67,
    TEvaLvgMin=273.15 + 7.22,
    TEvaLvgMax=273.15 + 12.78,
    TConEntMin=273.15 + 12.78,
    TConEntMax=273.15 + 26.67,
    capFunT={2.521130E-01,1.324053E-02,-8.637329E-03,8.581056E-02,-4.261176E-03,
        8.661899E-03},
    EIRFunT={4.475238E-01,-2.588210E-02,-1.459053E-03,4.342595E-02,-1.000651E-03,
        1.920106E-03},
    EIRFunPLR={2.778889E-01,2.338363E-01,4.883748E-01},
    etaMotor=1.0) "ElectricEIRChiller McQuay WSC 471kW/5.89COP/Vanes"
                                                      annotation (
    Documentation(info =     "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller McQuay WSC 471kW/5.89COP/Vanes,  !- Name
    471200,                  !- Reference Capacity {W}
    5.89,                    !- Reference COP {W/W}
    8.89,                    !- Reference Leaving Chilled Water Temperature {C}
    26.67,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.01035,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.01924,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller McQuay WSC 471kW/5.89COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller McQuay WSC 471kW/5.89COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller McQuay WSC 471kW/5.89COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.15,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.10,                    !- Minimum Unloading Ratio
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
