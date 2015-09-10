within ChillerPlantSystem;
package Modelica_StateGraph2_udf 


annotation (
  preferredView="info",
  versionBuild=1,
  versionDate="2013-10-01",
  dateModified="2013-10-01 15:20:00Z",
  revisionId="$Id:: package.mo 7061 2013-10-01 13:37:34Z #$",
  Documentation(info="<html>
<p>
<img src=\"../Images/StateGraph/UsersGuide/StateGraphElements.png\" align=\"right\">
Library <b>Modelica_StateGraph2</b> is a <b>free</b> Modelica package providing
components to model <b>discrete event</b>, <b>reactive</b> and
<b>hybrid</b> systems in a convenient way with <b>deterministic hierarchical state diagrams</b>.
For convenience, the abbreviation \"StateGraph2\" will be
often used for this library. An example model constructed with this
library is shown in the figure to the right.
</p>

<p>
This library is inspired by Grafcet/Sequential Function Charts (SFC), Statecharts,
Safe State Machines (SSM) and Mode Automata, and utilizes Modelica as action language.
It has a similar modeling power as
these formalisms, e.g. synchronization of parallel executing branches
as in SFC (not easy in Statecharts), or suspending a hierarchical subgraph with one
transition and resuming at the same states afterwards when entering it again, as in Statechart (not possible in SFC). A StateGraph2 model is always deterministic due to
Modelicas \"single assignment rule\". Via special blocks in subpackage \"Blocks\",
actions can be defined in a graphical way depending on the active step.
</p>

<p>
In order to construct a new state machine, exactly one instance of either \"Step\"
or of \"Parallel\" must have parameter \"initialStep = <b>true</b>\".
The \"Parallel\" component is both used as \"composite step\" (so only one branch),
as well as \"parallel step\" (so several execution branches). The branches can be
synchronized (if parameter use_outPort = <b>true</b>) or can run unsynchronized
to each other (if parameter use_outPort = <b>false</b>).
</p>

<p>
For an introduction, have especially a look at:
</p>

<ul>
<li><a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial\">Tutorial</a>
     provides an overview of the library inside the User's Guide.</li>
<li><a href=\"modelica://Modelica_StateGraph2.Examples\">Examples</a>
     provides simple introductory examples as well as involved application examples.</li>
<li> <a href=\"modelica://Modelica_StateGraph2.UsersGuide.ComparisonWithStateGraph1\">ComparisonWithStateGraph1</a>
     summarizes the enhancements with respect to the previous version of
     Modelica.StateGraph.</li>
</ul>

<p>
This library is implemented with Modelica 3.1 and utilizes non-standard extensions to Modelica 3.1 as summarized
<a href=\"modelica://Modelica_StateGraph2.UsersGuide.UsedModelicaExtensions\">here</a>.
</p>

<p>
<b>Licensed by DLR and Dynasim under the Modelica License 2</b><br>
Copyright &copy; 2003-2013, DLR and 2007-2009, Dynasim AB
</p>

<p>
<i>This Modelica package is <u>free</u> software and
the use is completely at <u>your own risk</u>;
it can be redistributed and/or modified under the terms of the
Modelica license 2, see the license conditions (including the
disclaimer of warranty)
<a href=\"modelica://Modelica_StateGraph2.UsersGuide.ModelicaLicense2\">here</a></u>
or at
<a href=\"http://www.Modelica.org/licenses/ModelicaLicense2\">
http://www.Modelica.org/licenses/ModelicaLicense2</a>.</i>
</p>

</html>"));
end Modelica_StateGraph2_udf;
