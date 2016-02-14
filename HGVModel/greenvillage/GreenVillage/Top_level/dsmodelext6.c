#include <moutil.c>
PreNonAliasDef(7)
StartNonAlias(6)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].Q1_flow", 1,\
 5, 16832, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.port_a_Cold_Water.h_outflow", 1,\
 5, 18228, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].port_a2.m_flow", 1,\
 5, 16743, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 17415, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 17416, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.m_flow", 1,\
 5, 17412, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 17415, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 17416, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 17416, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 17415, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 17416, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.T", 1,\
 5, 28232, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 17416, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X[2]", 1,\
 5, 28233, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 17416, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 612, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 613, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.Q_flow.y", 1,\
 5, 16829, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.mWat_flow", 1,\
 5, 16824, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 17415, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 17416, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.heatPump.port_a2.m_flow", 1, 5, 15815, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 16909, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.heatPump.port_a2.m_flow", -1, 5, 15815, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 16909, 1028)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 16909, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 16909, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.T", 1,\
 5, 28276, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 614, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].Q1_flow", 1,\
 5, 17000, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 16909, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.m_flow", 1,\
 5, 16910, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 16911, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 16754, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].port_a2.m_flow", -1,\
 5, 16743, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 16911, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 16754, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 16754, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 16911, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 16754, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.T", 1,\
 5, 28314, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 16754, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X[2]", 1,\
 5, 28315, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 16754, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 615, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 616, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.Q_flow.y", 1,\
 5, 16997, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.mWat_flow", 1,\
 5, 16992, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 16911, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 16754, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.heatPump.port_a2.m_flow", 1, 5, 15815, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 17077, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.heatPump.port_a2.m_flow", -1, 5, 15815, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 17077, 1028)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 17077, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 17077, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.T", 1,\
 5, 28358, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 617, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].Q1_flow", 1,\
 5, 17167, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 17077, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.m_flow", 1,\
 5, 17078, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 17079, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 16922, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.m_flow", -1,\
 5, 16910, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 17079, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 16922, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 16922, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 17079, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 16922, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.T", 1,\
 5, 28396, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 16922, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X[2]", 1,\
 5, 28397, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 16922, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 618, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 619, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.Q_flow.y", 1,\
 5, 17164, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.mWat_flow", 1,\
 5, 17159, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 17079, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 16922, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.heatPump.port_a2.m_flow", 1, 5, 15815, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.port_b_Cold_Water.h_outflow", 1, 5, 18227, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.heatPump.port_a2.m_flow", -1, 5, 15815, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.port_b_Cold_Water.h_outflow", 1, 5, 18227, 1028)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input6.air_side.port_b_Cold_Water.h_outflow", 1,\
 5, 18227, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input6.air_side.port_b_Cold_Water.h_outflow", 1,\
 5, 18227, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.fan.port_b.p", 1,\
 5, 16367, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.T", 1,\
 5, 28440, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 620, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].Q1_flow", 1,\
 5, 17331, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.port_b_Cold_Water.h_outflow", 1,\
 5, 18227, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.m_flow", 1,\
 5, 17408, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 17410, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 17411, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.m_flow", -1,\
 5, 17078, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 17410, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 17411, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 17411, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 17410, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 17411, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.T", 1,\
 5, 28478, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 17411, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X[2]", 1,\
 5, 28479, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 17411, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 621, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 622, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.Q_flow.y", 1,\
 5, 17328, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.mWat_flow", 1,\
 5, 17323, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 17410, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 17411, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.m_flow", -1,\
 5, 17412, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.port_b.h_outflow", 1, 5, 17905, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 17906,\
 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.port_b.m_flow", 1, 5, 17903, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.port_b.h_outflow", 1, 5, 17905, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 17906,\
 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input6.air_side.Air_side.port_b.Xi_outflow[1]", 1,\
 5, 17906, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input6.air_side.Air_side.port_b.h_outflow", 1,\
 5, 17905, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 17906,\
 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 17413, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.T", 1,\
 5, 28525, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 17906,\
 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X[2]", 1,\
 5, 28526, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input6.air_side.Air_side.port_b.Xi_outflow[1]", 1,\
 5, 17906, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.U",\
 "Internal energy of fluid [J]", 623, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.m",\
 "Mass of fluid [kg]", 624, 0.0, 0.0,1E+100,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 625, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", "heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(m)", 1,\
 6, 624, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", "heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(mXi[1])", 1,\
 6, 625, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", "heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(U)", 1,\
 6, 623, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.Air_side.port_b.h_outflow", 1,\
 5, 17905, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input6.air_side.Air_side.port_b.Xi_outflow[1]", 1,\
 5, 17906, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.Supply_Fan.fan.vol.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.I.k",\
 "Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.I.initType",\
 "Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.I.y_start",\
 "Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.I.u",\
 "Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.I.y",\
 "Connector of Real output signal", 626, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.I.der(y)",\
 "der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addI.k1",\
 "Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addI.k2",\
 "Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addI.k3",\
 "Gain of lower input", 7669, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addI.u1",\
 "Connector 1 of Real input signals [Pa]", "heatPump_with_load_input6.air_side.const4.k", 1,\
 7, 5267, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addI.u2",\
 "Connector 2 of Real input signals [Pa]", "heatPump_with_load_input6.air_side.Air_side.Pre_Mea", 1,\
 5, 17943, 0)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addI.u3",\
 "Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addI.y",\
 "Connector of Real output signals", "heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.I.u", 1,\
 5, 28559, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addSat.u1",\
 "Connector of Real input signal 1 [1]", "heatPump_with_load_input6.air_side.Air_side.Supply_Fan.y", 1,\
 5, 17686, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addSat.u2",\
 "Connector of Real input signal 2 [1]", "heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.gainPID.y", 1,\
 5, 17935, 0)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addSat.y",\
 "Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addSat.k1",\
 "Gain of upper input", 7670, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addSat.k2",\
 "Gain of lower input", 7671, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.gainTrack.k",\
 "Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.gainTrack.u",\
 "Input signal connector", "heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addSat.y", 1,\
 5, 28563, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.gainTrack.y",\
 "Output signal connector", "heatPump_with_load_input6.air_side.Air_side.pressure_based_SF_control.conPID.addI.u3", 1,\
 5, 28562, 0)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.I.k", \
"Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.I.initType",\
 "Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.I.y_start",\
 "Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.I.u", \
"Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.I.y", \
"Connector of Real output signal", 627, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.I.der(y)",\
 "der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addI.k1",\
 "Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addI.k2",\
 "Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addI.k3",\
 "Gain of lower input", 7672, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addI.u1",\
 "Connector 1 of Real input signals [K]", "heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.u_s", 1,\
 5, 17946, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addI.u2",\
 "Connector 2 of Real input signals [K]", "heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.u_m", 1,\
 5, 17947, 0)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addI.u3",\
 "Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addI.y",\
 "Connector of Real output signals", "heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.I.u", 1,\
 5, 28568, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addSat.u1",\
 "Connector of Real input signal 1", "heatPump_with_load_input6.air_side.Air_side.cooling_Coil.yVal", 1,\
 5, 17460, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addSat.u2",\
 "Connector of Real input signal 2", "heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.gainPID.y", 1,\
 5, 17962, 0)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addSat.y",\
 "Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addSat.k1",\
 "Gain of upper input", 7673, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addSat.k2",\
 "Gain of lower input", 7674, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.gainTrack.k",\
 "Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.gainTrack.u",\
 "Input signal connector", "heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addSat.y", 1,\
 5, 28572, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.gainTrack.y",\
 "Output signal connector", "heatPump_with_load_input6.air_side.Air_side.hP_PI.conPID.addI.u3", 1,\
 5, 28571, 0)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.T_start", \
"Start value of temperature [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.X_start[2]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 3, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.port_a.m_flow", -1, 5, 17907, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.val.port_b.p", 1,\
 5, 17974, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.val.port_a.h_outflow", 1, 5, 17972, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.val.port_a.Xi_outflow[1]", 1, 5, 17973, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.Air_side.port_b.m_flow", -1, 5, 17903, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.val.port_b.p", 1,\
 5, 17974, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.val.port_a.h_outflow", 1, 5, 17972, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.val.port_a.Xi_outflow[1]", 1, 5, 17973, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[3].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input6.air_side.rooVol.ports[3].m_flow", 1, 5, 18030, 1156)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[3].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input6.air_side.val.port_b.p", 1,\
 5, 17974, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[3].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input6.air_side.val.port_a.h_outflow", 1, 5, 17972, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.ports[3].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input6.air_side.val.port_a.Xi_outflow[1]", 1, 5, 17973, 1028)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.val.port_b.p", 1,\
 5, 17974, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.Xi[1]", \
"Structurally independent mass fractions [1]", "heatPump_with_load_input6.air_side.val.port_a.Xi_outflow[1]", 1,\
 5, 17973, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input6.air_side.val.port_a.h_outflow", 1,\
 5, 17972, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", "heatPump_with_load_input6.air_side.rooVol.dynBal.m", 1,\
 1, 629, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.X[1]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.val.port_a.Xi_outflow[1]", 1, 5, 17973, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.X[2]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input6.air_side.val.port_b.p", 1,\
 5, 17974, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input6.air_side.rooVol.dynBal.medium.T", 1,\
 5, 28585, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.val.port_a.Xi_outflow[1]", 1, 5, 17973, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input6.air_side.rooVol.dynBal.medium.X[2]", 1, 5, 28586, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input6.air_side.val.port_a.Xi_outflow[1]", 1,\
 5, 17973, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.medium.dT", \
"Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.rooVol.dynBal.U", \
"Internal energy of fluid [J]", 628, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.rooVol.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.rooVol.dynBal.m", \
"Mass of fluid [kg]", 629, 0.0, 0.0,100000.0,1.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.rooVol.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input6.air_side.rooVol.dynBal.mXi[1]", \
"Masses of independent components in the fluid [kg]", 630, 0.0, 0.0,1E+100,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input6.air_side.rooVol.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", "heatPump_with_load_input6.air_side.rooVol.dynBal.der(m)", 1,\
 6, 629, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.mbXi_flow[1]", \
"Substance mass flows across boundaries [kg/s]", "heatPump_with_load_input6.air_side.rooVol.dynBal.der(mXi[1])", 1,\
 6, 630, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.fluidVolume", \
