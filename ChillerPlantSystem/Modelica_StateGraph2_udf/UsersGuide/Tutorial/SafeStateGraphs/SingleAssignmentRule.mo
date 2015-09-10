within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide.Tutorial.SafeStateGraphs;
class SingleAssignmentRule "Single Assignment Rule"

  annotation (Documentation(info="<html>
<p>
In all state machine formalisms problems are present when assignments to the same variables are performed in branches that are executed in parallel.
Typically, <b>actions</b> are formulated <b>within a step</b>. Such actions are, e.g.,
distinguished as <b>entry</b>, <b>normal</b>, <b>exit</b> and
<b>abort</b> actions. For example, a valve might be opened by
an entry action of a step and might be closed by an exit
action of the same step. This widly used standard approach
becomes critical, when the same variable is assigned in graphs
that are executed in parallel, because it is then not clear which
value the variable will have, and different tools might give different
results.
</p>

<p>
In StateGraphs, it is <b>not possible</b> to assign the same variable in graphs that
are executed in parallel, due to Modelicas \"<u>single assignment rule</u>\" that requires that every
variable is defined by exactly one equation.
This feature of a StateGraph2 is <b>very useful</b>, since it allows
a Modelica translator to <b>guarantee</b> that a given StateGraph2
has always <b>deterministic</b> behaviour without conflicts.
In other state diagram methodologies this is much more cumbersome. For example,
if two steps are executed in parallel and both step actions
modify the same variable, the result is either non-deterministic
or non-obvious rules have to be defined which action
takes priority. In a StateGraph2, such a situation is detected by
the translator resulting in an error, since there are two equations
to compute one variable.
</p>

<p>
In the Figure below an artifical example is shown how to handle such
problems in a StateGraph2 model, e.g., with a
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.MultiSwitch\">MultiSwitch</a>
action block &quot;openValve&quot;. The purpose is to set:
</p>

<pre>
  openValve.y = <b>true</b>,  <b>if</b> Step fill1 is entered
  openValve.y = <b>false</b>, <b>if</b> Step fill2 is entered
</pre>

<p>
and the question is which value openValve.y will have, if both steps fill1 and fill2 are executed in parallel. In the StateGraph2 model below, everything is well defined: There are two input connections to the openValve block. If both become true at the same time instant, the connection with the &quot;lowest&quot; index (i.e., the upper signal in the Figure) has highest priority (as defined and implemented in the MultiSwitch block). Therefore, openValve.y gets the value <b>true</b>, once the Parallel component is entered.
</p>

<blockquote>
<img src=\"../Images/StateGraph/UsersGuide/ActionsWithPriority.png\">
</blockquote>


</html>
"));
end SingleAssignmentRule;
