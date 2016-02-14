within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.Fan.Controller;
model Pressure_based_RF_control
 parameter Real offset
    "The difference between the supply air volume flow rate and return air volume flow rate";
 parameter Real S_min "The minimum fan speed ratio";
 parameter Real ti "ti for PI controller";
 parameter Real k "k for PI controller";

  Modelica.Blocks.Interfaces.RealInput m_SF
    "Connector of measurement input signal"
    annotation (Placement(transformation(extent={{-140,40},{-100,80}})));
  Modelica.Blocks.Interfaces.RealOutput s_RF
    "Connector of actuator output signal"
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Buildings.Controls.Continuous.LimPID conPID(
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    k=k,
    Ti=ti,
    reverseAction=false,
    yMin=S_min)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Constant const(k=offset)
                                         annotation (Placement(transformation(extent={{-40,-50},{-60,-30}})));
  Modelica.Blocks.Math.Add add(k2=-1) annotation (Placement(transformation(extent={{-54,-10},{-34,10}})));
  Modelica.Blocks.Interfaces.RealInput m_RF
    "Connector of measurement input signal"                                         annotation (Placement(transformation(extent={{-140,
            -80},{-100,-40}})));
equation
  connect(const.y, add.u2) annotation (Line(points={{-61,-40},{-80,-40},{-80,-6},{-56,-6}}, color={0,0,127},
      pattern=LinePattern.Dash));
  connect(m_SF, add.u1) annotation (Line(points={{-120,60},{-88,60},{-88,6},{
          -56,6}},                                                          color={0,0,127},
      pattern=LinePattern.Dash));
  connect(add.y, conPID.u_s) annotation (Line(points={{-33,0},{-33,0},{-12,0}}, color={0,0,127},
      pattern=LinePattern.Dash));
  connect(conPID.u_m, m_RF) annotation (Line(points={{0,-12},{0,-60},{-120,-60}}, color={0,0,127},
      pattern=LinePattern.Dash));
  connect(conPID.y, s_RF) annotation (Line(
      points={{11,0},{110,0}},
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
end Pressure_based_RF_control;
