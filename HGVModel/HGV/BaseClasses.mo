within HGV;
package BaseClasses
  package Components
    model FanCoil "Fan coil unit"

      replaceable package MediumW =
         Modelica.Media.Interfaces.PartialMedium "Medium in the water side";
      replaceable package MediumA =
         Modelica.Media.Interfaces.PartialMedium "Medium in the air side";

      parameter Modelica.SIunits.MassFlowRate mAir_flow_nominal
        "Nominal air flow rate";
      parameter Modelica.SIunits.MassFlowRate mWat_flow_nominal
        "Nominal water flow rate";

      Buildings.Fluid.Movers.FlowControlled_m_flow fan(
        redeclare package Medium = MediumA,
        m_flow_nominal=mAir_flow_nominal,
        dp(start=249),
        m_flow(start=mAir_flow_nominal),
        filteredSpeed=false,
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        T_start=293.15) "Fan for air flow through the room"
        annotation (Placement(transformation(extent={{0,-13},{20,7}})));
      Buildings.Fluid.Sensors.TemperatureTwoPort TAirSup(redeclare package
          Medium =
            MediumA, m_flow_nominal=mAir_flow_nominal)
        "Supply air temperature to room" annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            origin={40,-3})));
      Modelica.Blocks.Sources.Constant mFanFlo(k=mAir_flow_nominal)
        "Mass flow rate of fan" annotation (Placement(transformation(extent={{-54,22},
                {-34,42}})));
      Modelica.Fluid.Interfaces.FluidPort_a port_a1(redeclare package Medium =
            MediumW)
        "Fluid connector a (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{88,-52},{108,-32}}),
            iconTransformation(extent={{92,-48},{108,-32}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_b1(redeclare package Medium =
            MediumW)
        "Fluid connector b (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{-112,-52},{-92,-32}}),
            iconTransformation(extent={{-108,-48},{-92,-32}})));
      Buildings.Fluid.HeatExchangers.DryCoilCounterFlow cooCoi(
        UA_nominal=mAir_flow_nominal*1006*5,
        redeclare package Medium1 = MediumW,
        redeclare package Medium2 = MediumA)                   annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=180,
            origin={-34,-12})));
      Modelica.Fluid.Interfaces.FluidPort_a port_a2(redeclare package Medium =
            MediumA)
        "Fluid connector a (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{-110,42},{-90,62}}),
            iconTransformation(extent={{-108,32},{-92,48}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_b2(redeclare package Medium =
            MediumA)
        "Fluid connector b (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{90,42},{110,62}}),
            iconTransformation(extent={{92,32},{108,48}})));
    equation

      connect(port_a1, port_a1) annotation (Line(
          points={{98,-42},{98,-42}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(cooCoi.port_a1, port_a1) annotation (Line(
          points={{-24,-18},{24,-18},{24,-42},{98,-42}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(cooCoi.port_b1, port_b1) annotation (Line(
          points={{-44,-18},{-68,-18},{-68,-42},{-102,-42}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(cooCoi.port_b2, fan.port_a) annotation (Line(
          points={{-24,-6},{0,-6},{0,-3}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(fan.port_b, TAirSup.port_a) annotation (Line(
          points={{20,-3},{30,-3}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(port_a2,port_a2)  annotation (Line(
          points={{-100,52},{-100,52}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(cooCoi.port_a2,port_a2)  annotation (Line(
          points={{-44,-6},{-78,-6},{-78,52},{-100,52}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(TAirSup.port_b,port_b2)  annotation (Line(
          points={{50,-3},{58,-3},{58,52},{100,52}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(mFanFlo.y, fan.m_flow_in) annotation (Line(
          points={{-33,32},{9.8,32},{9.8,9}},
          color={0,0,127},
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}),        graphics), Icon(coordinateSystem(
              extent={{-100,-100},{100,100}},
                                           preserveAspectRatio=false),
            graphics={
            Rectangle(extent={{-100,72},{-14,0}},   lineColor={0,0,255}),
            Line(
              points={{-86,54},{-30,54}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{-86,42},{-30,42}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{-86,48},{-30,48}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{-86,36},{-30,36}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{-86,30},{-30,30}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{-86,60},{-30,60}},
              color={0,0,255},
              smooth=Smooth.None),   Text(
              extent={{-151,135},{149,95}},
              lineColor={0,0,255},
              fillPattern=FillPattern.HorizontalCylinder,
              fillColor={0,127,255},
              textString="%name"),
            Line(
              points={{-86,18},{-30,18}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{-86,12},{-30,12}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{-86,6},{-30,6}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{-14,72},{40,72}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{40,72},{52,70},{70,62},{84,44},{90,30},{92,8},{90,-8},{
                  84,-24},{74,-36},{66,-44},{52,-50},{36,-52},{20,-48},{10,-42},
                  {0,-34},{-8,-24},{-12,-14},{-14,-4},{-14,0}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-34,0},{-16,0}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Ellipse(extent={{18,34},{60,-6}}, lineColor={0,0,255}),
            Line(
              points={{-78,64},{-78,44},{-78,30},{-78,16},{-76,10},{-70,2},{-64,
                  14},{-64,30},{-62,64},{-54,64},{-52,44},{-52,30},{-52,20},{
                  -50,12},{-44,0},{-38,12},{-36,22},{-36,36},{-36,52},{-36,64}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-86,24},{-30,24}},
              color={0,0,255},
              smooth=Smooth.None)}));
    end FanCoil;

    model Compressor
        replaceable package MediumW =
         Modelica.Media.Interfaces.PartialMedium "Medium in the water side";

         Modelica.SIunits.HeatFlowRate QEva_flow "Evaporator heat input";

         Modelica.SIunits.Temperature TCon
        "Condenser temperature used to compute efficiency";

      parameter Buildings.Fluid.Types.EfficiencyInput effInpEva=
        Buildings.Fluid.Types.EfficiencyInput.volume
        "Temperatures of evaporator fluid used to compute Carnot efficiency"
        annotation (Dialog(tab="Advanced", group="Temperature dependence"));
      parameter Buildings.Fluid.Types.EfficiencyInput effInpCon=
        Buildings.Fluid.Types.EfficiencyInput.port_a
        "Temperatures of condenser fluid used to compute Carnot efficiency"
        annotation (Dialog(tab="Advanced", group="Temperature dependence"));
      parameter Modelica.SIunits.Power P_nominal
        "Nominal compressor power (at y=1)"
        annotation (Dialog(group="Nominal condition"));

      parameter Modelica.SIunits.TemperatureDifference dTCon_nominal = 10
        "Temperature difference condenser outlet-inlet"
        annotation (Dialog(group="Nominal condition"));
      // Efficiency
      parameter Boolean use_eta_Carnot = true
        "Set to true to use Carnot efficiency"
        annotation(Dialog(group="Efficiency"));
      parameter Real etaCar(fixed=use_eta_Carnot)
        "Carnot effectiveness (=COP/COP_Carnot)"
        annotation (Dialog(group="Efficiency", enable=use_eta_Carnot));
      parameter Real COP_nominal(fixed=not use_eta_Carnot)
        "Coefficient of performance"
        annotation (Dialog(group="Efficiency", enable=not use_eta_Carnot));
      parameter Modelica.SIunits.Temperature TCon_nominal = 303.15
        "Condenser temperature"
        annotation (Dialog(group="Efficiency", enable=not use_eta_Carnot));

      parameter Real a[:] = {1}
        "Coefficients for efficiency curve (need p(a=a, y=1)=1)"
        annotation (Dialog(group="Efficiency"));

    protected
      Buildings.HeatTransfer.Sources.PrescribedHeatFlow preHeaFloCon
        "Prescribed heat flow rate"
        annotation (Placement(transformation(extent={{-39,-54},{-19,-34}})));
    public
      Modelica.Fluid.Interfaces.FluidPort_a port_a1(
                         m_flow(min=if allowFlowReversal1 then -Constants.inf else 0),
                         h_outflow(nominal=1E5, start=h_outflow_a1_start),
                         Xi_outflow(each nominal=0.01),
        redeclare package Medium = MediumW)
        "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
        annotation (Placement(transformation(extent={{-110,-10},{-90,10}},
                rotation=0), iconTransformation(extent={{-110,-10},{-90,10}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_b1(
                         m_flow(max=if allowFlowReversal1 then +Constants.inf else 0),
                         h_outflow(nominal=1E5, start=h_outflow_b1_start),
                         Xi_outflow(each nominal=0.01),
        redeclare package Medium = MediumW)
        "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
        annotation (Placement(transformation(extent={{110,-10},{90,10}}, rotation=
                 0), iconTransformation(extent={{110,-10},{90,10}})));
      Modelica.Blocks.Interfaces.RealInput y(min=0, max=1) "Part load ratio"
        annotation (Placement(transformation(extent={{-140,18},{-100,58}},
              rotation=0), iconTransformation(extent={{-140,18},{-100,58}})));
      Modelica.Blocks.Interfaces.RealOutput P(final quantity="Power", unit="W")
        "Electric power consumed by compressor"
        annotation (Placement(transformation(extent={{100,28},{120,48}}),
            iconTransformation(extent={{100,28},{120,48}})));
      .Buildings.Fluid.MixingVolumes.MixingVolume vol(nPorts=2, redeclare
          package Medium =
                   MediumW,
        m_flow_nominal=m1_flow_nominal*tau1/rho1_nominal)
        annotation (Placement(transformation(extent={{-6,-14},{14,-34}})));
      .Buildings.Fluid.FixedResistances.FixedResistanceDpM res(redeclare
          package Medium =
                   MediumW)
        annotation (Placement(transformation(extent={{-76,-10},{-56,10}})));
      Modelica.Blocks.Interfaces.RealInput QCon_flow_in(min=0, max=1)
        "Condenser heat flow rate" annotation (Placement(transformation(extent={{-140,
                -64},{-100,-24}}, rotation=0), iconTransformation(extent={{-140,-64},
                {-100,-24}})));

    initial equation
      assert(dTEva_nominal>0, "Parameter dTEva_nominal must be positive.");
      assert(dTCon_nominal>0, "Parameter dTCon_nominal must be positive.");
      if use_eta_Carnot then
        COP_nominal = etaCar * TEva_nominal/(TCon_nominal-TEva_nominal);
      else
        etaCar = COP_nominal / (TEva_nominal/(TCon_nominal-TEva_nominal));
      end if;
      assert(abs(Buildings.Utilities.Math.Functions.polynomial(
             a=a, x=y)-1) < 0.01, "Efficiency curve is wrong. Need etaPL(y=1)=1.");
      assert(etaCar > 0.1, "Parameters lead to etaCar < 0.1. Check parameters.");
      assert(etaCar < 1,   "Parameters lead to etaCar > 1. Check parameters.");
    equation
      if allowFlowReversal1 then
        if homotopyInitialization then
          staA1=Medium1.setState_phX(port_a1.p,
                              homotopy(actual=actualStream(port_a1.h_outflow),
                                       simplified=inStream(port_a1.h_outflow)),
                              homotopy(actual=actualStream(port_a1.Xi_outflow),
                                       simplified=inStream(port_a1.Xi_outflow)));
          staB1=Medium1.setState_phX(port_b1.p,
                              homotopy(actual=actualStream(port_b1.h_outflow),
                                       simplified=port_b1.h_outflow),
                              homotopy(actual=actualStream(port_b1.Xi_outflow),
                                simplified=port_b1.Xi_outflow));

        else
          staA1=Medium1.setState_phX(port_a1.p,
                              actualStream(port_a1.h_outflow),
                              actualStream(port_a1.Xi_outflow));
          staB1=Medium1.setState_phX(port_b1.p,
                              actualStream(port_b1.h_outflow),
                              actualStream(port_b1.Xi_outflow));
        end if; // homotopyInitialization
      else // reverse flow not allowed
        staA1=Medium1.setState_phX(port_a1.p,
                                 inStream(port_a1.h_outflow),
                                 inStream(port_a1.Xi_outflow));
        staB1=Medium1.setState_phX(port_b1.p,
                                 inStream(port_b1.h_outflow),
                                 inStream(port_b1.Xi_outflow));
      end if;

      // Set temperatures that will be used to compute Carnot efficiency
      if effInpCon == Buildings.Fluid.Types.EfficiencyInput.volume then
        TCon = vol1.heatPort.T;
      elseif effInpCon == Buildings.Fluid.Types.EfficiencyInput.port_a then
        TCon = Medium1.temperature(staA1);
      elseif effInpCon == Buildings.Fluid.Types.EfficiencyInput.port_b then
        TCon = Medium1.temperature(staB1);
      else
        TCon = 0.5 * (Medium1.temperature(staA1)+Medium1.temperature(staB1));
      end if;

      if effInpEva == Buildings.Fluid.Types.EfficiencyInput.volume then
        TEva = vol2.heatPort.T;
      elseif effInpEva == Buildings.Fluid.Types.EfficiencyInput.port_a then
        TEva = Medium2.temperature(staA2);
      elseif effInpEva == Buildings.Fluid.Types.EfficiencyInput.port_b then
        TEva = Medium2.temperature(staB2);
      else
        TEva = 0.5 * (Medium2.temperature(staA2)+Medium2.temperature(staB2));
      end if;

      etaPL  = Buildings.Utilities.Math.Functions.polynomial(a=a, x=y);
      P = y * P_nominal;
      COPCar = TEva / Buildings.Utilities.Math.Functions.smoothMax(x1=1, x2=TCon-TEva, deltaX=0.25);
      COP = etaCar * COPCar * etaPL;
      -QEva_flow = COP * P;
      QCon_flow = P - QEva_flow;

      connect(res.port_a, port_a1) annotation (Line(
          points={{-76,0},{-100,0}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(preHeaFloCon.port, vol.heatPort) annotation (Line(
          points={{-19,-44},{-12,-44},{-12,-24},{-6,-24}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(res.port_b, vol.ports[1]) annotation (Line(
          points={{-56,0},{2,0},{2,-14}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(port_b1, vol.ports[2]) annotation (Line(
          points={{100,0},{6,0},{6,-14}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(port_b1, port_b1) annotation (Line(
          points={{100,0},{100,0}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(preHeaFloCon.Q_flow, QCon_flow_in) annotation (Line(
          points={{-39,-44},{-80,-44},{-120,-44}},
          color={0,0,127},
          smooth=Smooth.Bezier));
      annotation (Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
              preserveAspectRatio=false), graphics), Icon(coordinateSystem(
              extent={{-100,-100},{100,100}},
                                            preserveAspectRatio=false),
            graphics={
            Text(
              extent={{-64,138},{72,100}},
              lineColor={0,0,255},
              textString="Compressor"),
            Line(
              points={{-80,80},{80,80}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,-80},{80,-80}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,-60},{80,-60}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,-40},{80,-40}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,-20},{80,-20}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,0},{80,0}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,20},{80,20}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,40},{80,40}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,60},{80,60}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,80},{-94,70},{-80,60}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,40},{-94,30},{-80,20}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,0},{-94,-10},{-80,-20}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{-80,-40},{-94,-50},{-80,-60}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{80,60},{94,50},{80,40}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{80,20},{94,10},{80,0}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{80,-20},{94,-30},{80,-40}},
              color={0,0,255},
              smooth=Smooth.Bezier),
            Line(
              points={{80,-60},{94,-70},{80,-80}},
              color={0,0,255},
              smooth=Smooth.Bezier)}));
    end Compressor;

    model SimplifiedRoom "Simplified room"
      //extends .Buildings.BaseClasses.BaseIconLow;
      replaceable package MediumA =  Modelica.Media.Interfaces.PartialMedium;

      parameter Integer nPorts=0 "Number of parts" annotation (Evaluate=true,
          Dialog(
          __Dymola_connectorSizing=true,
          tab="General",
          group="Ports"));
      parameter Modelica.SIunits.Length rooLen "Length of the room";
      parameter Modelica.SIunits.Length rooWid "Width of the room";
      parameter Modelica.SIunits.Height rooHei "Height of the room";
      parameter Modelica.SIunits.Power QRoo_flow "Heat generation of the room";

      parameter Modelica.SIunits.MassFlowRate m_flow_nominal
        "Nominal mass flow rate";
      Buildings.Fluid.MixingVolumes.MixingVolume  rooVol(
        nPorts=nPorts,
        V=rooLen*rooWid*rooHei,
        m_flow_nominal=m_flow_nominal,
        energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        redeclare each package Medium = MediumA,
        final T_start=293.15) "Volume of air in the room"
        annotation (Placement(transformation(extent={{21,20},{41,0}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow QSou
        "Heat source of the room"
        annotation (Placement(transformation(extent={{-38,0},{-18,20}})));
      Modelica.Blocks.Sources.Ramp ramp(
        height=QRoo_flow,
        offset=0,
        duration=36000,
        startTime=0)
        annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
      Modelica.Fluid.Vessels.BaseClasses.VesselFluidPorts_b airPorts[nPorts](
          redeclare each package Medium = MediumA) "Fluid inlets and outlets"
        annotation (Placement(transformation(
            extent={{-37,-14},{37,14}},
            rotation=90,
            origin={81,34}),  iconTransformation(
            extent={{-37,-14},{37,14}},
            rotation=180,
            origin={0,-70})));
    equation

      connect(rooVol.ports,airPorts)  annotation (Line(
          points={{31,20},{32,20},{32,34},{81,34}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(QSou.port,rooVol. heatPort) annotation (Line(
          points={{-18,10},{21,10}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(ramp.y,QSou. Q_flow) annotation (Line(
          points={{-59,10},{-38,10}},
          color={0,0,127},
          smooth=Smooth.None));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                {100,100}}),            graphics={
            Polygon(
              points={{-4,-12},{-4,-12}},
              lineColor={0,0,127},
              pattern=LinePattern.Dash,
              smooth=Smooth.None,
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{0,100},{-100,48},{100,48},{0,100}},
              lineColor={0,0,127},
              smooth=Smooth.None,
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid),
            Rectangle(
              extent={{-60,48},{60,-72}},
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid,
              pattern=LinePattern.None),
            Polygon(
              points={{0,8},{0,8}},
              lineColor={0,0,127},
              pattern=LinePattern.Dash,
              smooth=Smooth.None,
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid),
            Rectangle(
              extent={{-20,18},{20,-22}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-147,144},{153,104}},
              lineColor={0,0,255},
              textString="%name")}),       Diagram(coordinateSystem(
              preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
            graphics));
    end SimplifiedRoom;

    model Pump
       replaceable package MediumW =
         Modelica.Media.Interfaces.PartialMedium "Medium in the water side";
         parameter Modelica.SIunits.MassFlowRate m_flow_nominal
        "Nominal mass flow rate ";

      Buildings.Fluid.Movers.FlowControlled_dp  Pum(
        m_flow_nominal=m_flow_nominal,
        addPowerToMedium=false,
        allowFlowReversal=true,
        filteredSpeed=true,
        redeclare package Medium = MediumW)
        annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
      Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
            MediumW)
        "Fluid connector a (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
            MediumW)
        "Fluid connector b (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{90,-10},{110,10}})));
      Modelica.Blocks.Interfaces.RealOutput P
        "Electrical power consumed by pump"
        annotation (Placement(transformation(extent={{100,50},{120,70}})));
      Modelica.Blocks.Math.Gain gain(k=m_flow_nominal) annotation (Placement(transformation(extent={{-60,50},
                {-40,70}})));
      Modelica.Blocks.Interfaces.RealInput On(min=0,max=1) "On signal"    annotation (Placement(transformation(extent={{-118,51},
                {-100,69}})));
    equation
      connect(Pum.port_a,port_a)  annotation (Line(
          points={{-10,0},{-100,0}},
          color={0,127,255},
          smooth=Smooth.None,
          thickness=1));
      connect(Pum.port_b,port_b)  annotation (Line(
          points={{10,0},{100,0}},
          color={0,127,255},
          smooth=Smooth.None,
          thickness=1));
      connect(port_b,port_b)  annotation (Line(
          points={{100,0},{100,0}},
          color={0,127,255},
          smooth=Smooth.None,
          thickness=1));
      connect(Pum.P,P)  annotation (Line(
          points={{11,8},{60,8},{60,60},{110,60}},
          color={0,0,127},
          smooth=Smooth.None,
          pattern=LinePattern.Dash));
      connect(gain.u,On)  annotation (Line(
          points={{-62,60},{-109,60}},
          color={0,0,127},
          smooth=Smooth.None,
          pattern=LinePattern.Dash));
      connect(P, P) annotation (Line(
          points={{110,60},{110,60}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(gain.y, Pum.dp_in) annotation (Line(
          points={{-39,60},{-0.2,60},{-0.2,12}},
          color={0,0,127},
          smooth=Smooth.None,
          pattern=LinePattern.Dash));
      annotation (Icon(graphics={
            Ellipse(
              extent={{-20,20},{20,-20}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{16,0},{-8,-12},{-8,10},{16,0}},
              lineColor={0,0,255},
              smooth=Smooth.None,
              fillColor={0,0,255},
              fillPattern=FillPattern.Solid),
            Line(
              points={{-98,0},{-20,0}},
              color={0,0,255},
              smooth=Smooth.None),
            Line(
              points={{20,0},{98,0}},
              color={0,0,255},
              smooth=Smooth.None),
            Text(
              extent={{-44,104},{50,136}},
              lineColor={0,0,255},
              textString="%name")}), Diagram(coordinateSystem(preserveAspectRatio=false,
              extent={{-100,-100},{100,100}}), graphics));
    end Pump;

    package Examples
      model FCU
        import HGV;
        import Buildings;
        replaceable package MediumA = Buildings.Media.Air "Medium model";
        replaceable package MediumW = Buildings.Media.Water "Medium model";

        parameter Modelica.SIunits.MassFlowRate mAir_flow_nominal=1
          "Nominal air flow rate";
        parameter Modelica.SIunits.MassFlowRate mWat_flow_nominal=10
          "Nominal water flow rate";

        HGV.BaseClasses.Components.FanCoil fanCoil(
          redeclare package MediumW = MediumW,
          redeclare package MediumA = MediumA,
          cooCoi(
            m1_flow_nominal=mWat_flow_nominal,
            m2_flow_nominal=mAir_flow_nominal,
            dp1_nominal=1000,
            dp2_nominal=500),
          fan(m_flow_nominal=mAir_flow_nominal),
          TAirSup(m_flow_nominal=mAir_flow_nominal),
          mAir_flow_nominal=mAir_flow_nominal,
          mWat_flow_nominal=mWat_flow_nominal)
          annotation (Placement(transformation(extent={{-20,0},{0,20}})));
        HGV.Buildings.Fluid.Sources.FixedBoundary bou(
          nPorts=1,
          redeclare package Medium = MediumW,
          T=305.37)
          annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
        HGV.Buildings.Fluid.Sources.MassFlowSource_T boundary(nPorts=1, redeclare
            package Medium = MediumW,
          m_flow=10,
          T=301.48)
          annotation (Placement(transformation(extent={{40,-20},{20,0}})));
        HGV.Buildings.Fluid.Sources.FixedBoundary bou1(
          nPorts=1,
          redeclare package Medium = MediumA,
          T=293.15)
          annotation (Placement(transformation(extent={{40,20},{20,40}})));
        HGV.Buildings.Fluid.Sources.MassFlowSource_T boundary1(
          nPorts=1,
          redeclare package Medium = MediumA,
          m_flow=1,
          T=293.15)
          annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
      equation
        connect(fanCoil.port_a1, boundary.ports[1]) annotation (Line(
            points={{0,6},{8,6},{8,-10},{20,-10}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(boundary1.ports[1], fanCoil.port_a2) annotation (Line(
            points={{-40,30},{-28,30},{-28,14},{-20,14}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(bou1.ports[1], fanCoil.port_b2) annotation (Line(
            points={{20,30},{8,30},{8,14},{0,14}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(bou.ports[1], fanCoil.port_b1) annotation (Line(
            points={{-40,-10},{-28,-10},{-28,6},{-20,6}},
            color={0,127,255},
            smooth=Smooth.None));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics));
      end FCU;

      model Room
        replaceable package MediumA = Buildings.Media.Air "Medium model";

        Buildings.Fluid.Sources.FixedBoundary sin(          redeclare package
            Medium = MediumA, nPorts=1)
                              annotation (Placement(transformation(extent={{10,
                  -10},{-10,10}}, origin={50,10})));
        Modelica.Fluid.Sources.MassFlowSource_T boundary(
          redeclare package Medium = MediumA,
          m_flow=1,
          T=293.15,
          nPorts=1)
          annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
        SimplifiedRoom simplifiedRoom(nPorts=2)
          annotation (Placement(transformation(extent={{-10,0},{10,20}})));
      equation
        connect(boundary.ports[1], simplifiedRoom.airPorts[1]) annotation (Line(
            points={{-40,10},{-20,10},{-20,3},{1.85,3}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(sin.ports[1], simplifiedRoom.airPorts[2]) annotation (Line(
            points={{40,10},{20,10},{20,3},{-1.85,3}},
            color={0,127,255},
            smooth=Smooth.None));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-60,-60},
                  {60,60}}),            graphics), Icon(coordinateSystem(extent=
                 {{-60,-60},{60,60}})));
      end Room;

      model FCU1
        replaceable package MediumA = Buildings.Media.Air "Medium model";
        replaceable package MediumW = Buildings.Media.Water "Medium model";

        parameter Modelica.SIunits.MassFlowRate mAir_flow_nominal=1
          "Nominal air flow rate";
        parameter Modelica.SIunits.MassFlowRate mWat_flow_nominal=10
          "Nominal water flow rate";

        FanCoil                            fanCoil(
          redeclare package MediumW = MediumW,
          redeclare package MediumA = MediumA,
          cooCoi(
            m1_flow_nominal=mWat_flow_nominal,
            m2_flow_nominal=mAir_flow_nominal,
            dp1_nominal=1000,
            dp2_nominal=500),
          fan(m_flow_nominal=mAir_flow_nominal),
          TAirSup(m_flow_nominal=mAir_flow_nominal),
          mAir_flow_nominal=mAir_flow_nominal,
          mWat_flow_nominal=mWat_flow_nominal)
          annotation (Placement(transformation(extent={{-20,0},{0,20}})));
        Buildings.Fluid.Sources.FixedBoundary     bou(
          nPorts=1,
          redeclare package Medium = MediumW,
          T=303.15)
          annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
        Buildings.Fluid.Sources.MassFlowSource_T     boundary(nPorts=1, redeclare
            package Medium = MediumW,
          m_flow=10,
          T=301.15)
          annotation (Placement(transformation(extent={{40,-20},{20,0}})));
        SimplifiedRoom simplifiedRoom1(
          rooLen=4,
          rooWid=3,
          rooHei=2,
          redeclare package MediumA = MediumA,
          QRoo_flow=1000,
          nPorts=2,
          m_flow_nominal=rooVol(m_flow_nominal=simplifiedRoom.m_flow_nominal))
          annotation (Placement(transformation(extent={{-20,40},{0,60}})));
      equation
        connect(fanCoil.port_a1,boundary. ports[1]) annotation (Line(
            points={{0,6},{8,6},{8,-10},{20,-10}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(bou.ports[1],fanCoil. port_b1) annotation (Line(
            points={{-40,-10},{-28,-10},{-28,6},{-20,6}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(fanCoil.port_b2, simplifiedRoom1.airPorts[1]) annotation (Line(
            points={{0,14},{36,14},{36,42},{-8.15,42},{-8.15,43}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(fanCoil.port_a2, simplifiedRoom1.airPorts[2]) annotation (Line(
            points={{-20,14},{-52,14},{-52,42},{-11.85,42},{-11.85,43}},
            color={0,127,255},
            smooth=Smooth.None));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics));
      end FCU1;

      model Compressor "Compressor"
        import HGV;
        replaceable package MediumW = Buildings.Media.Water "Medium model";
        HGV.BaseClasses.Components.Compressor compressor
          annotation (Placement(transformation(extent={{0,0},{20,20}})));
        HGV.Buildings.Fluid.Sources.FixedBoundary sin(nPorts=1, redeclare
            package Medium =
                     MediumW) annotation (Placement(transformation(extent={{10,-10},{-10,
                  10}}, origin={74,10})));
        Modelica.Blocks.Sources.Ramp uCom(
          height=-1,
          duration=60,
          offset=1,
          startTime=1800) "Compressor control signal"
          annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
        HGV.Buildings.Fluid.Sources.MassFlowSource_T boundary(nPorts=1, redeclare
            package Medium = MediumW)
          annotation (Placement(transformation(extent={{-60,0},{-40,20}})));

        MediumW.ThermodynamicState staA1 "Medium properties in port_a1";
        MediumW.ThermodynamicState staB1 "Medium properties in port_b1";

      initial equation
        assert(dTEva_nominal>0, "Parameter dTEva_nominal must be positive.");
        assert(dTCon_nominal>0, "Parameter dTCon_nominal must be positive.");
        if use_eta_Carnot then
          COP_nominal = etaCar * TEva_nominal/(TCon_nominal-TEva_nominal);
        else
          etaCar = COP_nominal / (TEva_nominal/(TCon_nominal-TEva_nominal));
        end if;
        assert(abs(Buildings.Utilities.Math.Functions.polynomial(
               a=a, x=y)-1) < 0.01, "Efficiency curve is wrong. Need etaPL(y=1)=1.");
        assert(etaCar > 0.1, "Parameters lead to etaCar < 0.1. Check parameters.");
        assert(etaCar < 1,   "Parameters lead to etaCar > 1. Check parameters.");
      equation
        if allowFlowReversal1 then
          if homotopyInitialization then
            staA1=Medium1.setState_phX(port_a1.p,
                                homotopy(actual=actualStream(port_a1.h_outflow),
                                         simplified=inStream(port_a1.h_outflow)),
                                homotopy(actual=actualStream(port_a1.Xi_outflow),
                                         simplified=inStream(port_a1.Xi_outflow)));
            staB1=Medium1.setState_phX(port_b1.p,
                                homotopy(actual=actualStream(port_b1.h_outflow),
                                         simplified=port_b1.h_outflow),
                                homotopy(actual=actualStream(port_b1.Xi_outflow),
                                  simplified=port_b1.Xi_outflow));

          else
            staA1=Medium1.setState_phX(port_a1.p,
                                actualStream(port_a1.h_outflow),
                                actualStream(port_a1.Xi_outflow));
            staB1=Medium1.setState_phX(port_b1.p,
                                actualStream(port_b1.h_outflow),
                                actualStream(port_b1.Xi_outflow));
          end if; // homotopyInitialization
        else // reverse flow not allowed
          staA1=Medium1.setState_phX(port_a1.p,
                                   inStream(port_a1.h_outflow),
                                   inStream(port_a1.Xi_outflow));
          staB1=Medium1.setState_phX(port_b1.p,
                                   inStream(port_b1.h_outflow),
                                   inStream(port_b1.Xi_outflow));
        end if;

        // Set temperatures that will be used to compute Carnot efficiency
        if effInpCon == Buildings.Fluid.Types.EfficiencyInput.volume then
          TCon = vol1.heatPort.T;
        elseif effInpCon == Buildings.Fluid.Types.EfficiencyInput.port_a then
          TCon = Medium1.temperature(staA1);
        elseif effInpCon == Buildings.Fluid.Types.EfficiencyInput.port_b then
          TCon = Medium1.temperature(staB1);
        else
          TCon = 0.5 * (Medium1.temperature(staA1)+Medium1.temperature(staB1));
        end if;

        if effInpEva == Buildings.Fluid.Types.EfficiencyInput.volume then
          TEva = vol2.heatPort.T;
        elseif effInpEva == Buildings.Fluid.Types.EfficiencyInput.port_a then
          TEva = Medium2.temperature(staA2);
        elseif effInpEva == Buildings.Fluid.Types.EfficiencyInput.port_b then
          TEva = Medium2.temperature(staB2);
        else
          TEva = 0.5 * (Medium2.temperature(staA2)+Medium2.temperature(staB2));
        end if;

        etaPL  = Buildings.Utilities.Math.Functions.polynomial(a=a, x=y);
        P = y * P_nominal;
        COPCar = TEva / Buildings.Utilities.Math.Functions.smoothMax(x1=1, x2=TCon-TEva, deltaX=0.25);
        COP = etaCar * COPCar * etaPL;
        -QEva_flow = COP * P;
        QCon_flow = P - QEva_flow;
        connect(compressor.y, uCom.y) annotation (Line(
            points={{-2,13.8},{-22,13.8},{-22,50},{-39,50}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(boundary.ports[1], compressor.port_a1) annotation (Line(
            points={{-40,10},{0,10}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(sin.ports[1], compressor.port_b1) annotation (Line(
            points={{64,10},{20,10}},
            color={0,127,255},
            smooth=Smooth.None));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics));
      end Compressor;

      model PumpConstantSpeed
        import HGV;
        import Buildings;
        replaceable package MediumW = Buildings.Media.Water "Medium model";

        parameter Modelica.SIunits.MassFlowRate m_flow_nominal=10;
        Pump                                                        pumCon(
          m_flow_nominal=m_flow_nominal, redeclare package MediumW = MediumW)
          annotation (Placement(transformation(extent={{0,0},{20,20}})));
        HGV.Buildings.Fluid.Sources.Boundary_ph
                                            sou(
          use_p_in=false,
          nPorts=2,
          p=0,
          redeclare package Medium = MediumW)
                    annotation (Placement(transformation(extent={{-80,-20},{-60,0}},
                rotation=0)));
        Modelica.Blocks.Sources.Step On(startTime=20)
          annotation (Placement(transformation(extent={{-80,70},{-60,90}})));
        HGV.Buildings.Fluid.Sensors.MassFlowRate
                                             senMasFlo(redeclare package Medium
            = MediumW)
          annotation (Placement(transformation(extent={{20,-80},{0,-60}})));
        inner Modelica.Fluid.System system
          annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
        HGV.Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                                            dpDyn(
          m_flow_nominal=m_flow_nominal,
          dp_nominal=6000,
          redeclare package Medium = MediumW) "Pressure drop"
          annotation (Placement(transformation(extent={{30,0},{50,20}})));
        HGV.Buildings.Fluid.FixedResistances.FixedResistanceDpM
                                                            dpDyn1(
          m_flow_nominal=m_flow_nominal,
          dp_nominal=6000,
          redeclare package Medium = MediumW) "Pressure drop"
          annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
      equation
        connect(sou.ports[1],pumCon. port_a) annotation (Line(
            points={{-60,-8},{-60,10},{0,10}},
            color={0,127,255},
            smooth=Smooth.None,
            thickness=1));
        connect(On.y,pumCon. On) annotation (Line(
            points={{-59,80},{-46,80},{-46,16},{-0.9,16}},
            color={0,0,127},
            smooth=Smooth.None,
            pattern=LinePattern.Dash));
        connect(senMasFlo.port_b,sou. ports[2]) annotation (Line(
            points={{0,-70},{-60,-70},{-60,-12}},
            color={0,127,255},
            smooth=Smooth.None,
            thickness=1));
        connect(pumCon.port_b,dpDyn. port_a) annotation (Line(
            points={{20,10},{30,10}},
            color={0,127,255},
            smooth=Smooth.None,
            thickness=1));
        connect(dpDyn.port_b,senMasFlo. port_a) annotation (Line(
            points={{50,10},{80,10},{80,-70},{20,-70}},
            color={0,127,255},
            smooth=Smooth.None,
            thickness=1));
        connect(dpDyn1.port_b,senMasFlo. port_a) annotation (Line(
            points={{20,-30},{60,-30},{60,10},{80,10},{80,-70},{20,-70}},
            color={0,127,255},
            smooth=Smooth.None,
            thickness=1));
        connect(dpDyn1.port_a,pumCon. port_a) annotation (Line(
            points={{0,-30},{-20,-30},{-20,10},{0,10}},
            color={0,127,255},
            smooth=Smooth.None,
            thickness=1));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics));
      end PumpConstantSpeed;
      annotation (Icon(graphics={
            Rectangle(
              lineColor={200,200,200},
              fillColor={248,248,248},
              fillPattern=FillPattern.HorizontalCylinder,
              extent={{-100,-100},{100,100}},
              radius=25.0),
            Rectangle(
              lineColor={128,128,128},
              fillPattern=FillPattern.None,
              extent={{-100,-100},{100,100}},
              radius=25.0),
            Polygon(
              origin={8,14},
              lineColor={78,138,73},
              fillColor={78,138,73},
              pattern=LinePattern.None,
              fillPattern=FillPattern.Solid,
              points={{-58.0,46.0},{42.0,-14.0},{-58.0,-74.0},{-58.0,46.0}})}));
    end Examples;
  end Components;

  package Control
  end Control;
end BaseClasses;
