within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide.Tutorial;
package SafeStateGraphs "Safe StateGraphs"


  annotation (__Dymola_DocumentationClass=true, Documentation(info="<html>
<p>
In this section it will be discussed in which sense &quot;StateGraph2&quot; models
are &quot;safe&quot;. This section consists of the following sub-sections:
</p>

<ol>
<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.SafeStateGraphs.ValidGraphStructures\">Valid
    Graph Structures</a>&quot; discusses that only valid graph structures of a
    StateGraph2 model will be accepted by a Modelica tool.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.SafeStateGraphs.SingleAssignmentRule\">Single
    Assignment Rule</a>&quot; discusses that a variable must always be defined by exactly
    one equation and therefore non-determinism as in other state machine formalisms cannot
    occur (especially, it is not possible to assign the same variable twice in parallel
    executing branches).</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.SafeStateGraphs.BoundedEventIterations\">Bounded
    Event Iterations</a>&quot; discusses that infinite event looping is not possible,
    because it is required that every &quot;loop&quot; in a StateGraph2 model must have at
    least one delayed Transition.</li>

</ol>

</html>
"));
end SafeStateGraphs;
