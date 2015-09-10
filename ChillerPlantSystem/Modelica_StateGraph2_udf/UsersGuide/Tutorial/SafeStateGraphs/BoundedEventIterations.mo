within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide.Tutorial.SafeStateGraphs;
class BoundedEventIterations "Bounded Event Iterations"

  annotation (Documentation(info="<html>
<p>
<img src=\"../Images/StateGraph/UsersGuide/WrongInfiniteLooping.png\" align=\"right\">
At an event instant, an iteration occurs, due to the Modelica semantics (= whenever a new event occurs, the model is re-evaluated). This means that Transitions keep firing along a connected graph, as long as the firing conditions are true. The question therefore arises, whether infinite event looping is possible? A simple example of this kind is shown in the Figure to the right.
Here, all Transition conditions are true and therefore all Transitions fire forever. This is no valid StateGraph model and will result in a translation error.
</p>

<p>
In order to avoid a situation as in the Figure to the right, it is required that a StateGraph2 model has at least one delayed Transition per loop. This means that one of T1, T2, or T3, must be a delayed Transition, otherwise a translation error occurs. Since event iteration stops at a delayed Transition, infinite event looping cannot occur. This also means that at one time instant every Transition can fire at most once and therefore the number of model evaluations at an event instant is bounded by the number of Transition components.
</p>

<p>
It is still possible that infinite event looping occurs due to model errors in other parts of the model. For example, if a user introduces an equation of the form &quot;J = <b>pre</b>(J) + 1&quot; outside of a when-clause, event iteration does not stop. Although this situation is not completely satisfactory, it helps already a lot if a tool points out potential problems of a StateGraph2 model, in case delayed transitions are missing.
</p>

</html>
"));
end BoundedEventIterations;
