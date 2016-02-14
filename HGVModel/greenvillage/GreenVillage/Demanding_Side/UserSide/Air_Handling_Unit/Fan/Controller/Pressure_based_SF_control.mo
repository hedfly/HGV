within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Fan.Controller;
model Pressure_based_SF_control

 parameter Real ti "ti for PI controller";
 parameter Real k "k for PI controller";
 parameter Real S_min "The minimum fan speed ratio";
  Buildings.Controls.Continuous.LimPID conPID(
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    k=k,
    Ti=ti,
    reverseAction=false,
    yMin=S_min)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealInput u_m
    "Connector of measurement input signal"                                        annotation (Placement(transformation(extent={{-140,
            -80},{-100,-40}})));
  Modelica.Blocks.Interfaces.RealOutput y "Connector of actuator output signal"
                                                                                annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Modelica.Blocks.Interfaces.RealInput u_s "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{-140,40},{-100,80}})));
equation
  connect(conPID.u_m, u_m) annotation (Line(
      points={{0,-12},{0,-20},{-80,-20},{-80,-60},{-120,-60}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(conPID.y, y) annotation (Line(
      points={{11,0},{110,0}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(conPID.u_s, u_s) annotation (Line(points={{-12,0},{-12,0},{-80,0},{
          -80,60},{-120,60}},
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
end Pressure_based_SF_control;
