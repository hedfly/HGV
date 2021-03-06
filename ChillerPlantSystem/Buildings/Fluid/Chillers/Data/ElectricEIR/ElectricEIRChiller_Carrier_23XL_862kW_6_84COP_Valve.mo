within ChillerPlantSystem.Buildings.Fluid.Chillers.Data.ElectricEIR;
record ElectricEIRChiller_Carrier_23XL_862kW_6_84COP_Valve =
  Buildings.Fluid.Chillers.Data.ElectricEIR.Generic (
    QEva_flow_nominal=-861500,
    COP_nominal=6.84,
    PLRMin=0.30,
    PLRMinUnl=0.30,
    PLRMax=1.04,
    mEva_flow_nominal=1000*0.06782,
    mCon_flow_nominal=1000*0.04296,
    TEvaLvg_nominal=273.15 + 9.69,
    TConEnt_nominal=273.15 + 23.89,
    TEvaLvgMin=273.15 + 5.56,
    TEvaLvgMax=273.15 + 10.00,
    TConEntMin=273.15 + 12.78,
    TConEntMax=273.15 + 23.89,
    capFunT={-4.535842E-02,-6.253871E-02,-3.623064E-03,1.218299E-01,-3.793440E-03,
        5.404739E-03},
    EIRFunT={5.930611E-01,-2.082914E-02,1.600282E-03,2.352564E-02,5.992247E-04,
        -1.907335E-03},
    EIRFunPLR={1.145826E-01,7.340475E-01,1.507744E-01},
    etaMotor=1.0) "ElectricEIRChiller Carrier 23XL 862kW/6.84COP/Valve"
                                                        annotation (
    Documentation(info =     "<html>
Performance data for chiller model.
This data corresponds to the following EnergyPlus model:
<pre>
Chiller:Electric:EIR,
    ElectricEIRChiller Carrier 23XL 862kW/6.84COP/Valve,  !- Name
    861500,                  !- Reference Capacity {W}
    6.84,                    !- Reference COP {W/W}
    9.69,                    !- Reference Leaving Chilled Water Temperature {C}
    23.89,                   !- Reference Entering Condenser Fluid Temperature {C}
    0.06782,                 !- Reference Chilled Water Flow Rate {m3/s}
    0.04296,                 !- Reference Condenser Water Flow Rate {m3/s}
    ElectricEIRChiller Carrier 23XL 862kW/6.84COP/Valve CAPFT,  !- Cooling Capacity Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 862kW/6.84COP/Valve EIRFT,  !- Electric Input to Cooling Output Ratio Function of Temperature Curve Name
    ElectricEIRChiller Carrier 23XL 862kW/6.84COP/Valve EIRFPLR,  !- Electric Input to Cooling Output Ratio Function of Part Load Ratio Curve Name
    0.30,                    !- Minimum Part Load Ratio
    1.04,                    !- Maximum Part Load Ratio
    1.0,                     !- Optimum Part Load Ratio
    0.30,                    !- Minimum Unloading Ratio
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