"Volume [m3]", 1.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input6.QSou.port.Q_flow", -1, 5, 16358, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input6.air_side.val.port_a.h_outflow", 1,\
 5, 17972, 1024)
DeclareAlias2("heatPump_with_load_input6.air_side.rooVol.dynBal.XiOut[1]", \
"Leaving species concentration of the component [1]", "heatPump_with_load_input6.air_side.val.port_a.Xi_outflow[1]", 1,\
 5, 17973, 1024)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.ports_H_flow[3]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.ports_mXi_flow[3, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.cp_default", \
"Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.computeCSen", \
"[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.s[1]", \
"Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.rooVol.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input6.air_side.conPID.I.k", \
"Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input6.air_side.conPID.I.initType", \
"Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input6.air_side.conPID.I.y_start", \
"Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input6.air_side.conPID.I.u", \
"Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input6.air_side.conPID.I.y", "Connector of Real output signal",\
 631, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input6.air_side.conPID.I.der(y)", \
"der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input6.air_side.conPID.addI.k1", \
"Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input6.air_side.conPID.addI.k2", \
"Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input6.air_side.conPID.addI.k3", \
"Gain of lower input", 7675, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input6.air_side.conPID.addI.u1", \
"Connector 1 of Real input signals [K]", "heatPump_with_load_input6.air_side.const5.k", 1,\
 7, 5310, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.conPID.addI.u2", \
"Connector 2 of Real input signals [K]", "heatPump_with_load_input6.air_side.TSen.T", 1,\
 1, 340, 0)
DeclareVariable("heatPump_with_load_input6.air_side.conPID.addI.u3", \
"Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input6.air_side.conPID.addI.y", \
"Connector of Real output signals", "heatPump_with_load_input6.air_side.conPID.I.u", 1,\
 5, 28621, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.conPID.addSat.u1", \
"Connector of Real input signal 1", "heatPump_with_load_input6.air_side.val.y", 1,\
 5, 17994, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.conPID.addSat.u2", \
"Connector of Real input signal 2", "heatPump_with_load_input6.air_side.conPID.gainPID.y", 1,\
 5, 18198, 0)
DeclareVariable("heatPump_with_load_input6.air_side.conPID.addSat.y", \
"Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input6.air_side.conPID.addSat.k1", \
"Gain of upper input", 7676, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input6.air_side.conPID.addSat.k2", \
"Gain of lower input", 7677, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input6.air_side.conPID.gainTrack.k", \
"Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input6.air_side.conPID.gainTrack.u", \
"Input signal connector", "heatPump_with_load_input6.air_side.conPID.addSat.y", 1,\
 5, 28625, 0)
DeclareAlias2("heatPump_with_load_input6.air_side.conPID.gainTrack.y", \
"Output signal connector", "heatPump_with_load_input6.air_side.conPID.addI.u3", 1,\
 5, 28624, 0)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.chi.port_a1.m_flow", 1, 5, 18261, 1156)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.heatPump.chi.port_a1.p", 1,\
 5, 18262, 1028)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.heatPump.chi.port_a1.h_outflow", 1, 5, 18263, 1028)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.chi.port_a1.m_flow", -1, 5, 18261, 1156)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.heatPump.chi.port_a1.p", 1,\
 5, 18262, 1028)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.heatPump.chi.port_a1.h_outflow", 1, 5, 18263, 1028)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.heatPump.chi.port_a1.p", 1,\
 5, 18262, 1024)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.heatPump.chi.port_a1.h_outflow", 1,\
 5, 18263, 1024)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", "heatPump_with_load_input7.heatPump.chi.port_a1.h_outflow", 1,\
 5, 18263, 1024)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.heatPump.chi.port_a1.p", 1,\
 5, 18262, 1024)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.T", 1,\
 5, 28637, 1024)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.U", \
"Internal energy of fluid [J]", 632, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.020408163265307, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007051533632720134, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.heatPump.chi.Q1_flow", 1, 5, 18342, 1024)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.heatPump.chi.port_a1.h_outflow", 1,\
 5, 18263, 1024)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.chi.port_a2.m_flow", 1, 5, 18264, 1156)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.heatPump.chi.port_a2.p", 1,\
 5, 18265, 1028)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.heatPump.chi.port_a2.h_outflow", 1, 5, 18266, 1028)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.chi.port_a2.m_flow", -1, 5, 18264, 1156)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.heatPump.chi.port_a2.p", 1,\
 5, 18265, 1028)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.heatPump.chi.port_a2.h_outflow", 1, 5, 18266, 1028)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.heatPump.chi.port_a2.p", 1,\
 5, 18265, 1024)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.heatPump.chi.port_a2.h_outflow", 1,\
 5, 18266, 1024)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", "heatPump_with_load_input7.heatPump.chi.port_a2.h_outflow", 1,\
 5, 18266, 1024)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.heatPump.chi.port_a2.p", 1,\
 5, 18265, 1024)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.T", 1,\
 5, 28672, 1024)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.U", \
"Internal energy of fluid [J]", 633, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.m", \
"Mass of fluid [kg]", 5.2653061224489806, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.005288650224540101, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.heatPump.chi.Q2_flow", 1, 5, 18343, 1024)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.heatPump.chi.port_a2.h_outflow", 1,\
 5, 18266, 1024)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.chi.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.heatPump.hP_PI.conPID.I.k", \
"Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.heatPump.hP_PI.conPID.I.initType", \
"Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input7.heatPump.hP_PI.conPID.I.y_start", \
"Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.heatPump.hP_PI.conPID.I.u", \
"Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input7.heatPump.hP_PI.conPID.I.y", \
"Connector of Real output signal", 634, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input7.heatPump.hP_PI.conPID.I.der(y)", \
"der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input7.heatPump.hP_PI.conPID.addI.k1", \
"Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.heatPump.hP_PI.conPID.addI.k2", \
"Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input7.heatPump.hP_PI.conPID.addI.k3", \
"Gain of lower input", 7678, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input7.heatPump.hP_PI.conPID.addI.u1", \
"Connector 1 of Real input signals [K]", "heatPump_with_load_input7.heatPump.hP_PI.conPID.u_s", 1,\
 5, 18841, 0)
DeclareAlias2("heatPump_with_load_input7.heatPump.hP_PI.conPID.addI.u2", \
"Connector 2 of Real input signals [K]", "heatPump_with_load_input7.heatPump.hP_PI.conPID.u_m", 1,\
 5, 18842, 0)
DeclareVariable("heatPump_with_load_input7.heatPump.hP_PI.conPID.addI.u3", \
"Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input7.heatPump.hP_PI.conPID.addI.y", \
"Connector of Real output signals", "heatPump_with_load_input7.heatPump.hP_PI.conPID.I.u", 1,\
 5, 28700, 0)
DeclareAlias2("heatPump_with_load_input7.heatPump.hP_PI.conPID.addSat.u1", \
"Connector of Real input signal 1", "heatPump_with_load_input7.heatPump.hP_PI.y1", 1,\
 5, 18865, 0)
DeclareAlias2("heatPump_with_load_input7.heatPump.hP_PI.conPID.addSat.u2", \
"Connector of Real input signal 2", "heatPump_with_load_input7.heatPump.hP_PI.conPID.gainPID.y", 1,\
 5, 18857, 0)
DeclareVariable("heatPump_with_load_input7.heatPump.hP_PI.conPID.addSat.y", \
"Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input7.heatPump.hP_PI.conPID.addSat.k1", \
"Gain of upper input", 7679, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input7.heatPump.hP_PI.conPID.addSat.k2", \
"Gain of lower input", 7680, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input7.heatPump.hP_PI.conPID.gainTrack.k", \
"Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input7.heatPump.hP_PI.conPID.gainTrack.u", \
"Input signal connector", "heatPump_with_load_input7.heatPump.hP_PI.conPID.addSat.y", 1,\
 5, 28704, 0)
