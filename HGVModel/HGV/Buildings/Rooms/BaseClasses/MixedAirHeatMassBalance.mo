within HGV.Buildings.Rooms.BaseClasses;
model MixedAirHeatMassBalance
  "Heat and mass balance of the air, assuming completely mixed air"
  extends Buildings.Rooms.BaseClasses.PartialAirHeatMassBalance(nPorts=1);
  extends Buildings.Fluid.Interfaces.LumpedVolumeDeclarations;
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal(min=0)
    "Nominal mass flow rate"
    annotation(Dialog(group = "Nominal condition"));
  // Port definitions
  parameter Boolean homotopyInitialization "= true, use homotopy method"
    annotation(Evaluate=true, Dialog(tab="Advanced"));

  parameter Buildings.HeatTransfer.Types.InteriorConvection conMod
    "Convective heat transfer model for opaque constructions"
    annotation (Dialog(group="Convective heat transfer"));
  parameter Modelica.SIunits.CoefficientOfHeatTransfer hFixed
    "Constant convection coefficient for opaque constructions"
    annotation (Dialog(group="Convective heat transfer",
                       enable=(conMod == Buildings.HeatTransfer.Types.InteriorConvection.Fixed)));

  // Mixing volume
  Fluid.MixingVolumes.MixingVolume vol(
    redeclare package Medium = Medium,
    final energyDynamics=energyDynamics,
    final massDynamics=massDynamics,
    final V=V,
    final p_start=p_start,
    final T_start=T_start,
    final X_start=X_start,
    final C_start=C_start,
    final C_nominal=C_nominal,
    final m_flow_nominal = m_flow_nominal,
    final prescribedHeatFlowRate = true,
    final nPorts=nPorts+1,
    m_flow_small=1E-4*abs(m_flow_nominal),
    allowFlowReversal=true) "Room air volume"
    annotation (Placement(transformation(extent={{10,-210},{-10,-190}})));

  // Convection models
  HeatTransfer.Convection.Interior convConExt[NConExt](
    final A=AConExt,
    final til = datConExt.til,
    each conMod=conMod,
    each hFixed=hFixed,
    each final homotopyInitialization=homotopyInitialization) if
       haveConExt "Convective heat transfer"
    annotation (Placement(transformation(extent={{120,210},{100,230}})));

  HeatTransfer.Convection.Interior convConExtWin[NConExtWin](
    final A=AConExtWinOpa,
    final til = datConExtWin.til,
    each conMod=conMod,
    each hFixed=hFixed,
    each final homotopyInitialization=homotopyInitialization) if
       haveConExtWin "Convective heat transfer"
    annotation (Placement(transformation(extent={{120,170},{100,190}})));

  HeatTransfer.Windows.InteriorHeatTransferConvective convConWin[NConExtWin](
    final fFra=datConExtWin.fFra,
    final haveExteriorShade={datConExtWin[i].glaSys.haveExteriorShade for i in 1:NConExtWin},
    final haveInteriorShade={datConExtWin[i].glaSys.haveInteriorShade for i in 1:NConExtWin},
    final til=datConExtWin.til,
    each conMod=conMod,
    each hFixed=hFixed,
    final A=AConExtWinGla + AConExtWinFra) if
       haveConExtWin "Model for convective heat transfer at window"
    annotation (Placement(transformation(extent={{98,110},{118,130}})));

  HeatTransfer.Convection.Interior convConPar_a[nConPar](
    final A=AConPar,
    final til=Modelica.Constants.pi .- datConPar.til,
    each conMod=conMod,
    each hFixed=hFixed,
    each final homotopyInitialization=homotopyInitialization) if
       haveConPar "Convective heat transfer"
    annotation (Placement(transformation(extent={{120,-70},{100,-50}})));

  HeatTransfer.Convection.Interior convConPar_b[nConPar](
    final A=AConPar,
    final til = datConPar.til,
    each conMod=conMod,
    each hFixed=hFixed,
    each final homotopyInitialization=homotopyInitialization) if
       haveConPar "Convective heat transfer"
    annotation (Placement(transformation(extent={{120,-110},{100,-90}})));

  HeatTransfer.Convection.Interior convConBou[nConBou](
    final A=AConBou,
    final til = datConBou.til,
    each conMod=conMod,
    each hFixed=hFixed,
    each final homotopyInitialization=homotopyInitialization) if
       haveConBou "Convective heat transfer"
    annotation (Placement(transformation(extent={{120,-170},{100,-150}})));

  HeatTransfer.Convection.Interior convSurBou[nSurBou](
    final A=ASurBou,
    final til = surBou.til,
    each conMod=conMod,
    each hFixed=hFixed,
    each final homotopyInitialization=homotopyInitialization) if
       haveSurBou "Convective heat transfer"
    annotation (Placement(transformation(extent={{122,-230},{102,-210}})));

  // Fluid port for latent heat gain
  Modelica.Fluid.Interfaces.FluidPort_a QLat_flow(
    redeclare final package Medium = Medium) "Connector for latent heat gain"
    annotation (Placement(transformation(extent={{-250,-70},{-230,-50}})));

  // Thermal collectors
