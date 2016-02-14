within GreenVillage.Buildings.Fluid.FMI;
package UsersGuide "User's Guide"
  extends Modelica.Icons.Information;


  annotation (preferredView="info",
  Documentation(info="<html>
<p>
This user's guide describes the FMI package.
The FMI package has been implemented to facilitate the export
of thermofluid flow models as Functional Mockup Units (FMUs).
This allows to export thermofluid flow models as FMUs so that they can be
imported in other simulators. 
To export thermofluid flow components, a Modelica block is needed
in order for the model to only have input and output signals
rather than fluid connectors, as fluid connectors do not impose any causality
on the signal flow.
</p>
<p>
This package implements such blocks and its connectors,
and it provides thermofluid flow components that can be exported as an FMU.
It also implements examples that illustrate how these components
can be connected with each other.
The blocks can be used to encapsulate various
acausal thermofluid flow models.
The package
<a href=\"modelica://Buildings.Fluid.FMI.Examples\">
Buildings.Fluid.FMI.Examples</a>
contains system models in which multiple of these containers
are connected to form a complete model. This package is meant
as an illustration and for testing the connectivity of these
containers. If one were to use actual FMU rathern than the
input-output blocks, then one would export these input-output blocks
as FMUs and build a similar system model in the target simulator.
</p>
<p>
The connectors that define the input and output signals of
the FMUs can be found in the package
<a href=\"modelica://Buildings.Fluid.FMI.Interfaces\">
Buildings.Fluid.FMI.Interfaces</a>.
</p>
<h4>Typical use</h4>
<p>
Users who want to export a single thermofluid flow component, or a
subsystem of thermofluid flow components, can use the block
<a href=\"modelica://Buildings.Fluid.FMI.TwoPortComponent\">
Buildings.Fluid.FMI.TwoPortComponent</a>.
</p>
<p>
The package
<a href=\"modelica://Buildings.Fluid.FMI.Examples.FMUs\">
Buildings.Fluid.FMI.Examples.FMUs</a>
contains various examples that demonstrate how
thermofluid flow components and subsystems
can be exported as FMUs.
Each model has a Dymola script that exports the FMU.
The script can be invoked from the pull
down menu <code>Commands -&gt; Export FMU</code>.
</p>
<h4>Options</h4>
<p>
In the 
<a href=\"modelica://Buildings.Fluid\">Buildings.Fluid</a> package,
most models a boolean parameter called <code>allowFlowReversal</code>.
If set to <code>true</code>, then the flow can be in either direction,
otherwise it needs to be from the inlet to the outlet port.
This parameter is also used in the
<a href=\"modelica://Buildings.Fluid.FMI\">Buildings.Fluid.FMI</a> package.
The package was designed in such a way that an FMU,
if exported with <code>allowFlowReversal=false</code>
has as input the mass flow rate,
pressure and fluid properties of the inflowing fluid. The outputs
are the outlet mass flow rate, outlet pressure and the fluid
properties of the outflowing medium. This allows simulators
such as Ptolemy II
to evaluate the FMUs in the direction of the mass flow by first
setting all inputs, then evaluating the model equations,
and finally retrieving the
outputs before proceeding the simulation with the next downstream
component.
If <code>allowFlowReversal=true</code>, then the connectors have additional
signals for the properties of the fluid if it flows backwards.
</p>
<p>
All components have a boolean parameter <code>use_p_in</code>.
If <code>use_p_in=true</code>, then the pressure is used from the
connector, and based on the mass flow rate, the outlet pressure
is computed and assigned to the outlet connectors.
If <code>use_p_in=false</code>, then the pressure as declared
by the contant <code>p_default</code> of the medium model is
used, and the component computes no pressure drop. 
Setting <code>use_p_in=false</code> therefore leads to fewer
equations, but it requires a component that specifies the mass
flow rate, such as 
<a href=\"modelica://Buildings.Fluid.FMI.Examples.FMUs.IdealSource_m_flow\">
Buildings.Fluid.FMI.Examples.FMUs.IdealSource_m_flow</a>.
</p>
<h4>Notes</h4>
<p>
Note the following when exporting FMUs:
</p>
<ol>
<li>
<p>
For models with control volumes,
the mass balance must be configured using
<code>massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState</code>
when used with the media
<a href=\"modelica://Buildings.Media.Air\">
Buildings.Media.Air</a>.
Otherwise, the translation stops with the error
</p>
<pre>
The model requires derivatives of some inputs as listed below:
1 inlet.p
</pre>
<p>
The reason is that for
<a href=\"modelica://Buildings.Media.Air\">
Buildings.Media.Air</a>,
mass is proportional to pressure and pressure is proportional
to density. Hence, <i>dm/dt</i> requires <i>dp/dt</i>,
but the time derivative of the pressure is not an input to the model.
</p>
<p>
For <a href=\"modelica://Buildings.Media.Water\">
Buildings.Media.Water</a>, this setting is not needed
as the mass is independent of pressure.
</p>
</li>
<li>
<p>
The model
<a href=\"modelica://Buildings.Fluid.FixedResistances.FlowMachine_m_flow\">
Buildings.Fluid.FixedResistances.FlowMachine_m_flow</a>
cannot be exported as an FMU.
This is because it assignes the mass flow rate.
However, the input connector
<a href=\"modelica://Buildings.Fluid.FMI.Interfaces.Inlet\">
Buildings.Fluid.FMI.Interfaces.Inlet</a>
already declares the mass flow rate as an input.
Therefore, the mass flow rate is overdetermined.
As a fall back, if a user needs to set the mass flow rate, he/she can
do so by using
<a href=\"modelica://Buildings.Fluid.FMI.IdealSource_m_flow\">
Buildings.Fluid.FMI.IdealSource_m_flow</a>,
which takes as an input signal the mass flow rate. If this differs
from the mass flow rate of the inlet connector, the simulation
will stop with an error.
</p>
</li>
<li>
<p>
When connecting fluid flow components in a loop,
be careful to avoid circular assignments for example for the temperature,
as these can of course not be simulated.
An example of such an ill-posed problem is to connect the outlet of
<a href=\"modelica://Buildings.Fluid.FixedResistances.FixedResistanceDpM\">
Buildings.Fluid.FixedResistances.FixedResistanceDpM</a>
to its inlet. In this situation, neither pressure, nor mass flow rate or temperature
can be computed. To model such loops, a control volume with a dynamic energy
balance must be presented, and the medium needs to be compressible.
</p>
</li>
</ol>
</html>"));
end UsersGuide;