DeclareAlias2("heatPump_with_load_input7.heatPump.hP_PI.conPID.gainTrack.y", \
"Output signal connector", "heatPump_with_load_input7.heatPump.hP_PI.conPID.addI.u3", 1,\
 5, 28703, 0)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.massDynamics", \
"Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.substanceDynamics", \
"Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.traceDynamics", \
"Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.T_start", \
"Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", 1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.heatPump.port_b2.p", 1,\
 5, 18417, 1028)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.fan.port_a.h_outflow", 1, 5, 18965, 1028)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", -1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.heatPump.port_b2.p", 1,\
 5, 18417, 1028)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.fan.port_a.h_outflow", 1, 5, 18965, 1028)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.medium.T", \
"Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.heatPump.port_b2.p", 1,\
 5, 18417, 1024)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.fan.port_a.h_outflow", 1,\
 5, 18965, 1024)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", "heatPump_with_load_input7.fan.port_a.h_outflow", 1,\
 5, 18965, 1024)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.medium.X[1]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.heatPump.port_b2.p", 1,\
 5, 18417, 1024)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "heatPump_with_load_input7.fan.vol.dynBal.medium.T", 1,\
 5, 28716, 1024)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.fan.vol.dynBal.U", "Internal energy of fluid [J]",\
 635, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.fan.vol.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.m", "Mass of fluid [kg]",\
 0.17551020408163268, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.fluidVolume", \
"Volume [m3]", 0.00017628834081800335, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.fan.vol.heatPort.Q_flow", 1, 5, 18987, 1024)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.fan.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "heatPump_with_load_input7.fan.port_a.h_outflow", 1, 5, 18965, 1024)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.ports_H_flow[1]", \
"[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.ports_H_flow[2]", \
"[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.cp_default", \
"Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.computeCSen", \
"[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan.vol.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.fan.preSou.dp_in", "Prescribed outlet pressure [Pa]",\
 "heatPump_with_load_input7.fan.dp_actual", -1, 5, 19050, 1024)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.massDynamics", \
"Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.substanceDynamics", \
"Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.traceDynamics", \
"Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.T_start", \
"Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.port_a.m_flow", 1, 5, 18953, 1156)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.port_a.p", 1,\
 5, 18954, 1028)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.port_a.h_outflow", 1, 5, 18955, 1028)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.port_a.m_flow", -1, 5, 18953, 1156)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.port_a.p", 1,\
 5, 18954, 1028)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.port_a.h_outflow", 1, 5, 18955, 1028)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.medium.T", \
"Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.port_a.p", 1,\
 5, 18954, 1024)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.port_a.h_outflow", 1,\
 5, 18955, 1024)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", "heatPump_with_load_input7.port_a.h_outflow", 1,\
 5, 18955, 1024)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.medium.X[1]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.port_a.p", 1,\
 5, 18954, 1024)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "heatPump_with_load_input7.fan1.vol.dynBal.medium.T", 1,\
 5, 28751, 1024)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.fan1.vol.dynBal.U", "Internal energy of fluid [J]",\
 636, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.fan1.vol.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.m", "Mass of fluid [kg]",\
 0.2340136054421769, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.fluidVolume", \
"Volume [m3]", 0.0002350511210906711, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.fan1.vol.heatPort.Q_flow", 1, 5, 19097, 1024)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.fan1.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "heatPump_with_load_input7.port_a.h_outflow", 1, 5, 18955, 1024)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.ports_H_flow[1]", \
"[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.ports_H_flow[2]", \
"[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.cp_default", \
"Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.computeCSen", \
"[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.fan1.vol.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.fan1.preSou.dp_in", "Prescribed outlet pressure [Pa]",\
 "heatPump_with_load_input7.fan1.dp_actual", -1, 5, 19159, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", 1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.port_a_Cold_Water.h_outflow", 1, 5, 20827, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", -1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.port_a_Cold_Water.h_outflow", 1, 5, 20827, 1028)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.port_a_Cold_Water.h_outflow", 1,\
 5, 20827, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input7.air_side.port_a_Cold_Water.h_outflow", 1,\
 5, 20827, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.T", 1,\
 5, 28786, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 637, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].Q1_flow", 1,\
 5, 19431, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.port_a_Cold_Water.h_outflow", 1,\
 5, 20827, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].port_a2.m_flow", 1,\
 5, 19342, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 20014, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 20015, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.m_flow", 1,\
 5, 20011, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 20014, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 20015, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 20015, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 20014, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 20015, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.T", 1,\
 5, 28824, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 20015, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X[2]", 1,\
 5, 28825, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 20015, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 638, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 639, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.Q_flow.y", 1,\
 5, 19428, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.mWat_flow", 1,\
 5, 19423, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 20014, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 20015, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", 1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 19508, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", -1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 19508, 1028)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 19508, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 19508, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.T", 1,\
 5, 28868, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 640, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].Q1_flow", 1,\
 5, 19599, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 19508, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.m_flow", 1,\
 5, 19509, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 19510, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 19353, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].port_a2.m_flow", -1,\
 5, 19342, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 19510, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 19353, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 19353, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 19510, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 19353, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.T", 1,\
 5, 28906, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 19353, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X[2]", 1,\
 5, 28907, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 19353, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 641, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 642, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.Q_flow.y", 1,\
 5, 19596, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.mWat_flow", 1,\
 5, 19591, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 19510, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 19353, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", 1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 19676, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", -1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 19676, 1028)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 19676, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 19676, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.T", 1,\
 5, 28950, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 643, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].Q1_flow", 1,\
 5, 19766, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 19676, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.m_flow", 1,\
 5, 19677, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 19678, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 19521, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.m_flow", -1,\
 5, 19509, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 19678, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 19521, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 19521, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 19678, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 19521, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.T", 1,\
 5, 28988, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 19521, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X[2]", 1,\
 5, 28989, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 19521, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 644, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 645, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.Q_flow.y", 1,\
 5, 19763, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.mWat_flow", 1,\
 5, 19758, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 19678, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 19521, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", 1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.port_b_Cold_Water.h_outflow", 1, 5, 20826, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.heatPump.port_a2.m_flow", -1, 5, 18414, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.port_b_Cold_Water.h_outflow", 1, 5, 20826, 1028)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.port_b_Cold_Water.h_outflow", 1,\
 5, 20826, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input7.air_side.port_b_Cold_Water.h_outflow", 1,\
 5, 20826, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.fan.port_b.p", 1,\
 5, 18966, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.T", 1,\
 5, 29032, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 646, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].Q1_flow", 1,\
 5, 19930, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.port_b_Cold_Water.h_outflow", 1,\
 5, 20826, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.m_flow", 1,\
 5, 20007, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 20009, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 20010, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.m_flow", -1,\
 5, 19677, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 20009, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 20010, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 20010, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 20009, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 20010, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.T", 1,\
 5, 29070, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 20010, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X[2]", 1,\
 5, 29071, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 20010, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 647, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 648, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.Q_flow.y", 1,\
 5, 19927, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.mWat_flow", 1,\
 5, 19922, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 20009, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 20010, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.m_flow", -1,\
 5, 20011, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.port_b.h_outflow", 1, 5, 20504, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 20505,\
 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.port_b.m_flow", 1, 5, 20502, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.port_b.h_outflow", 1, 5, 20504, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 20505,\
 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input7.air_side.Air_side.port_b.Xi_outflow[1]", 1,\
 5, 20505, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.Air_side.port_b.h_outflow", 1,\
 5, 20504, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 20505,\
 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 20012, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.T", 1,\
 5, 29117, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 20505,\
 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X[2]", 1,\
 5, 29118, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input7.air_side.Air_side.port_b.Xi_outflow[1]", 1,\
 5, 20505, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.U",\
 "Internal energy of fluid [J]", 649, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.m",\
 "Mass of fluid [kg]", 650, 0.0, 0.0,1E+100,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 651, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", "heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(m)", 1,\
 6, 650, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", "heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(mXi[1])", 1,\
 6, 651, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", "heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(U)", 1,\
 6, 649, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.Air_side.port_b.h_outflow", 1,\
 5, 20504, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input7.air_side.Air_side.port_b.Xi_outflow[1]", 1,\
 5, 20505, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.Supply_Fan.fan.vol.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.I.k",\
 "Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.I.initType",\
 "Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.I.y_start",\
 "Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.I.u",\
 "Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.I.y",\
 "Connector of Real output signal", 652, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.I.der(y)",\
 "der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addI.k1",\
 "Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addI.k2",\
 "Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addI.k3",\
 "Gain of lower input", 7681, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addI.u1",\
 "Connector 1 of Real input signals [Pa]", "heatPump_with_load_input7.air_side.const4.k", 1,\
 7, 6025, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addI.u2",\
 "Connector 2 of Real input signals [Pa]", "heatPump_with_load_input7.air_side.Air_side.Pre_Mea", 1,\
 5, 20542, 0)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addI.u3",\
 "Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addI.y",\
 "Connector of Real output signals", "heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.I.u", 1,\
 5, 29151, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addSat.u1",\
 "Connector of Real input signal 1 [1]", "heatPump_with_load_input7.air_side.Air_side.Supply_Fan.y", 1,\
 5, 20285, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addSat.u2",\
 "Connector of Real input signal 2 [1]", "heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.gainPID.y", 1,\
 5, 20534, 0)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addSat.y",\
 "Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addSat.k1",\
 "Gain of upper input", 7682, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addSat.k2",\
 "Gain of lower input", 7683, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.gainTrack.k",\
 "Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.gainTrack.u",\
 "Input signal connector", "heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addSat.y", 1,\
 5, 29155, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.gainTrack.y",\
 "Output signal connector", "heatPump_with_load_input7.air_side.Air_side.pressure_based_SF_control.conPID.addI.u3", 1,\
 5, 29154, 0)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.I.k", \
"Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.I.initType",\
 "Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.I.y_start",\
 "Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.I.u", \
"Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.I.y", \
"Connector of Real output signal", 653, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.I.der(y)",\
 "der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addI.k1",\
 "Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addI.k2",\
 "Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addI.k3",\
 "Gain of lower input", 7684, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addI.u1",\
 "Connector 1 of Real input signals [K]", "heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.u_s", 1,\
 5, 20545, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addI.u2",\
 "Connector 2 of Real input signals [K]", "heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.u_m", 1,\
 5, 20546, 0)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addI.u3",\
 "Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addI.y",\
 "Connector of Real output signals", "heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.I.u", 1,\
 5, 29160, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addSat.u1",\
 "Connector of Real input signal 1", "heatPump_with_load_input7.air_side.Air_side.cooling_Coil.yVal", 1,\
 5, 20059, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addSat.u2",\
 "Connector of Real input signal 2", "heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.gainPID.y", 1,\
 5, 20561, 0)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addSat.y",\
 "Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addSat.k1",\
 "Gain of upper input", 7685, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addSat.k2",\
 "Gain of lower input", 7686, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.gainTrack.k",\
 "Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.gainTrack.u",\
 "Input signal connector", "heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addSat.y", 1,\
 5, 29164, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.gainTrack.y",\
 "Output signal connector", "heatPump_with_load_input7.air_side.Air_side.hP_PI.conPID.addI.u3", 1,\
 5, 29163, 0)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.T_start", \
