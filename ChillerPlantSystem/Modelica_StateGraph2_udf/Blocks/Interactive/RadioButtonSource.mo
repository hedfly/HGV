within ChillerPlantSystem.Modelica_StateGraph2_udf.Blocks.Interactive;
block RadioButtonSource "Boolean signal source that mimis a radio button"

  parameter Modelica.SIunits.Time buttonTimeTable[:]
    "Time instants where button is pressed";
  input Boolean reset[:]={false}
    "Reset button to false, if an element of reset becomes true"
    annotation (Dialog(group="Time varying expressions"));

  Modelica.Blocks.Interfaces.BooleanOutput on(start=false, fixed=true)
    annotation (Placement(transformation(extent={{100,-10},{120,10}},
          rotation=0)));
protected
  Modelica.Blocks.Sources.BooleanTable table(table=buttonTimeTable);
  parameter Integer nReset=size(reset, 1);
  Boolean pre_reset[nReset];
initial equation
  pre(pre_reset) = fill(false, nReset);
  pre(reset) = fill(false, nReset);
algorithm
  pre_reset := pre(reset);
  when pre_reset then
    on := false;
  end when;

  when change(table.y) then
    on := true;
  end when;
  annotation (
    Icon(
      coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}),
      graphics={Rectangle(
                extent={{-100,-100},{100,100}},
                borderPattern=BorderPattern.Raised,
                fillColor=DynamicSelect({192,192,192}, if on > 0.5 then {0,
            255,0} else {192,192,192}),
                fillPattern=DynamicSelect(FillPattern.Solid, if on > 0.5
             then FillPattern.Solid else FillPattern.Solid),
                lineColor={128,128,128},
                lineThickness=0.5),Text(
                extent={{-100,-35},{100,35}},
                lineColor={0,0,0},
                textString="%name")},
      interaction={OnMouseDownSetBoolean(on, true)}),
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics),
    Documentation(info="<html>
<p>
Boolean signal source that mimics a radio button:
Via a table, a radio button is pressed (i.e., the output 'on' is set to true) and is reset when an element of the Boolean vector
'reset' becomes true. If both appear at the same time instant, setting
the button according to the table has a higher priority as reseting
the button. Example:
</p>

<pre>
  RadioButtonSource start(buttonTimeTable={1,3}, reset={stop.on});
  RadioButtonSource stop (buttonTimeTable={2,4}, reset={start.on});
</pre>

<p>
The \"start\" button is pressed at time=1 s and time=3 s,
whereas the \"stop\" button is pressed at time=2 s and time=4 s.
This gives the following result:
</p>

<table border=1 cellspacing=2 >
<tr><th>time [s]</th>
    <th> start.on </th>
    <th> stop.on </th>
    </tr>
<tr><td> 0 </td>
    <td> false </td>
    <td> false </td>
    </tr>
<tr><td> 1 </td>
    <td> false </td>
    <td> false </td>
    </tr>
<tr><td> 1 </td>
    <td> true </td>
    <td> false </td>
    </tr>
<tr><td> 2 </td>
    <td> true </td>
    <td> false </td>
    </tr>
<tr><td> 2 </td>
    <td> false </td>
    <td> true </td>
    </tr>
<tr><td> 3 </td>
    <td> false </td>
    <td> true </td>
    </tr>
<tr><td> 3 </td>
    <td> true </td>
    <td> false </td>
    </tr>
<tr><td> 4 </td>
    <td> true </td>
    <td> false </td>
    </tr>
<tr><td> 4 </td>
    <td> false </td>
    <td> true </td>
    </tr>
</table>
</html>"));
end RadioButtonSource;
