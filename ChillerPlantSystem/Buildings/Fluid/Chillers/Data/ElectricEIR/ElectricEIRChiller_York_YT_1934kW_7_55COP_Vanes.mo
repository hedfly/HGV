within ChillerPlantSystem.Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_York_YT_1934kW_7_55COP_Vanes =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal=-1934100,
    COP_nominal=7.55,
    PLRMin=0.10,
    PLRMinUnl=0.10,
    PLRMax=1.06,
    mEva_flow_nominal=1000*0.05552,
    mCon_flow_nominal=1000*0.08675,
    TEvaLvg_nominal=273.15 + 5.56,
    TConEnt_nominal=273.15 + 13.89,
    TEvaLvgMin=273.15 + 5.56,
    TEvaLvgMax=273.15 + 8.89,
    TConEntMin=273.15 + 12.78,
    TConEntMax=273.15 + 29.44,
    capFunT={4.420318E-02,1.103599E-01,-2.597752E-03,7.043754E-02,-2.138316E-03,
        -4.696924E-04},
    EIRFunT={1.173674E+00,-1.301647E-01,5.588446E-03,8.605153E-03,7.234201E-05,
        1.314581E-03},
    EIRFunPLR={1.706237E-01,6.063362E-01,2.170672E-01},
    etaMotor=1.0) "ElectricEIRChiller York YT 1934kW/7.55COP/Vanes"
                                                    annotation (Documentation(
      info =                 "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller York YT 1934kW/7.55COP/Vanes,  !- Name
    1934100,                 !- Reference Capacity {W}
    7.55,                    !- Reference COP {W/W}
    5.56,                    !- Reference Leaving Chilled Water Temperature {C}
    13.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.05552,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.08675,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller York YT 1934kW/7.55COP/Vanes CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller York YT 1934kW/7.55COP/Vanes EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller York YT 1934kW/7.55COP/Vanes EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.10,                    !- Minimum Part Load Ratio
    1.06,                    !- Maximum Part Load Ratio
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