"Start value of temperature [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.X_start[2]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 3, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.port_a.m_flow", -1, 5, 20506, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.val.port_b.p", 1,\
 5, 20573, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.val.port_a.h_outflow", 1, 5, 20571, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.val.port_a.Xi_outflow[1]", 1, 5, 20572, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.Air_side.port_b.m_flow", -1, 5, 20502, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.val.port_b.p", 1,\
 5, 20573, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.val.port_a.h_outflow", 1, 5, 20571, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.val.port_a.Xi_outflow[1]", 1, 5, 20572, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[3].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input7.air_side.rooVol.ports[3].m_flow", 1, 5, 20629, 1156)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[3].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input7.air_side.val.port_b.p", 1,\
 5, 20573, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[3].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input7.air_side.val.port_a.h_outflow", 1, 5, 20571, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.ports[3].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input7.air_side.val.port_a.Xi_outflow[1]", 1, 5, 20572, 1028)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.val.port_b.p", 1,\
 5, 20573, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.Xi[1]", \
"Structurally independent mass fractions [1]", "heatPump_with_load_input7.air_side.val.port_a.Xi_outflow[1]", 1,\
 5, 20572, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input7.air_side.val.port_a.h_outflow", 1,\
 5, 20571, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", "heatPump_with_load_input7.air_side.rooVol.dynBal.m", 1,\
 1, 655, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.X[1]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.val.port_a.Xi_outflow[1]", 1, 5, 20572, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.X[2]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input7.air_side.val.port_b.p", 1,\
 5, 20573, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input7.air_side.rooVol.dynBal.medium.T", 1,\
 5, 29177, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.val.port_a.Xi_outflow[1]", 1, 5, 20572, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input7.air_side.rooVol.dynBal.medium.X[2]", 1, 5, 29178, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input7.air_side.val.port_a.Xi_outflow[1]", 1,\
 5, 20572, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.medium.dT", \
"Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.rooVol.dynBal.U", \
"Internal energy of fluid [J]", 654, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.rooVol.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.rooVol.dynBal.m", \
"Mass of fluid [kg]", 655, 0.0, 0.0,100000.0,1.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.rooVol.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input7.air_side.rooVol.dynBal.mXi[1]", \
"Masses of independent components in the fluid [kg]", 656, 0.0, 0.0,1E+100,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input7.air_side.rooVol.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", "heatPump_with_load_input7.air_side.rooVol.dynBal.der(m)", 1,\
 6, 655, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.mbXi_flow[1]", \
"Substance mass flows across boundaries [kg/s]", "heatPump_with_load_input7.air_side.rooVol.dynBal.der(mXi[1])", 1,\
 6, 656, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.fluidVolume", \
"Volume [m3]", 1.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input7.QSou.port.Q_flow", -1, 5, 18957, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input7.air_side.val.port_a.h_outflow", 1,\
 5, 20571, 1024)
DeclareAlias2("heatPump_with_load_input7.air_side.rooVol.dynBal.XiOut[1]", \
"Leaving species concentration of the component [1]", "heatPump_with_load_input7.air_side.val.port_a.Xi_outflow[1]", 1,\
 5, 20572, 1024)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.ports_H_flow[3]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.ports_mXi_flow[3, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.cp_default", \
"Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.computeCSen", \
"[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.s[1]", \
"Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.rooVol.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input7.air_side.conPID.I.k", \
"Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.air_side.conPID.I.initType", \
"Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input7.air_side.conPID.I.y_start", \
"Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.air_side.conPID.I.u", \
"Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input7.air_side.conPID.I.y", "Connector of Real output signal",\
 657, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input7.air_side.conPID.I.der(y)", \
"der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input7.air_side.conPID.addI.k1", \
"Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input7.air_side.conPID.addI.k2", \
"Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input7.air_side.conPID.addI.k3", \
"Gain of lower input", 7687, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input7.air_side.conPID.addI.u1", \
"Connector 1 of Real input signals [K]", "heatPump_with_load_input7.air_side.const5.k", 1,\
 7, 6068, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.conPID.addI.u2", \
"Connector 2 of Real input signals [K]", "heatPump_with_load_input7.air_side.TSen.T", 1,\
 1, 389, 0)
DeclareVariable("heatPump_with_load_input7.air_side.conPID.addI.u3", \
"Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input7.air_side.conPID.addI.y", \
"Connector of Real output signals", "heatPump_with_load_input7.air_side.conPID.I.u", 1,\
 5, 29213, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.conPID.addSat.u1", \
"Connector of Real input signal 1", "heatPump_with_load_input7.air_side.val.y", 1,\
 5, 20593, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.conPID.addSat.u2", \
"Connector of Real input signal 2", "heatPump_with_load_input7.air_side.conPID.gainPID.y", 1,\
 5, 20797, 0)
DeclareVariable("heatPump_with_load_input7.air_side.conPID.addSat.y", \
"Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input7.air_side.conPID.addSat.k1", \
"Gain of upper input", 7688, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input7.air_side.conPID.addSat.k2", \
"Gain of lower input", 7689, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input7.air_side.conPID.gainTrack.k", \
"Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input7.air_side.conPID.gainTrack.u", \
"Input signal connector", "heatPump_with_load_input7.air_side.conPID.addSat.y", 1,\
 5, 29217, 0)
DeclareAlias2("heatPump_with_load_input7.air_side.conPID.gainTrack.y", \
"Output signal connector", "heatPump_with_load_input7.air_side.conPID.addI.u3", 1,\
 5, 29216, 0)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.chi.port_a1.m_flow", 1, 5, 20860, 1156)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.heatPump.chi.port_a1.p", 1,\
 5, 20861, 1028)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.heatPump.chi.port_a1.h_outflow", 1, 5, 20862, 1028)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.chi.port_a1.m_flow", -1, 5, 20860, 1156)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.heatPump.chi.port_a1.p", 1,\
 5, 20861, 1028)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.heatPump.chi.port_a1.h_outflow", 1, 5, 20862, 1028)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.heatPump.chi.port_a1.p", 1,\
 5, 20861, 1024)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.heatPump.chi.port_a1.h_outflow", 1,\
 5, 20862, 1024)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", "heatPump_with_load_input8.heatPump.chi.port_a1.h_outflow", 1,\
 5, 20862, 1024)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.heatPump.chi.port_a1.p", 1,\
 5, 20861, 1024)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.T", 1,\
 5, 29229, 1024)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.U", \
"Internal energy of fluid [J]", 658, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.020408163265307, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007051533632720134, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.heatPump.chi.Q1_flow", 1, 5, 20941, 1024)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.heatPump.chi.port_a1.h_outflow", 1,\
 5, 20862, 1024)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.chi.port_a2.m_flow", 1, 5, 20863, 1156)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.heatPump.chi.port_a2.p", 1,\
 5, 20864, 1028)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.heatPump.chi.port_a2.h_outflow", 1, 5, 20865, 1028)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.chi.port_a2.m_flow", -1, 5, 20863, 1156)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.heatPump.chi.port_a2.p", 1,\
 5, 20864, 1028)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.heatPump.chi.port_a2.h_outflow", 1, 5, 20865, 1028)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.heatPump.chi.port_a2.p", 1,\
 5, 20864, 1024)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.heatPump.chi.port_a2.h_outflow", 1,\
 5, 20865, 1024)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", "heatPump_with_load_input8.heatPump.chi.port_a2.h_outflow", 1,\
 5, 20865, 1024)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.heatPump.chi.port_a2.p", 1,\
 5, 20864, 1024)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.T", 1,\
 5, 29264, 1024)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.U", \
"Internal energy of fluid [J]", 659, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.m", \
"Mass of fluid [kg]", 5.2653061224489806, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.005288650224540101, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.heatPump.chi.Q2_flow", 1, 5, 20942, 1024)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.heatPump.chi.port_a2.h_outflow", 1,\
 5, 20865, 1024)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.chi.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.heatPump.hP_PI.conPID.I.k", \
"Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.heatPump.hP_PI.conPID.I.initType", \
"Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input8.heatPump.hP_PI.conPID.I.y_start", \
"Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.heatPump.hP_PI.conPID.I.u", \
"Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input8.heatPump.hP_PI.conPID.I.y", \
"Connector of Real output signal", 660, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input8.heatPump.hP_PI.conPID.I.der(y)", \
"der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input8.heatPump.hP_PI.conPID.addI.k1", \
"Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.heatPump.hP_PI.conPID.addI.k2", \
"Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input8.heatPump.hP_PI.conPID.addI.k3", \
"Gain of lower input", 7690, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input8.heatPump.hP_PI.conPID.addI.u1", \
"Connector 1 of Real input signals [K]", "heatPump_with_load_input8.heatPump.hP_PI.conPID.u_s", 1,\
 5, 21439, 0)
DeclareAlias2("heatPump_with_load_input8.heatPump.hP_PI.conPID.addI.u2", \
"Connector 2 of Real input signals [K]", "heatPump_with_load_input8.heatPump.hP_PI.conPID.u_m", 1,\
 5, 21440, 0)
DeclareVariable("heatPump_with_load_input8.heatPump.hP_PI.conPID.addI.u3", \
"Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input8.heatPump.hP_PI.conPID.addI.y", \
"Connector of Real output signals", "heatPump_with_load_input8.heatPump.hP_PI.conPID.I.u", 1,\
 5, 29292, 0)
