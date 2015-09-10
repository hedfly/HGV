within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide;
class ComparisonWithStateGraph1 "Comparison with StateGraph1"

  annotation (Documentation(info="<html>
<p>
The Modelica_StateGraph2 library (called <u>StateGraph2</u> below)
is based on the experience with the current
Modelica.StateGraph library (called <u>StateGraph1</u> below) and is
a significantly further development of StateGraph1. Furthermore, it is heavily
based on the article (Malmheden et. al. 2008), see
<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">literature</a>,
but uses a different implementation
technique as described in this article. The StateGraph2
library has the following improvements with respect to the StateGraph1
library:
</p>

<ul>
<li> <b>3 Basic Components (Step, Transition, Parallel)</b><br>
     All multiple versions of a component are
     combined in only one version (e.g., one step and not 4 step components).
     This is easier to understand and more convenient to use.
     The \"Parallel\" component is both used as \"composite step\" (so only one branch),
     as well as \"parallel step\" (so several execution branches).<br>&nbsp;</li>

<li> <b>Conveniently connecting components</b><br>
     Connecting components of a state machine in Modelica means to provide
     new vector dimensions and to provide a vector index to connect to.
     In StateGraph2, the new \"connectorSizing\" annotation is used and
     therefore all this is now performed automatically (from a users point
     of view, these actions are hidden; this is not the case in
     StateGraph1 and makes the usage of the StateGraph1 library clumsy).<br>&nbsp;</li>

<li> <b>Safer state machines</b><br>
     It is no longer possible to construct a wrong state machine in the sense that properties
     of the graph are violated (e.g. two initial steps, or branching wrongly out of a parallel
     component). Contrary to StateGraph2, in StateGraph1 such wrong graphs do not lead to an
     error but to unexpected simulation results. Still, other desirable properties
     of a state machine,  such as \"no deadlock\" or \"lifeliness\" or \"every step reachable\",
     are not (yet) guaranteed with the current StateGraph2. <br>&nbsp;</li>

<li> <b>Composite, autonomous, synchronized, preempted subgraphs</b><br>
     Composite steps and parallel steps are described in a much better and more powerful
     way as in StateGraph1: Either by component \"Parallel\" or
     by inheriting from \"PartialParallel\". The first alternative has the advantage that it
     is simple to use (not necessary to construct a new class and instanciating this class, and
     easy variable access since no new hierarchy is constructed), the second alternative
     has the advantage that it introduces a Modelica hierarchy (useful for large subgraphs).
     In both cases, various options are possible, such as
     <ol>
     <li> autonomous subgraphs (branches are executed in parallel autonomously),  </li>
     <li> synchronized subgraphs (branches are executed in parallel and are synchronized
           before leaving the subgraph via the outPort), </li>
     <li> subgraphs with preemption and exception (a parallel step can be interrupted via
          the suspend ports and can continue execution via the resume ports).</li>
     </ol>
     This is achieved by enabling/disabling the different ports.<br>&nbsp;</li>
<li> <b>No infinite looping</b>:<br>
     As in StateGraph1, there are two types of transitions: immediate transitions (during event
     iteration all immediate transitions fire until no transition condition is true anymore) and
     delayed transitions (a transition fires only after a delay). Contrary to StateGraph1,
     in StateGraph2 every loop must have at least one delayed transition. If this is not the case
     a translation error occurs which states that the model contains an algebraic loop
     between Booleans with the name \"checkOneDelayedTransitionPerLoop\".<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This property guarantees that an event
     iteration over a StateGraph2 converges after a
     finite number of iterations, provided the modeller does not introduce an unsafe construct
     in the actions associated with a StateGraph2 (e.g. \"i = pre(i) + 1\" in the equation section
     outside of a when-clause will give an event iteration that never stops).<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It is possible to switch off this feature, by setting parameter
     \"loopCheck = <b>false</b>\" in one transition of a loop, instead of using a \"delayed transition\"
     at this place (in cases where immediate transitions are
     important and the transition conditions are in a form that they cannot fire at the
     same time instant).</li>
</ul>

</html>
"));
end ComparisonWithStateGraph1;
