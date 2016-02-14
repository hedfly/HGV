within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Fan;
model Variable_Speed_Fan
 replaceable package Medium =
      Modelica.Media.Interfaces.PartialMedium "Medium for the air";
 parameter Boolean add_heat_to_fluid = true
    "Set to true to add heat to the fluid";
 parameter Real P[:] "Fan power";
 parameter Real v_flow[:] "Volume flow rate curve";
 parameter Real p_flow[:] "Pressure curve";

  Buildings.Fluid.Movers.SpeedControlled_y fan(
    addPowerToMedium=add_heat_to_fluid,
    redeclare package Medium = Medium,
    per(
      motorCooledByFluid=add_heat_to_fluid,
      pressure(V_flow=v_flow, dp=p_flow),
      use_powerCharacteristic=true,
      power(V_flow=v_flow, P=P)))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium = Medium)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium = Medium)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Blocks.Interfaces.RealInput y "Speed Ratio"
    annotation (Placement(transformation(extent={{-120,30},{-100,50}})));
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
  connect(port_a, port_a) annotation (Line(points={{-100,0},{-100,2},{-100,0}}, color={0,127,255}));
  connect(fan.y, y) annotation (Line(
      points={{0,12},{0,12},{0,40},{-110,40}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(fan.P, PFan) annotation (Line(points={{11,8},{60,8},{60,40},{110,40}},
        color={0,0,127}));
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
          textString="V"),       Text(
          extent={{-149,135},{151,95}},
          lineColor={0,0,255},
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={0,127,255},
          textString="%name")}), Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-100,-100},{100,100}})));
end Variable_Speed_Fan;