DeclareAlias2("heatPump_with_load_input8.heatPump.hP_PI.conPID.addSat.u1", \
"Connector of Real input signal 1", "heatPump_with_load_input8.heatPump.hP_PI.y1", 1,\
 5, 21463, 0)
DeclareAlias2("heatPump_with_load_input8.heatPump.hP_PI.conPID.addSat.u2", \
"Connector of Real input signal 2", "heatPump_with_load_input8.heatPump.hP_PI.conPID.gainPID.y", 1,\
 5, 21455, 0)
DeclareVariable("heatPump_with_load_input8.heatPump.hP_PI.conPID.addSat.y", \
"Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input8.heatPump.hP_PI.conPID.addSat.k1", \
"Gain of upper input", 7691, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input8.heatPump.hP_PI.conPID.addSat.k2", \
"Gain of lower input", 7692, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input8.heatPump.hP_PI.conPID.gainTrack.k", \
"Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input8.heatPump.hP_PI.conPID.gainTrack.u", \
"Input signal connector", "heatPump_with_load_input8.heatPump.hP_PI.conPID.addSat.y", 1,\
 5, 29296, 0)
DeclareAlias2("heatPump_with_load_input8.heatPump.hP_PI.conPID.gainTrack.y", \
"Output signal connector", "heatPump_with_load_input8.heatPump.hP_PI.conPID.addI.u3", 1,\
 5, 29295, 0)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.massDynamics", \
"Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.substanceDynamics", \
"Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.traceDynamics", \
"Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.T_start", \
"Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", 1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.heatPump.port_b2.p", 1,\
 5, 21016, 1028)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.fan.port_a.h_outflow", 1, 5, 21562, 1028)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", -1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.heatPump.port_b2.p", 1,\
 5, 21016, 1028)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.fan.port_a.h_outflow", 1, 5, 21562, 1028)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.medium.T", \
"Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.heatPump.port_b2.p", 1,\
 5, 21016, 1024)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.fan.port_a.h_outflow", 1,\
 5, 21562, 1024)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", "heatPump_with_load_input8.fan.port_a.h_outflow", 1,\
 5, 21562, 1024)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.medium.X[1]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.heatPump.port_b2.p", 1,\
 5, 21016, 1024)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "heatPump_with_load_input8.fan.vol.dynBal.medium.T", 1,\
 5, 29308, 1024)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.fan.vol.dynBal.U", "Internal energy of fluid [J]",\
 661, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.fan.vol.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.m", "Mass of fluid [kg]",\
 0.17551020408163268, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.fluidVolume", \
"Volume [m3]", 0.00017628834081800335, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.fan.vol.heatPort.Q_flow", 1, 5, 21584, 1024)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.fan.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "heatPump_with_load_input8.fan.port_a.h_outflow", 1, 5, 21562, 1024)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.ports_H_flow[1]", \
"[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.ports_H_flow[2]", \
"[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.cp_default", \
"Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.computeCSen", \
"[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan.vol.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.fan.preSou.dp_in", "Prescribed outlet pressure [Pa]",\
 "heatPump_with_load_input8.fan.dp_actual", -1, 5, 21647, 1024)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.massDynamics", \
"Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.substanceDynamics", \
"Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.traceDynamics", \
"Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.T_start", \
"Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.port_a.m_flow", 1, 5, 21551, 1156)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "expVes.p_start", 1, 7,\
 6864, 1028)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.port_a.h_outflow", 1, 5, 21552, 1028)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.port_a.m_flow", -1, 5, 21551, 1156)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "expVes.p_start", 1, 7,\
 6864, 1028)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.port_a.h_outflow", 1, 5, 21552, 1028)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.medium.T", \
"Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "expVes.p_start", 1, 7, 6864, 1024)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.port_a.h_outflow", 1,\
 5, 21552, 1024)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", "heatPump_with_load_input8.port_a.h_outflow", 1,\
 5, 21552, 1024)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.medium.X[1]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "expVes.p_start", 1, 7, 6864, 1024)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "heatPump_with_load_input8.fan1.vol.dynBal.medium.T", 1,\
 5, 29343, 1024)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareState("heatPump_with_load_input8.fan1.vol.dynBal.U", "Internal energy of fluid [J]",\
 662, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.fan1.vol.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.m", "Mass of fluid [kg]",\
 0.2340136054421769, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.fluidVolume", \
"Volume [m3]", 0.0002350511210906711, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.fan1.vol.heatPort.Q_flow", 1, 5, 21694, 1024)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.fan1.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "heatPump_with_load_input8.port_a.h_outflow", 1, 5, 21552, 1024)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.ports_H_flow[1]", \
"[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.ports_H_flow[2]", \
"[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.cp_default", \
"Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.computeCSen", \
"[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.fan1.vol.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.fan1.preSou.dp_in", "Prescribed outlet pressure [Pa]",\
 "heatPump_with_load_input8.fan1.dp_actual", -1, 5, 21756, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", 1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.port_a_Cold_Water.h_outflow", 1, 5, 23424, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", -1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.port_a_Cold_Water.h_outflow", 1, 5, 23424, 1028)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.port_a_Cold_Water.h_outflow", 1,\
 5, 23424, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input8.air_side.port_a_Cold_Water.h_outflow", 1,\
 5, 23424, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.T", 1,\
 5, 29378, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 663, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].Q1_flow", 1,\
 5, 22028, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.port_a_Cold_Water.h_outflow", 1,\
 5, 23424, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].port_a2.m_flow", 1,\
 5, 21939, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 22611, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 22612, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.m_flow", 1,\
 5, 22608, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 22611, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 22612, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 22612, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 22611, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 22612, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.T", 1,\
 5, 29416, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 22612, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X[2]", 1,\
 5, 29417, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 22612, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 664, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 665, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.Q_flow.y", 1,\
 5, 22025, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.mWat_flow", 1,\
 5, 22020, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.h_outflow", 1,\
 5, 22611, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.Xi_outflow[1]", 1,\
 5, 22612, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", 1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 22105, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", -1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 22105, 1028)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 22105, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 22105, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.T", 1,\
 5, 29460, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 666, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].Q1_flow", 1,\
 5, 22196, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a1.h_outflow", 1,\
 5, 22105, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.m_flow", 1,\
 5, 22106, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 22107, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 21950, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].port_a2.m_flow", -1,\
 5, 21939, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 22107, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 21950, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 21950, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 22107, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 21950, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.T", 1,\
 5, 29498, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 21950, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X[2]", 1,\
 5, 29499, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 21950, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 667, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 668, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.Q_flow.y", 1,\
 5, 22193, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.mWat_flow", 1,\
 5, 22188, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.h_outflow", 1,\
 5, 22107, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[1].state_a2_inflow.X[1]", 1,\
 5, 21950, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", 1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 22273, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", -1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 22273, 1028)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 22273, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 22273, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.T", 1,\
 5, 29542, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 669, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].Q1_flow", 1,\
 5, 22363, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a1.h_outflow", 1,\
 5, 22273, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.m_flow", 1,\
 5, 22274, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 22275, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 22118, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].port_a2.m_flow", -1,\
 5, 22106, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 22275, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 22118, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 22118, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 22275, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 22118, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.T", 1,\
 5, 29580, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 22118, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X[2]", 1,\
 5, 29581, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 22118, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 670, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 671, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.Q_flow.y", 1,\
 5, 22360, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.mWat_flow", 1,\
 5, 22355, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.h_outflow", 1,\
 5, 22275, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[2].state_a2_inflow.X[1]", 1,\
 5, 22118, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", 1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.port_b_Cold_Water.h_outflow", 1, 5, 23423, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.heatPump.port_a2.m_flow", -1, 5, 21013, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.port_b_Cold_Water.h_outflow", 1, 5, 23423, 1028)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.port_b_Cold_Water.h_outflow", 1,\
 5, 23423, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", "heatPump_with_load_input8.air_side.port_b_Cold_Water.h_outflow", 1,\
 5, 23423, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [1]", 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.0,1E+100,0.0,\
0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.fan.port_b.p", 1,\
 5, 21563, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.T", 1,\
 5, 29624, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.U",\
 "Internal energy of fluid [J]", 672, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.m",\
 "Mass of fluid [kg]", 0.8775510204081634, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.0008814417040900167, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].Q1_flow", 1,\
 5, 22527, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.port_b_Cold_Water.h_outflow", 1,\
 5, 23423, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol1.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.m_flow", 1,\
 5, 22604, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 22606, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 22607, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[3].port_a2.m_flow", -1,\
 5, 22274, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 22606, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 22607, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 22607, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 22606, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 22607, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.T", 1,\
 5, 29662, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 22607, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X[2]", 1,\
 5, 29663, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 22607, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.U",\
 "Internal energy of fluid [J]", 673, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.m",\
 "Mass of fluid [kg]", 0.0, 0.0,1E+100,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 674, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.Q_flow.y", 1,\
 5, 22524, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.mWat_flow", 1,\
 5, 22519, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.h_outflow", 1,\
 5, 22606, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_a_Air.Xi_outflow[1]", 1,\
 5, 22607, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.cooling_Coil.cooCoi.ele[4].vol2.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.p_start",\
 "Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.T_start",\
 "Start value of temperature [K|degC]", 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.X_start[2]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mSenFac",\
 "Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.nPorts",\
 "Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.m_flow", -1,\
 5, 22608, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.port_b.h_outflow", 1, 5, 23101, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 23102,\
 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.port_b.m_flow", 1, 5, 23099, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.port_b.h_outflow", 1, 5, 23101, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 23102,\
 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.Xi[1]",\
 "Structurally independent mass fractions [1]", "heatPump_with_load_input8.air_side.Air_side.port_b.Xi_outflow[1]", 1,\
 5, 23102, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.h",\
 "Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.Air_side.port_b.h_outflow", 1,\
 5, 23101, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 0.0, 0.0,100000.0,1.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.der(d)",\
 "der(Density of medium) [Pa.m-2.s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 23102,\
 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.port_b_Air.p", 1,\
 5, 22609, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.T", 1,\
 5, 29709, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.port_b.Xi_outflow[1]", 1, 5, 23102,\
 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X[2]", 1,\
 5, 29710, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input8.air_side.Air_side.port_b.Xi_outflow[1]", 1,\
 5, 23102, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.medium.dT",\
 "Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.U",\
 "Internal energy of fluid [J]", 675, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.m",\
 "Mass of fluid [kg]", 676, 0.0, 0.0,1E+100,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(m)",\
 "der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mXi[1]",\
 "Masses of independent components in the fluid [kg]", 677, 0.0, 0.0,1E+100,0.0,\
0,2608)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mb_flow",\
 "Mass flows across boundaries [kg/s]", "heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(m)", 1,\
 6, 676, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mbXi_flow[1]",\
 "Substance mass flows across boundaries [kg/s]", "heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(mXi[1])", 1,\
 6, 677, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.Hb_flow",\
 "Enthalpy flow across boundaries or energy source/sink [W]", "heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.der(U)", 1,\
 6, 675, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.fluidVolume",\
 "Volume [m3]", 0.4300000000000001, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.CSen",\
 "Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.Q_flow",\
 "Sensible plus latent heat flow rate transferred into the medium [W]", 0.0, \
0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.mWat_flow",\
 "Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.hOut",\
 "Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.Air_side.port_b.h_outflow", 1,\
 5, 23101, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.XiOut[1]",\
 "Leaving species concentration of the component [1]", "heatPump_with_load_input8.air_side.Air_side.port_b.Xi_outflow[1]", 1,\
 5, 23102, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.s[1]",\
 "Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.Supply_Fan.fan.vol.dynBal.hStart",\
 "Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.I.k",\
 "Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.I.initType",\
 "Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.I.y_start",\
 "Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.I.u",\
 "Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.I.y",\
 "Connector of Real output signal", 678, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.I.der(y)",\
 "der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addI.k1",\
 "Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addI.k2",\
 "Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addI.k3",\
 "Gain of lower input", 7693, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addI.u1",\
 "Connector 1 of Real input signals [Pa]", "heatPump_with_load_input8.air_side.const4.k", 1,\
 7, 6783, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addI.u2",\
 "Connector 2 of Real input signals [Pa]", "heatPump_with_load_input8.air_side.Air_side.Pre_Mea", 1,\
 5, 23139, 0)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addI.u3",\
 "Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addI.y",\
 "Connector of Real output signals", "heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.I.u", 1,\
 5, 29743, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addSat.u1",\
 "Connector of Real input signal 1 [1]", "heatPump_with_load_input8.air_side.Air_side.Supply_Fan.y", 1,\
 5, 22882, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addSat.u2",\
 "Connector of Real input signal 2 [1]", "heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.gainPID.y", 1,\
 5, 23131, 0)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addSat.y",\
 "Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addSat.k1",\
 "Gain of upper input", 7694, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addSat.k2",\
 "Gain of lower input", 7695, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.gainTrack.k",\
 "Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.gainTrack.u",\
 "Input signal connector", "heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addSat.y", 1,\
 5, 29747, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.gainTrack.y",\
 "Output signal connector", "heatPump_with_load_input8.air_side.Air_side.pressure_based_SF_control.conPID.addI.u3", 1,\
 5, 29746, 0)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.I.k", \
"Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.I.initType",\
 "Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.I.y_start",\
 "Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.I.u", \
"Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.I.y", \
"Connector of Real output signal", 679, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.I.der(y)",\
 "der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addI.k1",\
 "Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addI.k2",\
 "Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addI.k3",\
 "Gain of lower input", 7696, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addI.u1",\
 "Connector 1 of Real input signals [K]", "heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.u_s", 1,\
 5, 23142, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addI.u2",\
 "Connector 2 of Real input signals [K]", "heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.u_m", 1,\
 5, 23143, 0)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addI.u3",\
 "Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addI.y",\
 "Connector of Real output signals", "heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.I.u", 1,\
 5, 29752, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addSat.u1",\
 "Connector of Real input signal 1", "heatPump_with_load_input8.air_side.Air_side.cooling_Coil.yVal", 1,\
 5, 22656, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addSat.u2",\
 "Connector of Real input signal 2", "heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.gainPID.y", 1,\
 5, 23158, 0)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addSat.y",\
 "Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addSat.k1",\
 "Gain of upper input", 7697, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addSat.k2",\
 "Gain of lower input", 7698, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.gainTrack.k",\
 "Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.gainTrack.u",\
 "Input signal connector", "heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addSat.y", 1,\
 5, 29756, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.gainTrack.y",\
 "Output signal connector", "heatPump_with_load_input8.air_side.Air_side.hP_PI.conPID.addI.u3", 1,\
 5, 29755, 0)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.energyDynamics",\
 "Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2, \
1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.massDynamics",\
 "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.substanceDynamics",\
 "Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2,\
 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.traceDynamics",\
 "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.T_start", \
