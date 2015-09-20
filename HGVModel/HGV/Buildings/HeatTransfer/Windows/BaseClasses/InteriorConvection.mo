within HGV.Buildings.HeatTransfer.Windows.BaseClasses;
model InteriorConvection
  "Model for a interior (room-side) convective heat transfer with variable surface area"
  extends Buildings.HeatTransfer.Convection.BaseClasses.PartialConvection;

  parameter Buildings.HeatTransfer.Types.InteriorConvection conMod=
    Buildings.HeatTransfer.Types.InteriorConvection.Fixed
    "Convective heat transfer model"
  annotation(Evaluate=true);
  parameter Boolean homotopyInitialization = true "= true, use homotopy method"
    annotation(Evaluate=true, Dialog(tab="Advanced"));

  Modelica.Blocks.Interfaces.RealInput u
    "Input connector, used to scale the surface area to take into account an operable shading device"
    annotation (Placement(transformation(extent={{-140,60},{-100,100}}),
        iconTransformation(extent={{-120,70},{-100,90}})));

protected
  constant Modelica.SIunits.Temperature dT0 = 2
    "Initial temperature used in homotopy method";
equation
  if (conMod == Buildings.HeatTransfer.Types.InteriorConvection.Fixed) then
    q_flow = u*hFixed * dT;
  else
    // Even if hCon is a step function with a step at zero,
    // the product hCon*dT is differentiable at zero with
    // a continuous first derivative
    if homotopyInitialization then
      if isCeiling then
         q_flow = u*homotopy(actual=Buildings.HeatTransfer.Convection.Functions.HeatFlux.ceiling(dT=dT),
                      simplified=dT/dT0*Buildings.HeatTransfer.Convection.Functions.HeatFlux.ceiling(dT=dT0));
      elseif isFloor then
         q_flow = u*homotopy(actual=Buildings.HeatTransfer.Convection.Functions.HeatFlux.floor(dT=dT),
                      simplified=dT/dT0*Buildings.HeatTransfer.Convection.Functions.HeatFlux.floor(dT=dT0));
      else
         q_flow = u*homotopy(actual=Buildings.HeatTransfer.Convection.Functions.HeatFlux.wall(dT=dT),
                      simplified=dT/dT0*Buildings.HeatTransfer.Convection.Functions.HeatFlux.wall(dT=dT0));
      end if;
    else
      if isCeiling then
         q_flow = u*Buildings.HeatTransfer.Convection.Functions.HeatFlux.ceiling(dT=dT);
      elseif isFloor then
         q_flow = u*Buildings.HeatTransfer.Convection.Functions.HeatFlux.floor(dT=dT);
      else
         q_flow = u*Buildings.HeatTransfer.Convection.Functions.HeatFlux.wall(dT=dT);
      end if;
    end if;

  end if;

  annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}), graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-90,80},{-60,-80}},
          lineColor={0,0,0},
          fillColor={192,192,192},
          fillPattern=FillPattern.Backward),
        Line(points={{100,0},{100,0}}, color={0,127,255}),
        Line(points={{100,0},{100,0}}, color={0,127,255}),
        Line(points={{100,0},{100,0}}, color={0,127,255}),
        Text(
          extent={{-35,42},{-5,20}},
          lineColor={255,0,0},
          textString="Q_flow"),
        Line(points={{-60,20},{76,20}}, color={191,0,0}),
        Line(points={{-60,-20},{76,-20}}, color={191,0,0}),
        Line(points={{-34,80},{-34,-80}}, color={0,127,255}),
        Line(points={{6,80},{6,-80}}, color={0,127,255}),
        Line(points={{40,80},{40,-80}}, color={0,127,255}),
        Line(points={{76,80},{76,-80}}, color={0,127,255}),
        Line(points={{-34,-80},{-44,-60}}, color={0,127,255}),
        Line(points={{-34,-80},{-24,-60}}, color={0,127,255}),
        Line(points={{6,-80},{-4,-60}}, color={0,127,255}),
        Line(points={{6,-80},{16,-60}}, color={0,127,255}),
        Line(points={{40,-80},{30,-60}}, color={0,127,255}),
        Line(points={{40,-80},{50,-60}}, color={0,127,255}),
        Line(points={{76,-80},{66,-60}}, color={0,127,255}),
        Line(points={{76,-80},{86,-60}}, color={0,127,255}),
        Line(points={{56,-30},{76,-20}}, color={191,0,0}),
        Line(points={{56,-10},{76,-20}}, color={191,0,0}),
        Line(points={{56,10},{76,20}}, color={191,0,0}),
        Line(points={{56,30},{76,20}}, color={191,0,0})}),
    defaultComponentName="con",
    Documentation(info="<html>
<p>
This is a model for a convective heat transfer for interior, room-facing surfaces.
The parameter <code>conMod</code> determines the model that is used to compute
the heat transfer coefficient:
</p>
<ul>
<li>If <code>conMod=<a href=\"modelica://Buildings.HeatTransfer.Types.InteriorConvection\">
Buildings.HeatTransfer.Types.InteriorConvection.Fixed</a></code>, then
the convective heat transfer coefficient is set to the value specified by the parameter
<code>hFixed</code>.
</li>
<li>
If <code>conMod=<a href=\"modelica://Buildings.HeatTransfer.Types.InteriorConvection\">
Buildings.HeatTransfer.Types.InteriorConvection.Temperature</a></code>, then
the convective heat tranfer coefficient is a function of the temperature difference.
The convective heat flux is computed using
<ul>
<li>
for floors the function
<a href=\"modelica://Buildings.HeatTransfer.Convection.Functions.HeatFlux.floor\">
Buildings.HeatTransfer.Convection.Functions.HeatFlux.floor</a>
</li>
<li>
for ceilings the function
<a href=\"modelica://Buildings.HeatTransfer.Convection.Functions.HeatFlux.ceiling\">
Buildings.HeatTransfer.Convection.Functions.HeatFlux.ceiling</a>
</li>
<li>
for walls the function
<a href=\"modelica://Buildings.HeatTransfer.Convection.Functions.HeatFlux.wall\">
Buildings.HeatTransfer.Convection.Functions.HeatFlux.wall</a>
</li>
</ul>
</li>
</ul>
<p>
This model is identical to
<a href=\"modelica://Buildings.HeatTransfer.Convection.Interior\">
Buildings.HeatTransfer.Convection.Interior</a>
except that it has an input <code>u</code> that is used to scale the
heat transfer.
This can be used if the heat transfer area is variable.
An example usage is for a window with shade, in which
the surface area of a shaded part of a window changes depending on the shading
control signal.
</p>
</html>", revisions="<html>
<ul>
<li>
March 2, 2015, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end InteriorConvection;
