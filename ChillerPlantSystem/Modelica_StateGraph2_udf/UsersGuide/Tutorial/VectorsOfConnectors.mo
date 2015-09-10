within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide.Tutorial;
class VectorsOfConnectors "Vectors of Connectors"

  annotation (Documentation(info="<html>
<p>
<img src=\"../Images/StateGraph/Elements/Step-default.png\" align=\"right\">
The &quot;inPort&quot; (= ellipse at the top part of a Step; see Figure to the right),
the &quot;resume&quot; port (= ellipse at the left part of a Parallel component),
the &quot;outPort&quot; (= triangle at the bottom part of a Step and of a Parallel
component), and
the &quot;suspend&quot; port (= triangle at the left part of a Parallel component)
connectors are <u>vector of connectors</u>, respectively.
When drawing a connection line from, e.g., a Transition to a Step inPort connector, the dimension of the vector of connectors Step.inPort has to be increased by one, say to dimension N, and then the connection has to be performed from Transition.outPort to Step.outPort[N]. Performing this manually is inconvenient and error prone. For this reason, in
<a href=\"http://www.modelica.org/documents/ModelicaSpec31.pdf\">Modelica 3.1</a> (section 17.6) the new annotation <u>connectorSizing</u> was introduced. This annotation is used for all vector connectors in the StateGraph2 library. Example:
</p>

<pre>
  <b>model</b> Step
     <b>parameter</b> Integer <u>nIn</u>=0 <b>annotation</b>(Dialog(<u>ConnectorSizing=<b>true</b></u>));
     Modelica_StateGraph2.Internal.Interfaces.Step_in inPort[<u>nIn</u>];
     ...
  <b>end</b> Step;
</pre>

<p>
When this model is used and a connection is made to vector &quot;inPort&quot;, then the tool increments the dimension nIn by one and performs the connection to this new index. Therefore, performing connections between Steps and Transitions or Parallel components and Transitions is convenient for a user and only requires to draw a line between the corresponding connectors.
</p>

</html>
"));
end VectorsOfConnectors;