"Start value of temperature [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.X_start[2]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 1.0,\
1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,1539)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 3, 0.0,0.0,0.0,0,2565)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.port_a.m_flow", -1, 5, 23103, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.val.port_b.p", 1,\
 5, 23170, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.val.port_a.h_outflow", 1, 5, 23168, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[1].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.val.port_a.Xi_outflow[1]", 1, 5, 23169, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.Air_side.port_b.m_flow", -1, 5, 23099, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.val.port_b.p", 1,\
 5, 23170, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.val.port_a.h_outflow", 1, 5, 23168, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[2].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.val.port_a.Xi_outflow[1]", 1, 5, 23169, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[3].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"heatPump_with_load_input8.air_side.rooVol.ports[3].m_flow", 1, 5, 23226, 1156)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[3].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "heatPump_with_load_input8.air_side.val.port_b.p", 1,\
 5, 23170, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[3].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "heatPump_with_load_input8.air_side.val.port_a.h_outflow", 1, 5, 23168, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.ports[3].Xi_outflow[1]",\
 "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0 [kg/kg]",\
 "heatPump_with_load_input8.air_side.val.port_a.Xi_outflow[1]", 1, 5, 23169, 1028)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.val.port_b.p", 1,\
 5, 23170, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.Xi[1]", \
"Structurally independent mass fractions [1]", "heatPump_with_load_input8.air_side.val.port_a.Xi_outflow[1]", 1,\
 5, 23169, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "heatPump_with_load_input8.air_side.val.port_a.h_outflow", 1,\
 5, 23168, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", "heatPump_with_load_input8.air_side.rooVol.dynBal.m", 1,\
 1, 681, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.X[1]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.val.port_a.Xi_outflow[1]", 1, 5, 23169, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.X[2]", \
"Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.0, 0.0,1.0,\
0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 1000.0, 0.0,10000000.0,\
1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.MM", \
"Molar mass (of mixture or single fluid) [kg/mol]", 0.032, 0.001,0.25,0.032,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "heatPump_with_load_input8.air_side.val.port_b.p", 1,\
 5, 23170, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "heatPump_with_load_input8.air_side.rooVol.dynBal.medium.T", 1,\
 5, 29769, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.state.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.val.port_a.Xi_outflow[1]", 1, 5, 23169, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.state.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", \
"heatPump_with_load_input8.air_side.rooVol.dynBal.medium.X[2]", 1, 5, 29770, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.MMX[1]",\
 "Molar masses of components [kg/mol]", 0.01801528, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.MMX[2]",\
 "Molar masses of components [kg/mol]", 0.0289651159, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.X_steam",\
 "Mass fraction of steam water [kg/kg]", "heatPump_with_load_input8.air_side.val.port_a.Xi_outflow[1]", 1,\
 5, 23169, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.X_air",\
 "Mass fraction of air [kg/kg]", 0.0, 0.0,1.0,0.1,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.medium.dT", \
"Temperature difference used to compute enthalpy [K,]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.rooVol.dynBal.U", \
"Internal energy of fluid [J]", 680, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.rooVol.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.rooVol.dynBal.m", \
"Mass of fluid [kg]", 681, 0.0, 0.0,100000.0,1.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.rooVol.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("heatPump_with_load_input8.air_side.rooVol.dynBal.mXi[1]", \
"Masses of independent components in the fluid [kg]", 682, 0.0, 0.0,1E+100,0.0,0,2592)
DeclareDerivative("heatPump_with_load_input8.air_side.rooVol.dynBal.der(mXi[1])",\
 "der(Masses of independent components in the fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", "heatPump_with_load_input8.air_side.rooVol.dynBal.der(m)", 1,\
 6, 681, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.mbXi_flow[1]", \
"Substance mass flows across boundaries [kg/s]", "heatPump_with_load_input8.air_side.rooVol.dynBal.der(mXi[1])", 1,\
 6, 682, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.fluidVolume", \
"Volume [m3]", 1.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"heatPump_with_load_input8.QSou.port.Q_flow", -1, 5, 21554, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.mWat_flow", \
"Moisture mass flow rate added to the medium [kg/s]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "heatPump_with_load_input8.air_side.val.port_a.h_outflow", 1,\
 5, 23168, 1024)
