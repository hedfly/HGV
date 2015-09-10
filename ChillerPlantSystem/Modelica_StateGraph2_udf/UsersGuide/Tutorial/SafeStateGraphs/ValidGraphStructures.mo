within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide.Tutorial.SafeStateGraphs;
class ValidGraphStructures "Valid Graph Structures"

  annotation (Documentation(info="<html>
<p>
Contrary to
<a href=\"modelica://Modelica.StateGraph\">Modelica.StateGraph</a>
(version 1 of the library which is distributed with the Modelica Standard Library since 2004), only <u>valid graph structures</u> are accepted for the Modelica_StateGraph2 library. Wrong graph structures result in translation errors of the model.
</p>

<p>
For example, the model of the next Figure gives a translation error, because it has two initial steps:
</p>

<blockquote>
<img src=\"../Images/StateGraph/UsersGuide/WrongInitialSteps.png\">
</blockquote>

<p>
Also, the model of the next Figure gives a translation error, because a branch
of the Parallel component branches wrongly out of the component.
</p>

<blockquote>
<img src=\"../Images/StateGraph/UsersGuide/WrongParallel.png\">
</blockquote>

<p>
More examples of wrong StateGraph2 models that result in translation errors
are available
<a href=\"modelica://Modelica_StateGraph2.Examples.WrongStateGraphs\">here</a>.
</p>
</html>
"));
end ValidGraphStructures;
