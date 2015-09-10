within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide.Tutorial;
class ApplicationExample "Application example"

  annotation (Documentation(info="<html>
<p>
In this section an application example
is shown, to demonstrate various features of the Modelica_StateGraph2 library.
This example shows the control of a two tank system which is based
on the master thesis of Isolde Dressler
(<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">see literature</a>).
</p>
<p>
In the following figure the top level of the model is shown.
This model is available from
<a href=\"Modelica_StateGraph2.Examples.Applications.ControlledTanks.ControlledTanks1\">here</a>.
</p>

<blockquote>
<img src=\"../Images/StateGraph/Examples/ControlledTanks1.png\">
</blockquote>

<p>
In the right part of the figure, two tanks are shown. At the top part,
a large fluid source is present from which fluid can be filled in
<b>tank1</b> when <b>valve1</b> is open. Tank1 can be emptied via
<b>valve2</b> that is located in the bottom of tank2 and
fills a second <b>tank2</b> which in turn is emptied via
<b>valve3</b>. The actual levels of the tanks are measured
and are provided as signals <b>level1</b> and <b>level2</b>
to the <b>tankController</b>.
</p>
<p>
The <b>tankController</b> is controlled by three buttons,
<b>start</b>, <b>stop</b> and <b>shut</b> (for shutdown)
that are mutually exclusive. This means that whenever one button is
pressed (i.e., its state is <b>true</b>) then the other two
buttons are not pressed (i.e., their states are <b>false</b>).
When button <b>start</b> is pressed, the \"normal\" operation
to fill and to empty the two tanks is processed:
</p>
<ol>
<li> Valve 1 is opened and tank 1 is filled.</li>
<li> When tank 1 reaches its fill level limit,
     valve 1 is closed. </li>
<li> After a waiting time, valve 2 is
     opened and the fluid flows from tank 1 into tank 2.</li>
<li> When tank 1 is empty, valve 2 is closed. </li>
<li> After a waiting time, valve 3 is opened and
     the fluid flows out of tank 2</li>
<li> When tank 2 is empty, valve 3 is closed</liI>
</ol>
<p>
The above \"normal\" process can be influenced by the following
buttons:
</p>
<ul>
<li> Button <b>start</b> starts the above process.
     When this button is pressed after a \"stop\" or
     \"shut\" operation, the process operation continues.
     </li>
<li> Button <b>stop</b> stops the above process by
     closing all valves. Then, the controller waits for
     further input (either \"start\" or \"shut\" operation).</li>
<li> Button <b>shut</b> is used to shutdown the process,
     by emptying at once both tanks. When this is achieved,
     the process goes back to its start configuration.
     Clicking on \"start\", restarts the process.</li>
</ul>
<p>
The implementation of the <b>tankController</b> is shown in
the next figure:
</p>
<p align=\"center\">
<img src=\"../Images/StateGraph/Examples/ControlledTanks2.png\">
</p>
<p>
When the \"<b>start</b>\" button is pressed, the Modelica_StateGraph2 is
within the Parallel step \"<b>makeProduct</b>\". During normal
operation this step is not left.
</p>
<p>
When the \"<b>stop</b>\" button is pressed, the \"makeProduct\"
step is at once terminated via the \"<b>suspend</b>\" port
and the Modelica_StateGraph2 waits in step \"<b>stopStep1</b>\" for further
commands. When the \"<b>start</b>\" button is pressed, the makeProduct step
is re-entered via its <b>resume</b> port and the \"normal\"
operation continues at the state where it was aborted by the
suspend transition. If the \"<b>shut</b>\" button is pressed,
the Modelica_StateGraph2 waits in the \"<b>shutStep</b>\" parallel step, until
both tanks are empty and then waits at the
\"<b>startStep</b>\" for further input.
</p>
<p>
The opening and closing of valves is <b>not</b> directly
defined in the Modelica_StateGraph2. Instead via the \"<b>setValveX</b>\"
components, the Boolean state of the valves are computed.
For example, the output y of \"setValve3\" is computed as:
</p>
<pre>
  y = emptyTanks.active or shutTank2.active
</pre>
<p>
i.e., valve3 is open, when step \"emptyTanks\" or when
step \"shutTank2\" is active. Otherwise, valve3 is closed.
</p>

<p>
An alternative implementation of the tank controller is available from
<a href=\"Modelica_StateGraph2.Examples.Applications.ControlledTanks.ControlledTanks2\">here</a>.
The differences to the implementation shown above are:
</p>

<ul>
<li> All signals are reported via a signal bus and the bus signals
     are directly utilized as conditions in transitions.</li>
<li> The controller is hierarchically structured for the different tasks
     using the
     <a href=\"modelica://Modelica_StateGraph2.PartialParallel\">PartialParallel</a>
     component.</li>
</ul>

<p>
The top level of this alternative implementation of the tank controller
is shown in the following figure:
</p>

<blockquote>
<img src=\"../Images/StateGraph/Examples/ControlledTanks3.png\">
</blockquote>

<p>
The &quot;MakeProduct&quot; Parallel component is the initial step and performs the &quot;normal&quot; operation. When the &quot;stop&quot; button is pressed, the suspend transition T8 fires, the &quot;MakeProduct&quot; step is suspended and the graph goes in to step &quot;stopStep1&quot;. Note, the transition condition of T8 is &quot;bus.stop&quot;, i.e., this transition fires when variable stop from the bus is true. When &quot;start&quot; is pressed again, the &quot;MakeProduct&quot; step is resumed at the place where it was suspended. When &quot;shut&quot; is pressed, the Parallel component &quot;ShutStep&quot; is entered to shut down the tank system. Here it is still possible to press the &quot;stop&quot; button and then again continue with &quot;shut&quot;.
</p>
</html>
"));
end ApplicationExample;