DeclareAlias2("heatPump_with_load_input8.air_side.rooVol.dynBal.XiOut[1]", \
"Leaving species concentration of the component [1]", "heatPump_with_load_input8.air_side.val.port_a.Xi_outflow[1]", 1,\
 5, 23169, 1024)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.ports_H_flow[3]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.ports_mXi_flow[1, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.ports_mXi_flow[2, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.ports_mXi_flow[3, 1]",\
 "[kg/s]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.cp_default", \
"Heat capacity, to compute additional dry mass [J/(kg.K)]", 1014.54, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.rho_start", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.computeCSen", \
"[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.state_default.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.01, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.state_default.X[2]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 0.99, 0.0,1.0,\
0.1,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 1.2, 0.0,1E+100,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.s[1]", \
"Vector with zero everywhere except where species is [1]", 1, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.rooVol.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("heatPump_with_load_input8.air_side.conPID.I.k", \
"Integrator gain [1]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.air_side.conPID.I.initType", \
"Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("heatPump_with_load_input8.air_side.conPID.I.y_start", \
"Initial or guess value of output (= state)", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.air_side.conPID.I.u", \
"Connector of Real input signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("heatPump_with_load_input8.air_side.conPID.I.y", "Connector of Real output signal",\
 683, 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("heatPump_with_load_input8.air_side.conPID.I.der(y)", \
"der(Connector of Real output signal)", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("heatPump_with_load_input8.air_side.conPID.addI.k1", \
"Gain of upper input", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("heatPump_with_load_input8.air_side.conPID.addI.k2", \
"Gain of middle input", 0.0, 0.0,0.0,0.0,0,513)
DeclareParameter("heatPump_with_load_input8.air_side.conPID.addI.k3", \
"Gain of lower input", 7699, 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("heatPump_with_load_input8.air_side.conPID.addI.u1", \
"Connector 1 of Real input signals [K]", "heatPump_with_load_input8.air_side.const5.k", 1,\
 7, 6826, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.conPID.addI.u2", \
"Connector 2 of Real input signals [K]", "heatPump_with_load_input8.air_side.TSen.T", 1,\
 1, 438, 0)
DeclareVariable("heatPump_with_load_input8.air_side.conPID.addI.u3", \
"Connector 3 of Real input signals", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("heatPump_with_load_input8.air_side.conPID.addI.y", \
"Connector of Real output signals", "heatPump_with_load_input8.air_side.conPID.I.u", 1,\
 5, 29805, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.conPID.addSat.u1", \
"Connector of Real input signal 1", "heatPump_with_load_input8.air_side.val.y", 1,\
 5, 23190, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.conPID.addSat.u2", \
"Connector of Real input signal 2", "heatPump_with_load_input8.air_side.conPID.gainPID.y", 1,\
 5, 23394, 0)
DeclareVariable("heatPump_with_load_input8.air_side.conPID.addSat.y", \
"Connector of Real output signal", 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("heatPump_with_load_input8.air_side.conPID.addSat.k1", \
"Gain of upper input", 7700, 1, 0.0,0.0,0.0,0,560)
DeclareParameter("heatPump_with_load_input8.air_side.conPID.addSat.k2", \
"Gain of lower input", 7701, -1, 0.0,0.0,0.0,0,560)
DeclareVariable("heatPump_with_load_input8.air_side.conPID.gainTrack.k", \
"Gain value multiplied with input signal [1]", 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("heatPump_with_load_input8.air_side.conPID.gainTrack.u", \
"Input signal connector", "heatPump_with_load_input8.air_side.conPID.addSat.y", 1,\
 5, 29809, 0)
DeclareAlias2("heatPump_with_load_input8.air_side.conPID.gainTrack.y", \
"Output signal connector", "heatPump_with_load_input8.air_side.conPID.addI.u3", 1,\
 5, 29808, 0)
DeclareVariable("userSide_RefRack.rooVol.dynBal.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.rooVol.dynBal.massDynamics", "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.rooVol.dynBal.substanceDynamics", \
"Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 2, \
1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.rooVol.dynBal.traceDynamics", "Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 2, 1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.rooVol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.T_start", "Start value of temperature [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume [1]",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("userSide_RefRack.rooVol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 3, 0.0,0.0,0.0,0,2565)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.ports[1].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "userSide_RefRack.rooVol.ports[1].m_flow", 1, 5, 23929, 1156)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "userSide_RefRack.expVes.p_start", 1, 7, 7113, 1028)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.rooVol.ports[1].h_outflow", 1, 5, 23930, 1028)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.ports[2].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "userSide_RefRack.rooVol.ports[1].m_flow", -1, 5, 23929, 1156)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "userSide_RefRack.expVes.p_start", 1, 7, 7113, 1028)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.rooVol.ports[1].h_outflow", 1, 5, 23930, 1028)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.ports[3].m_flow", "Mass flow rate from the connection point into the component [kg/s]",\
 "userSide_RefRack.expVes.der(m)", -1, 6, 448, 1156)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.ports[3].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "userSide_RefRack.expVes.p_start", 1, 7, 7113, 1028)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.ports[3].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.rooVol.ports[1].h_outflow", 1, 5, 23930, 1028)
DeclareVariable("userSide_RefRack.rooVol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 293.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "userSide_RefRack.expVes.p_start", 1, 7, 7113, 1024)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "userSide_RefRack.rooVol.ports[1].h_outflow", 1, 5, 23930, 1024)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "userSide_RefRack.rooVol.ports[1].h_outflow", 1, 5, 23930, 1024)
DeclareVariable("userSide_RefRack.rooVol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "userSide_RefRack.expVes.p_start", 1, 7, 7113, 1024)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "userSide_RefRack.rooVol.dynBal.medium.T", 1, 5, 29821, 1024)
DeclareVariable("userSide_RefRack.rooVol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.rooVol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.rooVol.dynBal.medium.T_degC", "Temperature of medium in [degC] [degC;]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.rooVol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareState("userSide_RefRack.rooVol.dynBal.U", "Internal energy of fluid [J]",\
 684, 83310636.48, 0.0,0.0,0.0,0,2592)
DeclareDerivative("userSide_RefRack.rooVol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.rooVol.dynBal.m", "Mass of fluid [kg]", \
995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.rooVol.dynBal.fluidVolume", "Volume [m3]", 1.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "userSide_RefRack.rooVol.heatPort.Q_flow", 1, 5, 23932, 1024)
DeclareVariable("userSide_RefRack.rooVol.dynBal.mWat_flow", "Moisture mass flow rate added to the medium [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.rooVol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "userSide_RefRack.rooVol.ports[1].h_outflow", 1, 5, 23930, 1024)
DeclareVariable("userSide_RefRack.rooVol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.rooVol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.rooVol.dynBal.ports_H_flow[3]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.rooVol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.rooVol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.rooVol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 83680.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.massDynamics", "Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.substanceDynamics", \
"Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.traceDynamics", \
"Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume [1]",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.initialize_p", "= true to set up initial equations for pressure [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,1539)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"userSide_RefRack.rooVol.ports[1].m_flow", -1, 5, 23929, 1156)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "userSide_RefRack.expVes.p_start", 1, 7, 7113, 1028)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.fan.port_a.h_outflow", 1, 5, 23948, 1028)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"userSide_RefRack.rooVol.ports[1].m_flow", 1, 5, 23929, 1156)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "userSide_RefRack.expVes.p_start", 1, 7, 7113, 1028)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.fan.port_a.h_outflow", 1, 5, 23948, 1028)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "userSide_RefRack.expVes.p_start", 1, 7, 7113, 1024)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "userSide_RefRack.fan.port_a.h_outflow", 1, 5, 23948, 1024)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "userSide_RefRack.fan.port_a.h_outflow", 1, 5, 23948, 1024)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.medium.state.p", "Absolute pressure of medium [Pa|bar]",\
 "userSide_RefRack.expVes.p_start", 1, 7, 7113, 1024)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.medium.state.T", "Temperature of medium [K|degC]",\
 "userSide_RefRack.fan.vol.dynBal.medium.T", 1, 5, 29857, 1024)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.medium.preferredMediumStates", \
"= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.medium.p_bar", "Absolute pressure of medium in [bar] [bar]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareState("userSide_RefRack.fan.vol.dynBal.U", "Internal energy of fluid [J]",\
 685, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("userSide_RefRack.fan.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.m", "Mass of fluid [kg]", \
0.10204081632653061, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "userSide_RefRack.fan.vol.dynBal.der(U)", 1, 6, 685, 1024)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.fluidVolume", "Volume [m3]", \
0.00010249322140581589, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.mWat_flow", "Moisture mass flow rate added to the medium [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.fan.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "userSide_RefRack.fan.port_a.h_outflow", 1, 5, 23948, 1024)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.fan.preSou.dp_in", "Prescribed outlet pressure [Pa]",\
 "userSide_RefRack.fan.dp_actual", -1, 5, 24034, 1024)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.massDynamics", \
"Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.substanceDynamics", \
"Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.traceDynamics", \
"Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.T_start", "Start value of temperature [K|degC]",\
 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume [1]",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"userSide_RefRack.port_b.m_flow", -1, 5, 24310, 1156)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "userSide_RefRack.port_b.p", 1, 5, 24311, 1028)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.port_b.h_outflow", 1, 5, 24312, 1028)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"userSide_RefRack.port_b.m_flow", 1, 5, 24310, 1156)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "userSide_RefRack.port_b.p", 1, 5, 24311, 1028)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.port_b.h_outflow", 1, 5, 24312, 1028)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "userSide_RefRack.port_b.p", 1, 5, 24311, 1024)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "userSide_RefRack.port_b.h_outflow", 1, 5, 24312, 1024)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "userSide_RefRack.port_b.h_outflow", 1, 5, 24312, 1024)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "userSide_RefRack.port_b.p", 1, 5, 24311,\
 1024)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "userSide_RefRack.chi.vol1.dynBal.medium.T", 1,\
 5, 29892, 1024)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("userSide_RefRack.chi.vol1.dynBal.U", "Internal energy of fluid [J]",\
 686, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("userSide_RefRack.chi.vol1.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.m", "Mass of fluid [kg]", \
4.081632653061225, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.fluidVolume", "Volume [m3]", \
0.0040997288562326355, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "userSide_RefRack.chi.Q1_flow", 1, 5, 24136, 1024)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.mWat_flow", "Moisture mass flow rate added to the medium [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.chi.vol1.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "userSide_RefRack.port_b.h_outflow", 1, 5, 24312, 1024)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol1.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.massDynamics", \
"Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.substanceDynamics", \
"Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.traceDynamics", \
"Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.T_start", "Start value of temperature [K|degC]",\
 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume [1]",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"userSide_RefRack.rooVol.ports[1].m_flow", -1, 5, 23929, 1156)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "userSide_RefRack.fan.port_b.p", 1, 5, 23949, 1028)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.chi.port_a2.h_outflow", 1, 5, 24060, 1028)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"userSide_RefRack.rooVol.ports[1].m_flow", 1, 5, 23929, 1156)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "userSide_RefRack.fan.port_b.p", 1, 5, 23949, 1028)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.chi.port_a2.h_outflow", 1, 5, 24060, 1028)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "userSide_RefRack.fan.port_b.p", 1, 5, 23949, 1024)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "userSide_RefRack.chi.port_a2.h_outflow", 1, 5, 24060, 1024)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "userSide_RefRack.chi.port_a2.h_outflow", 1, 5, 24060, 1024)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "userSide_RefRack.fan.port_b.p", 1, 5, 23949,\
 1024)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "userSide_RefRack.chi.vol2.dynBal.medium.T", 1,\
 5, 29927, 1024)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareState("userSide_RefRack.chi.vol2.dynBal.U", "Internal energy of fluid [J]",\
 687, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("userSide_RefRack.chi.vol2.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.m", "Mass of fluid [kg]", \
3.0612244897959187, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.fluidVolume", "Volume [m3]", \
0.0030747966421744767, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 "userSide_RefRack.chi.Q2_flow", 1, 5, 24137, 1024)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.mWat_flow", "Moisture mass flow rate added to the medium [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.chi.vol2.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "userSide_RefRack.chi.port_a2.h_outflow", 1, 5, 24060, 1024)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.chi.vol2.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.massDynamics", \
"Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.substanceDynamics", \
"Formulation of substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, \
1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.traceDynamics", \
"Formulation of trace substance balance [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,2565)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.p_start", "Start value of pressure [Pa|bar]",\
 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.T_start", "Start value of temperature [K|degC]",\
 300, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.mSenFac", "Factor for scaling the sensible thermal mass of the volume [1]",\
 1.0, 1.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.nPorts", "Number of ports [:#(type=Integer)]",\
 2, 0.0,0.0,0.0,0,2565)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"userSide_RefRack.port_b.m_flow", -1, 5, 24310, 1156)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.ports[1].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "expVes.p_start", 1, 7, 6864, 1028)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.ports[1].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.port_a.h_outflow", 1, 5, 24313, 1028)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"userSide_RefRack.port_b.m_flow", 1, 5, 24310, 1156)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.ports[2].p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "expVes.p_start", 1, 7, 6864, 1028)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.ports[2].h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "userSide_RefRack.port_a.h_outflow", 1, 5, 24313, 1028)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.medium.T", "Temperature of medium [K|degC]",\
 300.0, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.medium.p", "Absolute pressure of medium [Pa|bar]",\
 "expVes.p_start", 1, 7, 6864, 1024)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.medium.h", "Specific enthalpy of medium [J/kg]",\
 "userSide_RefRack.port_a.h_outflow", 1, 5, 24313, 1024)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.medium.u", "Specific internal energy of medium [J/kg]",\
 "userSide_RefRack.port_a.h_outflow", 1, 5, 24313, 1024)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.medium.d", "Density of medium [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.medium.X[1]", "Mass fractions (= (component mass)/total mass  m_i/m) [1]",\
 1, 0.0,1.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.medium.R", "Gas constant (of mixture if applicable) [J/(kg.K)]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.medium.MM", "Molar mass (of mixture or single fluid) [kg/mol]",\
 0.018015268, 0.0,1E+100,0.0,0,2561)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.medium.state.p", \
