within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide.Tutorial;
class Parallel "Parallel"

  annotation (Documentation(info="<html>
<p>
Subgraphs can be aggregated into superstates by using the
<a href=\"modelica://Modelica_StateGraph2.Parallel\">Parallel</a>
component. This component acts both as a composite step (having just <u>one branch</u>) and as a Step that has <u>parallel branches</u> that
are executed in parallel to each other.
The Parallel component allows the user to place any StateGraph2 element inside it, especially Steps, Transitions, and Parallel components. In the following Figure, a typical Parallel component &quot;p&quot; is shown:
</p>

<blockquote>
<img src=\"../Images/StateGraph/Elements/Parallel.png\">
</blockquote>

<p>
Here, the branch from &quot;Step3&quot; to &quot;Step5&quot; is executed in parallel to &quot;Step2&quot;. A Transition connected to the output of a parallel branch component can only fire if the final Steps
of the branches, that are connected to the &quot;exit&quot; port of the
Parallel component, are active simultaneously. So, in the Figure above,
the Parallel component is left, once Step2 and Step5 are active for one
second, since then transition T5 fires.
</p>

<p>
By default, a Parallel component does not have any outside ports.
To achieve the StateGraph2 above, parameters <b>use_inPort</b>, <b>use_outPort</b>, and
<b>use_suspend</b> have to be set to <b>true</b>, see next Figure:
</p>

<blockquote>
<img src=\"../Images/StateGraph/UsersGuide/Parallel2.png\">
</blockquote>

<p>
A Parallel component has always an entry port, see Figure above, and it may have optionally an exit port. All branches in a Parallel Component must start at the entry port and at least one must terminate at the exit port, provided the exit port is enabled via parameter <b>use_outPort</b>. If a Parallel component shall be entered from the outside via a Transition, parameter <b>use_inPort</b> must be set to true, to enable an input port. If a Parallel Component shall be left via a transition to an outside step, parameter <b>use_outPort</b> must be set to true, to enable the output and the exit port. A Parallel component may be used as initial step, by setting parameter <b>initialStep</b> to true.
All branches in a Parallel component may be running autonomously in parallel, by setting
use_inPort=<b>false</b>, use_outPort=<b>false</b>, initialStep=<b>true</b>.
</p>

<p>
A Parallel component may be <u>suspended</u> and sub-sequently <u>resumed</u>. In the Figure above, Transition T6 fires whenever the input signal &quot;u&quot; is true, suspending the Parallel component &quot;p&quot; and the enclosed Steps s2, s3, s4 and s5 for two seconds. When Transition T7 fires, p is re-activated in the same states as when it was suspended (i.e., the same Steps become active, that have been active when the Parallel component was suspended).
</p>

<p>
Parallel and Step components have vectors of
connectors. The dimensions of these vectors are set <b>automatically</b>
in the corresponding parameter menu when performing a connection due
to the &quot;connectorSizing&quot; annotation (a connection is connected to
the next free element of a vectors of connectors when drawing the
connection and the new vector dimension is set automatically as
a modifier, if the dimension needs to be enlarged). If several Transitions could
fire, the Transition that is connected to the lowest index of a vector
of connectors really fires (so the firing priority is defined with the
connection index). If transitions connected to the outPort and to the suspend port could fire
at the same time instant, the transition connected to the outPort has higher priority
and really fires.
</p>


<p>
As mentioned above, inPorts and outPorts of a Parallel component are optional and can be set by the user. If the parallel component has an inPort, then the entry port constitutes the connection between the Transition connected to the inPort and the first Steps to be activated in the Parallel component. If the Parallel component is configured to have an outPort, an exit port shows up on the bottom of the Parallel component, see above Figure.
The Parallel component allows the entry port to branch out into several parallel paths. These branches are not allowed to interact. When all Steps connected to the exit port are active, the Parallel component is said to be available and may exit when the Transition connected to the outPort fires. In the Figure above Transition T5 fires when both Step s2 and s5 have been active together for one second and thereby deactivates the Parallel component p. Note, not all branches need to be connected to the exit port, if it is enabled.
</p>

<p>
The state of a Parallel component is available via the output variable <b>active</b> that can
be used in action blocks (e.g. \"parallel.active\"). Alternatively, via parameter
\"use_activePort\" the Boolean output port \"activePort\" can be enabled.
When the Parallel component is active, activePort = <b>true</b>, otherwise it is <b>false</b>. This port can
be connected to Boolean action blocks, e.g., from
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean\">Modelica_StateGraph2.Blocks.MathBoolean</a>.
</p>

<p>
No component contained within the Parallel component may be connected to any other component &quot;outside&quot; of the Parallel component, otherwise a translation error occurs. This rule is used to protect the user from making mistakes that could lead to unexpected results and states of the graph that are not well-defined.
</p>

<p>
In order to graphically organize large graphs in different levels of hierarchy and with encapsulation of variables, use component
<a href=\"modelica://Modelica_StateGraph2.PartialParallel\">PartialParallel</a> instead of
Parallel.
</p>

</html>
"));
end Parallel;
