within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.ControlledTanks;
model ControlledTanks1
  extends Internal.PartialControlledTank;
  Internal.TankController1 tankController(
  limit1=0.9*tank1.height,
  limit2=0.9*tank2.height,
  waitTime=50,
  minLevel=0.01)
    annotation (Placement(transformation(extent={{-50,-20},{-10,20}},
            rotation=0)));

Modelica_StateGraph2_udf.Blocks.Interactive.RadioButtonSource start(reset={stop.on,
        shut.on}, buttonTimeTable={20,280}) annotation (Placement(
        transformation(extent={{-100,20},{-80,40}}, rotation=0)));
Modelica_StateGraph2_udf.Blocks.Interactive.RadioButtonSource stop(reset={start.on,
        shut.on}, buttonTimeTable={220,650}) annotation (Placement(
        transformation(extent={{-100,-10},{-80,10}}, rotation=0)));
Modelica_StateGraph2_udf.Blocks.Interactive.RadioButtonSource shut(reset={start.on,
        stop.on}, buttonTimeTable={700}) annotation (Placement(transformation(
          extent={{-100,-40.5},{-80,-20.5}}, rotation=0)));
Modelica.Blocks.Sources.RealExpression level1(y=tank1.level)
  annotation (Placement(transformation(extent={{-75,-57},{-50,-37}},
        rotation=0)));
Modelica.Blocks.Sources.RealExpression level2(y=tank2.level)
  annotation (Placement(transformation(extent={{-54,-75},{-29,-55}},
        rotation=0)));
equation

connect(level1.y, tankController.level1) annotation (Line(
    points={{-48.75,-47},{-42,-47},{-42,-22}},
    color={0,0,127},
    smooth=Smooth.None));
connect(level2.y, tankController.level2) annotation (Line(
    points={{-27.75,-65},{-18,-65},{-18,-22}},
    color={0,0,127},
    smooth=Smooth.None));
connect(tankController.valve1, valve1.open) annotation (Line(
    points={{-9,12},{2,12},{2,57},{-6,57},{-6,72}},
    color={255,0,255},
    smooth=Smooth.None));
connect(tankController.valve2, valve2.open) annotation (Line(
    points={{-9,0},{12,0},{12,10},{26,10}},
    color={255,0,255},
    smooth=Smooth.None));
connect(tankController.valve3, valve3.open) annotation (Line(
    points={{-9,-12},{10,-12},{10,-40},{35,-40},{35,-62}},
    color={255,0,255},
    smooth=Smooth.None));
connect(start.on, tankController.start) annotation (Line(
    points={{-79,30},{-66,30},{-66,12},{-52,12}},
    color={255,0,255},
    smooth=Smooth.None));
connect(stop.on, tankController.stop) annotation (Line(
    points={{-79,0},{-52,0}},
    color={255,0,255},
    smooth=Smooth.None));
connect(shut.on, tankController.shut) annotation (Line(
    points={{-79,-30.5},{-70,-30.5},{-70,-12},{-52,-12}},
    color={255,0,255},
    smooth=Smooth.None));
annotation (
  Diagram(coordinateSystem(
      preserveAspectRatio=true,
      extent={{-100,-100},{100,100}},
      grid={1,1}), graphics),
  Icon(coordinateSystem(
      preserveAspectRatio=true,
      extent={{-100,-100},{100,100}},
      grid={1,1})),
  experiment(StopTime=900),
  Documentation(info="<html>
<p>
With this example the controller of a tank filling/emptying system
is demonstrated. This example is from Dressler (2004),
see <a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">Literature</a> which
in turn is based on an example model from Karl Erk Arzen of JGraphCharts.
</p>

<p>
The basic operation is to fill and empty the two tanks:
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
The above \"normal\" operation can be influenced by three
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
The tank controller has some safeguards to prevent the tanks
to overflow even if there are errors in the control system:
</p>

<ul>
<li> Valve 1 is closed in any case, if the fill level
     of tank 1 is 1.01*fill limit.</li>
<li> Valve 2 is closed in any case, if the fill level
     of tank 2 is 1.01*fill limit.</li>
</ul>

<p>
The default simulation time is 900 s. The result can be animated.
For this, set in Dymola in the command window:
\"animationSpeed(speed = 50)\".
</p>
</html>"));
end ControlledTanks1;
