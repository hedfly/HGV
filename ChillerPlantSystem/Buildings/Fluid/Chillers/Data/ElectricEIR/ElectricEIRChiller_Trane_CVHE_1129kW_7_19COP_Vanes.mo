within ChillerPlantSystem.Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Trane_CVHE_1129kW_7_19COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal=-1128800,
    COP_nominal=7.19,
    PLRMin=0.15,
    PLRMinUnl=0.15,
    PLRMax=1.06,
    mEva_flow_nominal=1000*0.02776,
    mCon_flow_nominal=1000*0.05142,
    TEvaLvg_nominal=273.15 + 5.56,
    TConEnt_nominal=273.15 + 23.89,
    TEvaLvgMin=273.15 + 5.56,
    TEvaLvgMax=273.15 + 10.00,
    TConEntMin=273.15 + 15.56,
    TConEntMax=273.15 + 23.89,
    capFunT={3.922479E-01,-4.388411E-02,-2.748665E-03,6.894954E-02,-2.563738E-03,
        5.420187E-03},
    EIRFunT={3.742142E-01,-5.536709E-02,-8.199663E-04,4.655032E-02,-7.312591E-04,
        1.887184E-03},
    EIRFunPLR={1.693841E-01,2.475201E-01,5.836059E-01},
    etaMotor=1.0) "ElectricEIRChiller Trane CVHE 1129kW/7.19COP/Vanes"
                                                       annotation (
    Documentation(info =     "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Trane CVHE 1129kW/7.19COP/Vanes,  !- Name
    1128800,                 !- Reference Capacity {W}
    7.19,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.02776,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.05142,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Trane CVHE 1129kW/7.19COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1129kW/7.19COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Trane CVHE 1129kW/7.19COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.15,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.15,                    !- Minimum Unloading Ratio
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
