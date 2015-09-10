within ChillerPlantSystem.Modelica_StateGraph2_udf.Internal.Interfaces;
connector Step_in_base "Input port of a step without icon"
  input Boolean fire "true, if transition fires and step is activated"
    annotation (HideResult=true);

  Node node
    "Communicates suspend/resume flags and is used to check the correct connection structure."
    annotation (HideResult=true);

  // only for checking properties of the graph
  output Boolean checkUnaryConnection
    "Is used to guarantee that only 1:1 connections are possible"
    annotation (HideResult=true);

  input Boolean checkOneDelayedTransitionPerLoop
    "Is used to check that every connection loop has at least one delayed transition"
    annotation (__Dymola_BooleanLoopMessage="
Every loop of a StateGraph must have at least one delayed transition
(an instance of Components.Transition with parameter delayedTransition = true)
in order that infinite event looping cannot occur. Alternatively you can set
checkLoop=false in the Advanced tab of the Transition, provided you are
absolutely sure that this cannot happen.
", HideResult=true);

end Step_in_base;
