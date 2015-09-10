within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector Transition_out_base "Output port of a transition without icon"
  output Boolean fire
    "true, if transition fires and step connected to the transition output becomes active"
    annotation (HideResult=true);

  Node node
    "Communicates suspend/resume flags and is used to check the correct connection structure."
    annotation (HideResult=true);

  // only for checking properties of the graph
  input Boolean checkUnaryConnection
    "Is used to guarantee that only 1:1 connections are possible"
    annotation (HideResult=true);

  output Boolean checkOneDelayedTransitionPerLoop
    "Is used to check that every connection loop has at least one delayed transition"
    annotation (__Dymola_BooleanLoopMessage="
Every loop of a StateGraph must have at least one delayed transition
(an instance of Components.Transition with parameter delayedTransition = true)
in order that infinite event looping cannot occur. Alternatively you can set
checkLoop=false in the Advanced tab of the Transition, provided you are
absolutely sure that this cannot happen.
", HideResult=true);
end Transition_out_base;
