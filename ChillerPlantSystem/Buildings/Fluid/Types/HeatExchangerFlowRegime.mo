within ChillerPlantSystem.Buildings.Fluid.Types;
type HeatExchangerFlowRegime = enumeration(
    ParallelFlow "Parallel flow",
    CounterFlow "Counter flow",
    CrossFlowUnmixed "Cross flow, both streams unmixed",
    CrossFlowCMinMixedCMaxUnmixed "Cross flow, CMin mixed,   CMax unmixed",
    CrossFlowCMinUnmixedCMaxMixed "Cross flow, CMin unmixed, CMax mixed")
  "Enumeration for heat exchanger flow configuration"
annotation(Documentation(info="<html>
<p>
 Enumeration to define the heat exchanger flow regime.
</p>
<p>
This enumeration defines for the current capacity flow rate the kind of
heat transfer relation that will be used to compute the relation between
effectiveness and Number of Transfer Units.
</p>
<p>
The following heat exchanger flow regimes are available in this enumeration:
</p>
<table summary=\"summary\" border=\"1\">
<tr><th>Enumeration</th><th>Description</th></tr>
<tr><td>ParallelFlow</td><td>Parallel flow</td></tr>
<tr><td>CounterFlow</td><td>Counter flow</td></tr>
<tr><td>CrossFlowUnmixed</td><td>Cross flow, both streams unmixed</td></tr>
<tr><td>CrossFlowCMinMixedCMaxUnmixed</td><td>Cross flow, CMin mixed,   CMax unmixed</td></tr>
<tr><td>CrossFlowCMinUnmixedCMaxMixed</td><td>Cross flow, CMin unmixed, CMax mixed</td></tr>
</table>
</html>"));
