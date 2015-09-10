within HGV;
package BaseClasses
  package Components
    model FCU "Fan coil unit"

       replaceable package MediumW = Buildings.Media.Water "Medium model";
       replaceable package MediumA = Buildings.Media.Air "Medium model";

      parameter Integer nPorts=0 "Number of parts";
      parameter Modelica.SIunits.Length rooLen "Length of the room";
      parameter Modelica.SIunits.Length rooWid "Width of the room";
      parameter Modelica.SIunits.Height rooHei "Height of the room";
      parameter Modelica.SIunits.Power QRoo_flow "Heat generation of the room";

      parameter Modelica.SIunits.MassFlowRate m_flow_nominal
        "Nominal mass flow rate";
      Buildings.Fluid.Movers.FlowControlled_m_flow fan(
        redeclare package Medium = MediumA,
        m_flow_nominal=mAir_flow_nominal,
        dp(start=249),
        m_flow(start=mAir_flow_nominal),
        filteredSpeed=false,
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        T_start=293.15) "Fan for air flow through the data center"
        annotation (Placement(transformation(extent={{30,-23},{50,-3}})));
      Buildings.Fluid.Sensors.TemperatureTwoPort TAirSup(redeclare package
          Medium =
            MediumA, m_flow_nominal=mAir_flow_nominal)
        "Supply air temperature to data center" annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            origin={70,-13})));
      Modelica.Blocks.Sources.Constant mFanFlo(k=mAir_flow_nominal)
        "Mass flow rate of fan" annotation (Placement(transformation(extent={{-24,0},
                {-4,20}})));
      Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
            Medium)
        "Fluid connector a (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{90,-38},{110,-18}}),
            iconTransformation(extent={{94,-46},{106,-34}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
            Medium)
        "Fluid connector b (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{-70,-38},{-50,-18}}),
            iconTransformation(extent={{-66,-46},{-54,-34}})));
      Buildings.Fluid.HeatExchangers.WetCoilCounterFlow cooCoi annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=180,
            origin={-4,-22})));
      Modelica.Fluid.Interfaces.FluidPort_b port_b1(
                                                   redeclare package Medium =
            Medium)
        "Fluid connector b (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{90,10},{110,30}}),
            iconTransformation(extent={{-66,34},{-54,46}})));
      Modelica.Fluid.Interfaces.FluidPort_a port_a1(
                                                   redeclare package Medium =
            Medium)
        "Fluid connector a (positive design flow direction is from port_a to port_b)"
        annotation (Placement(transformation(extent={{-70,10},{-50,30}}),
            iconTransformation(extent={{94,34},{106,46}})));
    equation

      connect(port_a, port_a) annotation (Line(
          points={{100,-28},{100,-28}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(cooCoi.port_a1, port_a) annotation (Line(
          points={{6,-28},{100,-28}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(cooCoi.port_b1, port_b) annotation (Line(
          points={{-14,-28},{-60,-28}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(cooCoi.port_b2, fan.port_a) annotation (Line(
          points={{6,-16},{30,-16},{30,-13}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(fan.port_b, TAirSup.port_a) annotation (Line(
          points={{50,-13},{60,-13}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(port_a1, port_a1) annotation (Line(
          points={{-60,20},{-60,20}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(cooCoi.port_a2, port_a1) annotation (Line(
          points={{-14,-16},{-48,-16},{-48,20},{-60,20}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(TAirSup.port_b, port_b1) annotation (Line(
          points={{80,-13},{88,-13},{88,20},{100,20}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(mFanFlo.y, fan.m_flow_in) annotation (Line(
          points={{-3,10},{39.8,10},{39.8,-1}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(port_b1, port_b1) annotation (Line(
          points={{100,20},{100,20},{100,20}},
          color={0,127,255},
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-60,-40},
                {100,40}}),               graphics), Icon(coordinateSystem(
              extent={{-60,-40},{100,40}}, preserveAspectRatio=false),
            graphics={
            Rectangle(extent={{-60,40},{100,-40}},
                                                 lineColor={0,0,255}),
            Ellipse(extent={{-40,-12},{20,12}},lineColor={0,0,255}),
            Ellipse(extent={{20,-12},{80,12}},lineColor={0,0,255}),
            Text(
              extent={{-2,58},{40,40}},
              lineColor={0,0,0},
              lineThickness=1,
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid,
              textString="FCU")}));
    end FCU;

    model Compressor
        replaceable package MediumW = .Buildings.Media.Water "Medium model";
    protected
      ChillerPlantSystem.Buildings.HeatTransfer.Sources.PrescribedHeatFlow
                                                        preHeaFloCon
        "Prescribed heat flow rate"
        annotation (Placement(transformation(extent={{-39,20},{-19,40}})));
      Modelica.Blocks.Sources.RealExpression QCon_flow_in(y=QCon_flow)
        "Condenser heat flow rate"
        annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
    public
      Modelica.Fluid.Interfaces.FluidPort_a port_a1(
                         redeclare package Medium = Medium1,
                         m_flow(min=if allowFlowReversal1 then -Constants.inf else 0),
                         h_outflow(nominal=1E5, start=h_outflow_a1_start),
                         Xi_outflow(each nominal=0.01))
        "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
        annotation (Placement(transformation(extent={{-110,40},{-90,60}},
                rotation=0)));
      Modelica.Fluid.Interfaces.FluidPort_b port_b1(
                         redeclare package Medium = Medium1,
                         m_flow(max=if allowFlowReversal1 then +Constants.inf else 0),
                         h_outflow(nominal=1E5, start=h_outflow_b1_start),
                         Xi_outflow(each nominal=0.01))
        "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
        annotation (Placement(transformation(extent={{110,40},{90,60}},  rotation=
                 0), iconTransformation(extent={{110,40},{90,60}})));
      Modelica.Blocks.Interfaces.RealInput y(min=0, max=1) "Part load ratio"
        annotation (Placement(transformation(extent={{-140,60},{-100,100}},
              rotation=0)));
      Modelica.Blocks.Interfaces.RealOutput P(final quantity="Power", unit="W")
        "Electric power consumed by compressor"
        annotation (Placement(transformation(extent={{100,70},{120,90}}),
            iconTransformation(extent={{100,70},{120,90}})));
      .Buildings.Fluid.MixingVolumes.MixingVolume vol(nPorts=2)
        annotation (Placement(transformation(extent={{-6,60},{14,40}})));
      .Buildings.Fluid.FixedResistances.FixedResistanceDpM res
        annotation (Placement(transformation(extent={{-76,58},{-56,78}})));
    equation

      connect(QCon_flow_in.y,preHeaFloCon. Q_flow) annotation (Line(
          points={{-59,30},{-39,30}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(res.port_a, port_a1) annotation (Line(
          points={{-76,68},{-88,68},{-88,50},{-100,50}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(preHeaFloCon.port, vol.heatPort) annotation (Line(
          points={{-19,30},{-12,30},{-12,50},{-6,50}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(res.port_b, vol.ports[1]) annotation (Line(
          points={{-56,68},{2,68},{2,60}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(port_b1, vol.ports[2]) annotation (Line(
          points={{100,50},{20,50},{20,68},{6,68},{6,60}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(port_b1, port_b1) annotation (Line(
          points={{100,50},{100,48},{100,48},{100,50}},
          color={0,127,255},
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(extent={{-100,20},{100,100}},
              preserveAspectRatio=false), graphics), Icon(coordinateSystem(
              extent={{-100,20},{100,100}}, preserveAspectRatio=false),
            graphics={Rectangle(
              extent={{-80,100},{80,20}},
              lineColor={0,0,255},
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid), Rectangle(
              extent={{-92,56},{94,44}},
              lineColor={0,0,255},
              fillColor={85,85,255},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-68,18},{68,-20}},
              lineColor={0,0,255},
              textString="Compressor")}));
    end Compressor;

    model SimplifiedRoom "Simplified room"
      extends .Buildings.BaseClasses.BaseIconLow;
      replaceable package MediumA = Buildings.Media.Air "Medium model";

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
      .Buildings.Fluid.MixingVolumes.MixingVolume rooVol(
        nPorts=nPorts,
        V=rooLen*rooWid*rooHei,
        m_flow_nominal=m_flow_nominal,
        energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        redeclare each package Medium = MediumA,
        final T_start=293.15) "Volume of air in the room"
        annotation (Placement(transformation(extent={{9,-78},{29,-98}})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow QSou
        "Heat source of the room"
        annotation (Placement(transformation(extent={{-50,-98},{-30,-78}})));
      Modelica.Blocks.Sources.Ramp ramp(
        height=QRoo_flow,
        offset=0,
        duration=36000,
        startTime=0)
        annotation (Placement(transformation(extent={{-92,-98},{-72,-78}})));
      Modelica.Fluid.Vessels.BaseClasses.VesselFluidPorts_b airPorts[nPorts](
          redeclare each package Medium = MediumA) "Fluid inlets and outlets"
        annotation (Placement(transformation(
            extent={{-37,-14},{37,14}},
            rotation=90,
            origin={69,-64}), iconTransformation(
            extent={{-37,-14},{37,14}},
            rotation=180,
            origin={-10,6})));
    equation

      connect(rooVol.ports,airPorts)  annotation (Line(
          points={{19,-78},{20,-78},{20,-64},{69,-64}},
          color={0,127,255},
          smooth=Smooth.None));
      connect(QSou.port,rooVol. heatPort) annotation (Line(
          points={{-30,-88},{9,-88}},
          color={191,0,0},
          smooth=Smooth.None));
      connect(ramp.y,QSou. Q_flow) annotation (Line(
          points={{-71,-88},{-50,-88}},
          color={0,0,127},
          smooth=Smooth.None));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -120},{80,0}}),         graphics={
            Polygon(
              points={{0,-20},{0,-20}},
              lineColor={0,0,127},
              pattern=LinePattern.Dash,
              smooth=Smooth.None,
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid), Rectangle(
              extent={{-100,6},{80,-92}},
              lineColor={0,0,0},
              fillColor={135,135,135},
              fillPattern=FillPattern.Solid,
              lineThickness=0.5)}),        Diagram(coordinateSystem(
              preserveAspectRatio=false, extent={{-100,-120},{80,0}}),
            graphics));
    end SimplifiedRoom;

    package Examples
      model FCU
        import HGV;
        import Buildings;
        replaceable package MediumA = Buildings.Media.Air "Medium model";
        replaceable package MediumW = Buildings.Media.Water "Medium model";
        HGV.BaseClasses.Components.FCU FCU(
          rooLen=5,
          rooWid=4,
          rooHei=3,
          QRoo_flow=1000)
          annotation (Placement(transformation(extent={{-8,-58},{12,-38}})));
        Modelica.Blocks.Sources.Ramp ramp
          annotation (Placement(transformation(extent={{-58,-14},{-38,6}})));
        HGV.Buildings.Fluid.Sources.FixedBoundary
                                              sin1(nPorts=1, redeclare package
            Medium =
              Medium1)                                     annotation (Placement(
              transformation(
              extent={{10,-10},{-10,10}},
              origin={50,-8})));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics));
      end FCU;
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
      model Room
        replaceable package MediumA = Buildings.Media.Air "Medium model";

        SimplifiedRoom simplifiedRoom(
          nPorts=2,
          rooLen=5,
          rooWid=4,
          rooHei=3,
          QRoo_flow=1000,
          redeclare package MediumA = MediumA,
          m_flow_nominal=0.5)
          annotation (Placement(transformation(extent={{-18,-18},{0,-6}})));
        Buildings.Fluid.Sources.FixedBoundary sin(nPorts=1, redeclare package
            Medium = MediumA) annotation (Placement(transformation(extent={{10,
                  -10},{-10,10}}, origin={42,10})));
        Modelica.Fluid.Sources.MassFlowSource_T boundary(
          nPorts=1,
          redeclare package Medium = MediumA,
          m_flow=1,
          T=293.15)
          annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
      equation
        connect(sin.ports[1], simplifiedRoom.airPorts[1]) annotation (Line(
            points={{32,10},{-7.15,10},{-7.15,-5.4}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(boundary.ports[1], simplifiedRoom.airPorts[2]) annotation (Line(
            points={{-40,10},{-10.85,10},{-10.85,-5.4}},
            color={0,127,255},
            smooth=Smooth.None));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent=
                  {{-60,-60},{60,60}}), graphics), Icon(coordinateSystem(extent
                ={{-60,-60},{60,60}})));
      end Room;
    end Examples;
  end Components;

  package Control
  end Control;
end BaseClasses;
