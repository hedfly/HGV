within ChillerPlantSystem.Modelica_StateGraph2_udf.UsersGuide;
class UsedModelicaExtensions "Used Modelica Extensions"

  annotation (Documentation(info="<html>
<p>
This library is implemented with the
<a href=\"http://www.modelica.org/documents/ModelicaSpec31.pdf\">Modelica 3.1</a> language.
Additionally, some <u>extensions</u> to the Modelica language are used, in order to
guarantee that only valid StateGraph2 graphs are accepted by a Modelica tool.
It is planned to introduce these new language elements into the <u>next version 3.2</u>
of the Modelica language. This means, only Modelica tools will be able to process
this Modelica_StateGraph2 package, if the following (non-standard)
extensions of Modelica are supported:
</p>

<h4>Connection Graphs for State Diagrams (new section 9.4.2)</h4>
<p>
In order that a Modelica translator can guarantee the connection structure of hierarchical state diagrams, some additional operators are needed for the virtual connection graph. This special virtual connection graph is called &quot;virtual state diagram graph&quot; in the sequel. Virtual state diagram graphs are undirected graphs having overdetermined type or record instances as nodes. The branches are defined by connect(..) and by Connections.branch(..) statements. With the new operators Connections.<b>uniqueRoot</b>(..) and Connections.<b>uniqueRootIndices</b>(..) restrictions to the graph are introduced, as defined in the following table. If one node of a virtual connection graph is marked with uniqueRoot(..), then a virtual state diagram graph is present and it is not allowed to apply the operators Connections.root(..), Connections.potentialRoot, or Connections.isRoot(..) on a node of this graph.
</p>

<ul>
<li> New operator: Connections.<b>uniqueRoot</b>(root, message=&quot;&quot;)<br>
The overdetermined type or record instance &quot;root&quot; is a unique root node in a virtual state diagram graph. Every virtual state diagram graph must have exactly one uniqueRoot(..) definition, before breakable branches are removed. Argument &quot;root&quot; may be a vector. Then, the operator is applied on every element of this vector.
The second argument is a message that shall be reported if the root is not unique. From all uniqueRoot(..) definitions of the same graph, only one of the message arguments shall (arbitrarily) be selected and used in the error message. [<i>The error message should additionally include the path (= instance names) between the unique root definitions. A typical value for message is: &quot;Two or more state diagram graphs are connected that should not be connected&quot;</i>]<br>&nbsp;
</li>

<li> New operator: rootIndices = Connections.<b>uniqueRootIndices</b>(roots, nodes, message=&quot;&quot;)<br>
The two first input arguments are vectors of overdetermined types or record instances with the restriction that size(nodes,1) &le; size(roots,1).
Vector &quot;roots&quot; must contain unique roots in the virtual state diagram graphs. The function returns an Integer vector which is a permuted version of vector &quot;1:size(roots,1)&quot;:
<ul>
<li> rootIndices[i], i = 1,.., size(nodes,1):<br>
     There is a path from roots[rootIndices[i]] to nodes[i].
     It is an error, if such a path does not exist.
     In such a case, the error message should include the third argument &quot;message&quot;.</li>
<li> rootIndices[j], j = size(nodes,1) + 1, ..., size(roots,1):<br>
     There is no path from roots[rootIndices[j]] to an element of nodes[:]. </li>
</ul>
[<i>The typical use is to verify the connection structure of a Parallel component.
Furthermore, it is determined at which entry index a branch starts and at which exit index the branch stops. This information might be used to determine that every &quot;loop&quot;
has at least one delayed transition. Example:</i>
<pre>
  EntryPort entry  [nEntry];
  ExitPort  exit   [nExit];
  Integer   indices[nEntry];
<b>equation</b>
  Connections.uniqueRoot(entry, \"...\");
  indices = Connections.uniqueRootIndices(entry, exit, \"...\");
</pre>]
</li>
</ul>

</html>
"));

end UsedModelicaExtensions;
