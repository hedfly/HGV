within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Fan;
model Constant_Speed_Fan
 replaceable package Medium =
      Modelica.Media.Interfaces.PartialMedium "Medium for the air";
 parameter Boolean add_heat_to_fluid = true
    "Set to true to add heat to the fluid";
 parameter Real hydraulicEfficiency[:] "Hydraulic efficiecny";
 parameter Real motorEfficiency[:] "Motor efficiecny";
 parameter Real v_flow[:] "Volume flow rate curve";
 parameter Real p_flow[:] "Pressure curve";

  Buildings.Fluid.Movers.SpeedControlled_y fan(
    addPowerToMedium=add_heat_to_fluid,
    redeclare package Medium = Medium,
    per(
      motorCooledByFluid=add_heat_to_fluid,
      use_powerCharacteristic=false,
      pressure(V_flow=v_flow, dp=p_flow),
      hydraulicEfficiency(eta=hydraulicEfficiency),
      motorEfficiency(eta=motorEfficiency)))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium = Medium)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium = Medium)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal annotation (Placement(transformation(extent={{-60,30},{-40,50}})));
  Modelica.Blocks.Interfaces.BooleanInput On
    "Connector of Boolean input signal"                                          annotation (Placement(transformation(extent={{-120,30},{-100,50}})));
  Modelica.Blocks.Interfaces.RealOutput PFan "Electrical power consumed"
    annotation (Placement(transformation(extent={{100,30},{120,50}})));
equation
  connect(port_b, port_b) annotation (Line(points={{100,0},{100,0},{100,-4},{100,
          0}}, color={0,127,255}));
  connect(fan.port_a, port_a) annotation (Line(
      points={{-10,0},{-56,0},{-100,0}},
      color={0,127,255},
      thickness=1));
  connect(fan.port_b, port_b) annotation (Line(
      points={{10,0},{100,0}},
      color={0,127,255},
      thickness=1));
  connect(booleanToReal.y, fan.y) annotation (Line(
      points={{-39,40},{0,40},{0,12}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(booleanToReal.u, On) annotation (Line(
      points={{-62,40},{-86,40},{-110,40}},
      color={255,0,255},
      pattern=LinePattern.Dash));
  connect(port_a, port_a) annotation (Line(points={{-100,0},{-100,2},{-100,0}}, color={0,127,255}));
  connect(fan.P, PFan) annotation (Line(
      points={{11,8},{60,8},{60,40},{110,40}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics={
        Rectangle(
          extent={{0,80},{100,20}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-86,80},{90,-86}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-46,48},{46,-48}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-36,30},{36,-32}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="C"),       Text(
          extent={{-149,135},{151,95}},
          lineColor={0,0,255},
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={0,127,255},
          textString="%name")}), Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-100,-100},{100,100}})));
end Constant_Speed_Fan;
