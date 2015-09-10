within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide;
package Tutorial "Tutorial"


  annotation (__Dymola_DocumentationClass=true, Documentation(info="<html>
<p>
This tutorial provides an introduction into the
<b>Modelica_StateGraph2</b> package (which is often abbreviated as StateGraph2).
A <b>StateGraph2</b> model is a state diagram/state machine to model
discrete event, reactive and hybrid systems.
It is inspired by Grafcet/Sequential Function Charts (SFC), Statecharts,
Safe State Machines (SSM) and Mode Automata, and utilizes Modelica as action language.
This tutorial consists of the following sections:
</p>

<ol>
<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.StepsAndTransitions\">Steps
    and Transitions</a>&quot; gives an overview about the most important
    elements: Steps and Transitions.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Parallel\">Parallel</a>&quot;
    gives an overview how to construct composite subgraphs and how run subgraphs in
    parallel, either autonoumsly or with synchronization.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Actions\">Actions</a>&quot;
    gives an overview how to associate actions in a graphical way
    with Steps, Transitions and Parallel components.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.SafeStateGraphs\">Safe
    StateGraphs</a>&quot;
    discusses in which sense &quot;StateGraph2&quot; models
    are &quot;safe&quot;.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.VectorsOfConnectors\">Vectors
    of Connectors</a>&quot;
    sketches how connections to vectors of connectors (which are often used in the
    StateGraph2 library) are automatically handled in a convenient way.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.ApplicationExample\">Application Example</a>&quot;
    gives a more involved application example: The control of a two tank system.</li>
</ol>

</html>
"));
end Tutorial;
