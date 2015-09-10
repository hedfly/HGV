within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
record Node
  "Node of a state machine to communicate information between steps (for suspend/resume actions and to guarantee a valid graph)"
  Boolean suspend
    "= true, if the composite step is terminated via a suspend port";
  Boolean resume "= true, if the composite step is entered via a resume port";
  function equalityConstraint
    input Node node1;
    input Node node2;
    output Real residue[0];
  algorithm
    assert(node1.suspend == node2.suspend and node1.resume == node2.resume,
      "Internal error");
  end equalityConstraint;
end Node;
