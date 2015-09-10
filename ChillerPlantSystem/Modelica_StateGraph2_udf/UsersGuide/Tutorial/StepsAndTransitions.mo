within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide.Tutorial;
class StepsAndTransitions "Steps and Transitions"

  annotation (Documentation(info="<html>
<p>
The basic elements of a StateGraph2 model are
<a href=\"modelica://Modelica_StateGraph2.Step\">Steps</a> and
<a href=\"modelica://Modelica_StateGraph2.Transition\">Transitions</a>.
An example is shown in the next Figure:
</p>

<blockquote>
<img src=\"../Images/StateGraph/UsersGuide/StepAndTransition1.png\">
</blockquote>

<p>
The Figure above is a screen-shot of the diagram animation of the
StateGraph2 model: Whenever a Step is active or a Transition can fire,
the corresponding component is marked in <b>green</b> color.
</p>

<p>
<b>Steps</b> represent the possible states a StateGraph2 can have.
If a Step is active the Boolean variable <b>active</b> of
the Step is <b>true</b>. If it is deactivated,
<b>active</b> = <b>false</b>. At the initial time, all &quot;usual&quot;
Steps are deactivated. The <b>inital Step</b> objects are Steps
that are activated at the initial time. They are characterized
by a small arrow pointing to the Step (see Figure above) and are defined by setting
parameter &quot;initialStep = <b>true</b>&quot; in a Step, see next Figure.
</p>

<blockquote>
<img src=\"../Images/StateGraph/UsersGuide/StepAndTransition1b.png\">
</blockquote>

<p>
<b>Transitions</b> are used to change the state of a StateGraph2.
When the Step connected to the input of a Transition is active
and the Transition condition becomes <b>true</b>, then the
Transition fires. This means that the Step connected to the input to the
Transition is deactivated and the Step connected to the output
of the Transition is activated.
</p>

<p>
The Transition <b>condition</b> is defined via the parameter menu
of the Transition object. Clicking on object &quot;T1&quot; in
the above Figure, results in the following menu:
</p>

<blockquote>
<img src=\"../Images/StateGraph/UsersGuide/StepAndTransition2.png\">
</blockquote>

<p>
In the input field &quot;<b>condition</b>&quot;, any type of time varying
Boolean expression can be given (in Modelica notation, this is
a modification of the time varying variable <b>condition</b>).
Whenever this condition is true, the Transition can fire.
Additionally, it is possible to activate a timer, via
<b>delayedTransition</b> (see menu above) and provide a
<b>waitTime</b>. In this case the firing of the Transition
is delayed according to the provided waitTime, provided
that the condition remains true and the preceding Step
remains active during the entire waitTime.
The Transition
condition and the waitTime are displayed in the Transition icon.
</p>

<p>
In the above example, the simulation starts at <b>initialStep</b>.
After 2 seconds, Transition <b>T1</b> fires and <b>Step2</b> becomes
active. After another second Transition <b>T2</b> fires and
<b>Step3</b> becomes active. After an additional second Transition
<b>T3</b> fires and <b>intialStep</b> becomes active. Since
time &gt;2, <b>T1</b> fires at once and <b>Step2</b> becomes active
again, and so on.
</p>

<p>
In JGrafcharts, Grafcet and Sequential Function Charts, the
network of Steps and Transitions is drawn from top to bottom.
In StateGraph2 models, no particular direction is defined, since
Steps and Transitions are models with input and output connectors
that can be arbitrarily placed and connected.
Since users of Grafcet and SFC are used to the &quot;top to bottom drawing&quot;, in all
examples of this library, this <b>convention</b> is used.
This has the additional advantage that block diagrams to program
actions can be conveniently drawn from left to right as it is usual
for block diagrams.
</p>

<p>
When parameter <b>use_conditionPort</b> is enabled at a Step,
the firing condition
can be provided as Boolean input signal, instead as entry in the
menu of the Transition. An example is given in the next
Figure:
</p>

<blockquote>
<img src=\"../Images/StateGraph/UsersGuide/StepAndTransition3.png\">
</blockquote>

<p>
In the Figure, additionally parameter <b>use_activePort</b> is set
to <b>true</b> at <b>Step2</b> to provide the active flag of this
Step as Boolean output signal. To this output, component
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.OnDelay\">OnDelay</a>
is connected.
If the input of this block becomes <b>true</b>, the output becomes <b>true</b>
after a delay time. If the input of this block becomes <b>false</b>, the output
is immediately reset to <b>false</b> as well.
The output signal of the onDelay block is used as condition input of the
Transition. As a result, &quot;T2&quot; fires, once Step
&quot;Step2&quot; has been active for 1 second.
Of course, any other
Modelica block with a Boolean output signal can be
connected to the condition input of such a Transition block
as well. More details how define such actions graphically
are given in section
&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Actions\">Actions</a>&quot;
</p>

<p>
Subgraphs can be aggregated into superstates by using the
<a href=\"modelica://Modelica_StateGraph2.Parallel\">Parallel</a>
component. This component acts both as a composite step (having just <u>one branch</u>) and as a Step that has <u>parallel branches</u> that
are executed in parallel to each other. For details, see
&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Parallel\">section Parallel</a>&quot;.
</p>

<p>
The execution model of a StateGraph2 graph follows from its
Modelica implementation: Given the states of all Steps, i.e.,
whether a Step is active or not active, the equations of all
Steps, Transitions, Transition conditions, actions etc. are
sorted resulting in an execution sequence to compute
essentially the new values of the Steps. If conflicts occur,
e.g., if there are more equations as variables, of if there
are algebraic loops between Boolean variables, an error
occurs. Once all equations have been processed, the
<b>active</b> variables of all Steps are updated to the newly
calculated values. Afterwards, the equations are again
evaluated. The iteration stops, once no Step changes
its state anymore, i.e., once no Transition fires anymore.
Then, simulation continuous until a new event is triggered,
(when a relation changes its value).
</p>
<p>
With the Modelica_EmbeddedSystems library a StateGraph2 model can also
be executed within a discrete controller that is called
periodically. Furthermore, production code can be downloaded to
a target processor.
</p>

</html>
"));
end StepsAndTransitions;