protected
  Modelica.Thermal.HeatTransfer.Components.ThermalCollector theConConExt(final m=nConExt) if
       haveConExt
    "Thermal collector to convert from vector to scalar connector"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={48,220})));
  Modelica.Thermal.HeatTransfer.Components.ThermalCollector theConConExtWin(final m=nConExtWin) if
       haveConExtWin
    "Thermal collector to convert from vector to scalar connector"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={48,180})));
  Modelica.Thermal.HeatTransfer.Components.ThermalCollector theConConWin(final m=nConExtWin) if
       haveConExtWin
    "Thermal collector to convert from vector to scalar connector"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={50,120})));

  Modelica.Thermal.HeatTransfer.Components.ThermalCollector theConConPar_a(final m=nConPar) if
       haveConPar
    "Thermal collector to convert from vector to scalar connector"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={52,-60})));
  Modelica.Thermal.HeatTransfer.Components.ThermalCollector theConConPar_b(final m=nConPar) if
       haveConPar
    "Thermal collector to convert from vector to scalar connector"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={50,-100})));
  Modelica.Thermal.HeatTransfer.Components.ThermalCollector theConConBou(final m=nConBou) if
       haveConBou
    "Thermal collector to convert from vector to scalar connector"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={50,-160})));
  Modelica.Thermal.HeatTransfer.Components.ThermalCollector theConSurBou(final m=nSurBou) if
       haveSurBou
    "Thermal collector to convert from vector to scalar connector"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={52,-220})));

equation
  connect(convConPar_a.fluid,theConConPar_a.port_a) annotation (Line(
      points={{100,-60},{62,-60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConPar_b.fluid,theConConPar_b.port_a) annotation (Line(
      points={{100,-100},{60,-100}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConBou.fluid,theConConBou.port_a) annotation (Line(
      points={{100,-160},{60,-160}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convSurBou.fluid,theConSurBou.port_a) annotation (Line(
      points={{102,-220},{62,-220}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(theConConPar_a.port_b,vol.heatPort) annotation (Line(
      points={{42,-60},{20,-60},{20,-200},{10,-200}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(theConConPar_b.port_b,vol.heatPort) annotation (Line(
      points={{40,-100},{20,-100},{20,-200},{10,-200}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(theConConBou.port_b,vol.heatPort) annotation (Line(
      points={{40,-160},{20,-160},{20,-200},{10,-200}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(theConSurBou.port_b,vol.heatPort) annotation (Line(
      points={{42,-220},{20,-220},{20,-200},{10,-200}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(conExtWinFra,convConWin.frame) annotation (Line(
      points={{242,4.44089e-16},{160,4.44089e-16},{160,100},{115,100},{115,110}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConExt.solid, conExt) annotation (Line(
      points={{120,220},{240,220}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConExt.fluid,theConConExt.port_a) annotation (Line(
      points={{100,220},{58,220}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(theConConExt.port_b,vol.heatPort) annotation (Line(
      points={{38,220},{20,220},{20,-200},{10,-200}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(theConConExtWin.port_b,vol.heatPort) annotation (Line(
      points={{38,180},{20,180},{20,-200},{10,-200}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConExtWin.fluid,theConConExtWin.port_a) annotation (Line(
      points={{100,180},{58,180}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConExtWin.solid, conExtWin) annotation (Line(
      points={{120,180},{240,180}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(theConConWin.port_b,vol.heatPort) annotation (Line(
      points={{40,120},{20,120},{20,-200},{10,-200}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConWin.air,theConConWin.port_a) annotation (Line(
      points={{98,120},{60,120}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConWin.glaSha, glaSha) annotation (Line(
      points={{118,118},{166,118},{166,80},{240,80}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConWin.glaUns, glaUns) annotation (Line(
      points={{118,122},{180,122},{180,120},{240,120}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConPar_a.solid, conPar_a) annotation (Line(
      points={{120,-60},{242,-60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConPar_b.solid, conPar_b) annotation (Line(
      points={{120,-100},{242,-100}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convConBou.solid, conBou) annotation (Line(
      points={{120,-160},{242,-160}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(convSurBou.solid, conSurBou) annotation (Line(
      points={{122,-220},{241,-220}},
      color={191,0,0},
      smooth=Smooth.None));
  for i in 1:nPorts loop
    connect(vol.ports[i], ports[i]) annotation (Line(
      points={{0,-210},{0,-238}},
      color={0,127,255},
      smooth=Smooth.None));
  end for;
  connect(QLat_flow, vol.ports[nPorts+1]) annotation (Line(
      points={{-240,-60},{-20,-60},{-20,-218},{-6.66134e-16,-218},{-6.66134e-16,
          -210}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(heaPorAir, vol.heatPort) annotation (Line(
      points={{-240,0},{20,0},{20,-200},{10,-200}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(uSha, convConWin.uSha) annotation (Line(
      points={{-260,200},{0,200},{0,150},{82,150},{82,128},{97.2,128}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(convConWin.QRadAbs_flow, QRadAbs_flow) annotation (Line(
      points={{102,109},{102,90},{-260,90}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(convConWin.TSha, TSha) annotation (Line(
      points={{108,109},{108,60},{-250,60}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (
    preferredView="info",
    Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-240,-240},{240,
            240}}), graphics),
    Icon(coordinateSystem(preserveAspectRatio=false,extent={{-240,-240},{240,240}}),
                    graphics={
          Rectangle(
          extent={{-144,184},{148,-200}},
          pattern=LinePattern.None,
          lineColor={0,0,0},
          fillColor={170,213,255},
          fillPattern=FillPattern.Sphere)}),
    Documentation(info="<html>
<p>
This model computes the heat and mass balance of the air.
The model assumes a completely mixed air volume.
</p>
</html>",
revisions="<html>
<ul>
<li>
March 2, 2015, by Michael Wetter:<br/>
Refactored model to allow a temperature dependent convective heat transfer
on the room side.
This is for issue
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/52\">52</a>.
</li>
<li>
July 17, 2013, by Michael Wetter:<br/>
Separated the model into a partial base class and a model that uses the mixed air assumption.
</li>
<li>
July 12, 2013, by Michael Wetter:<br/>
First implementation to facilitate the implementation of non-uniform room air models.
</li>
</ul>
</html>"));
end MixedAirHeatMassBalance;
