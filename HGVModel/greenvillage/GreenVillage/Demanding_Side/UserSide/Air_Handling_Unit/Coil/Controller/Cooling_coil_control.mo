within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Coil.Controller;
model Cooling_coil_control

 parameter Real ti "ti for PI controller";
 parameter Real k "k for PI controller";
 parameter Real Pos_min "The minimum valve position";
  LimPID                               conPID(controllerType=Modelica.Blocks.Types.SimpleController.PI,
    k=k,
    Ti=ti,
    yMin=Pos_min,
    reverseAction=true)                                                                                        annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealInput u_m
    "Connector of measurement input signal"                                        annotation (Placement(transformation(extent={{-140,
            -80},{-100,-40}})));
  Modelica.Blocks.Interfaces.RealOutput y "Connector of actuator output signal"
                                                                                annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Modelica.Blocks.Interfaces.RealInput u_s "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
  Modelica.Blocks.Interfaces.RealInput On "On_off signal"
    annotation (Placement(transformation(extent={{-140,40},{-100,80}})));

  Modelica.Blocks.Sources.RealExpression realExpression(y=if On > 0 then u_m
         else u_s)
    annotation (Placement(transformation(extent={{-70,-70},{-50,-50}})));

equation
  connect(conPID.y, y) annotation (Line(
      points={{11,0},{110,0}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(conPID.u_s, u_s) annotation (Line(points={{-12,0},{-12,0},{-80,0},{-120,
          0}},            color={0,0,127},
      pattern=LinePattern.Dash));
  connect(realExpression.y, conPID.u_m) annotation (Line(
      points={{-49,-60},{0,-60},{0,-12}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(On, conPID.On) annotation (Line(
      points={{-120,60},{-40,60},{-40,8},{-12,8}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})),                                                                     Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,127},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-72,72},{70,-64}},
          lineColor={0,0,127},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          textString="C"),       Text(
          extent={{-155,141},{145,101}},
          lineColor={0,0,255},
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={0,127,255},
          textString="%name")}));
end Cooling_coil_control;