"Absolute pressure of medium [Pa|bar]", "expVes.p_start", 1, 7, 6864, 1024)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.medium.state.T", \
"Temperature of medium [K|degC]", "userSide_RefRack.fan1.vol.dynBal.medium.T", 1,\
 5, 29962, 1024)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.medium.T_degC", \
"Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.medium.p_bar", \
"Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareState("userSide_RefRack.fan1.vol.dynBal.U", "Internal energy of fluid [J]",\
 688, 0.0, 0.0,0.0,0.0,0,2592)
DeclareDerivative("userSide_RefRack.fan1.vol.dynBal.der(U)", "der(Internal energy of fluid) [W]",\
 0.0, 0.0,0.0,0.0,0,2560)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.m", "Mass of fluid [kg]", \
0.1360544217687075, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.der(m)", "der(Mass of fluid) [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.mb_flow", "Mass flows across boundaries [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.Hb_flow", "Enthalpy flow across boundaries or energy source/sink [W]",\
 "userSide_RefRack.fan1.vol.dynBal.der(U)", 1, 6, 688, 1024)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.fluidVolume", "Volume [m3]", \
0.00013665762854108785, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.CSen", "Aditional heat capacity for implementing mFactor [J/K]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.Q_flow", "Sensible plus latent heat flow rate transferred into the medium [W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.mWat_flow", "Moisture mass flow rate added to the medium [kg/s]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.fan1.vol.dynBal.hOut", "Leaving specific enthalpy of the component [J/kg]",\
 "userSide_RefRack.port_a.h_outflow", 1, 5, 24313, 1024)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.ports_H_flow[1]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.ports_H_flow[2]", "[W]", 0.0, \
-100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.cp_default", "Heat capacity, to compute additional dry mass [J/(kg.K)]",\
 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.rho_start", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.computeCSen", "[:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 300000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.rho_default", "Density, used to compute fluid mass [kg/m3|g/cm3]",\
 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("userSide_RefRack.fan1.vol.dynBal.hStart", "Start value for specific enthalpy [J/kg]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("userSide_RefRack.fan1.preSou.dp_in", "Prescribed outlet pressure [Pa]",\
 "userSide_RefRack.fan1.dp_actual", -1, 5, 24291, 1024)
DeclareVariable("userSide_RefRack.conPID.I.k", "Integrator gain [1]", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("userSide_RefRack.conPID.I.initType", "Type of initialization (1: no init, 2: steady state, 3,4: initial output) [:#(type=Modelica.Blocks.Types.Init)]",\
 3, 1.0,4.0,0.0,0,517)
DeclareVariable("userSide_RefRack.conPID.I.y_start", "Initial or guess value of output (= state)",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("userSide_RefRack.conPID.I.u", "Connector of Real input signal",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareState("userSide_RefRack.conPID.I.y", "Connector of Real output signal", 689,\
 0.0, 0.0,0.0,0.0,0,544)
DeclareDerivative("userSide_RefRack.conPID.I.der(y)", "der(Connector of Real output signal)",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("userSide_RefRack.conPID.addI.k1", "Gain of upper input", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("userSide_RefRack.conPID.addI.k2", "Gain of middle input", 0.0, \
0.0,0.0,0.0,0,513)
DeclareParameter("userSide_RefRack.conPID.addI.k3", "Gain of lower input", 7702,\
 1, 0.0,0.0,0.0,0,560)
DeclareAlias2("userSide_RefRack.conPID.addI.u1", "Connector 1 of Real input signals [K]",\
 "userSide_RefRack.const2.k", 1, 7, 7099, 0)
DeclareAlias2("userSide_RefRack.conPID.addI.u2", "Connector 2 of Real input signals [K]",\
 "userSide_RefRack.senTem.T", 1, 1, 447, 0)
DeclareVariable("userSide_RefRack.conPID.addI.u3", "Connector 3 of Real input signals",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("userSide_RefRack.conPID.addI.y", "Connector of Real output signals",\
 "userSide_RefRack.conPID.I.u", 1, 5, 29990, 0)
DeclareAlias2("userSide_RefRack.conPID.addSat.u1", "Connector of Real input signal 1 [1]",\
 "userSide_RefRack.chi.y", 1, 5, 24191, 0)
DeclareAlias2("userSide_RefRack.conPID.addSat.u2", "Connector of Real input signal 2 [1]",\
 "userSide_RefRack.conPID.gainPID.y", 1, 5, 24326, 0)
DeclareVariable("userSide_RefRack.conPID.addSat.y", "Connector of Real output signal",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareParameter("userSide_RefRack.conPID.addSat.k1", "Gain of upper input", 7703,\
 1, 0.0,0.0,0.0,0,560)
DeclareParameter("userSide_RefRack.conPID.addSat.k2", "Gain of lower input", 7704,\
 -1, 0.0,0.0,0.0,0,560)
DeclareVariable("userSide_RefRack.conPID.gainTrack.k", "Gain value multiplied with input signal [1]",\
 1, 0.0,0.0,0.0,0,513)
DeclareAlias2("userSide_RefRack.conPID.gainTrack.u", "Input signal connector", \
"userSide_RefRack.conPID.addSat.y", 1, 5, 29994, 0)
DeclareAlias2("userSide_RefRack.conPID.gainTrack.y", "Output signal connector", \
"userSide_RefRack.conPID.addI.u3", 1, 5, 29993, 0)
EndNonAlias(6)
PreNonAliasNew(7)
