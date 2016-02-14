within GreenVillage.Demanding_Side.Controller;
model HP_PI
    parameter Real k;
    parameter Real ti;
  Buildings.Controls.Continuous.LimPID conPID(
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    k=k,
    Ti=ti,
    reverseAction=true)                       annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealInput SetPoi
    "Connector of setpoint input signal"                                           annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
  Modelica.Blocks.Interfaces.RealInput MeaT
    "Connector of measurement input signal"                                         annotation (Placement(transformation(extent={{-140,-80},{-100,-40}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=if CoolOn > 0 then SetPoi else MeaT) annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
  Modelica.Blocks.Interfaces.RealInput CoolOn
    "Connector of setpoint input signal"                                           annotation (Placement(transformation(extent={{-140,40},{-100,80}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=if CoolOn > 0 then MeaT else SetPoi) annotation (Placement(transformation(extent={{-70,-70},{-50,-50}})));
  Modelica.Blocks.Interfaces.RealOutput y1
    "Connector of actuator output signal"                                        annotation (Placement(transformation(extent={{100,-10},{120,10}})));
equation
  connect(realExpression.y, conPID.u_s) annotation (Line(
      points={{-49,0},{-12,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(realExpression1.y, conPID.u_m) annotation (Line(
      points={{-49,-60},{0,-60},{0,-12}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(conPID.y, y1) annotation (Line(
      points={{11,0},{110,0}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics), Icon(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}), graphics={Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,127},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid), Text(
          extent={{-52,56},{50,-56}},
          lineColor={0,0,127},
          pattern=LinePattern.Dash,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          textString="C")}));
end HP_PI;
