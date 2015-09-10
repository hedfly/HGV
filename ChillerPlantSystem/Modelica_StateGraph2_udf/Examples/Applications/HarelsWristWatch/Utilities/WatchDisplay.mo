within ChillerPlantSystem.Modelica_StateGraph2_udf.Examples.Applications.HarelsWristWatch.Utilities;
model WatchDisplay
  parameter Integer precision(min=0) = 0;

  Modelica.Blocks.Interfaces.IntegerInput large_digit1 annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-500,-240})));
  Modelica.Blocks.Interfaces.IntegerInput small_digit annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={640,-100})));
  Modelica.Blocks.Interfaces.IntegerInput text_digit
    "1 = Mo, 2 = Tu, 3 = We, 4 = Th, 5 = Fr, 6 = Sa, 7 = Su, 8 = AM, 9 = PM, 10 = Ch, 11 = SW"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={640,140})));
  Modelica.Blocks.Interfaces.IntegerInput illumination
    " 0 = dark {0,95,191}, 1 = standard {127,191,255}, 2 = bright {159,223,223}"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-100,240})));

  Integer dispColour[3]=if mod(illumination, 3) == 1 then {127,191,255}
       else if mod(illumination, 3) == 2 then {159,223,223} else {0,95,
      191};
  Modelica.Blocks.Interfaces.IntegerInput large_digit2 annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-300,-240})));
  Modelica.Blocks.Interfaces.IntegerInput large_digit3 annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={120,-240})));
  Modelica.Blocks.Interfaces.IntegerInput large_digit4 annotation (
      Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={300,-240})));
equation

  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-620,-220},
            {620,220}}), graphics),
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-620,-220},
            {620,220}}), graphics={Rectangle(
                    extent={{-620,220},{620,-220}},
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),Rectangle(
                    extent={{-600,200},{-400,-200}},
                    fillColor=DynamicSelect({127,191,255}, dispColour),
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillPattern=FillPattern.Solid),Rectangle(
                    extent={{-200,200},{0,-200}},
                    fillColor=DynamicSelect({127,191,255}, dispColour),
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillPattern=FillPattern.Solid),Text(
                    extent={{-580,-180},{-400,180}},
                    lineColor={0,0,255},
                    fillColor={127,255,255},
                    fillPattern=FillPattern.Solid,
                    textString=DynamicSelect("0", realString(
                      mod(large_digit1, 10),
                      1,
                      integer(precision)))),Text(
                    extent={{-198,200},{2,-200}},
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillColor={127,191,255},
                    fillPattern=FillPattern.Solid,
                    textString=":"),Rectangle(
                    extent={{-400,200},{-200,-200}},
                    fillColor=DynamicSelect({127,191,255}, dispColour),
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillPattern=FillPattern.Solid),Text(
                    extent={{-380,-180},{-200,180}},
                    lineColor={0,0,255},
                    fillColor={127,255,255},
                    fillPattern=FillPattern.Solid,
                    textString=DynamicSelect("0", realString(
                      mod(large_digit2, 10),
                      1,
                      integer(precision)))),Rectangle(
                    extent={{0,200},{200,-200}},
                    fillColor=DynamicSelect({127,191,255}, dispColour),
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillPattern=FillPattern.Solid),Text(
                    extent={{20,-180},{200,180}},
                    lineColor={0,0,255},
                    fillColor={127,255,255},
                    fillPattern=FillPattern.Solid,
                    textString=DynamicSelect("0", realString(
                      mod(large_digit3, 10),
                      1,
                      integer(precision)))),Rectangle(
                    extent={{200,200},{400,-200}},
                    fillColor=DynamicSelect({127,191,255}, dispColour),
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillPattern=FillPattern.Solid),Text(
                    extent={{220,-180},{400,180}},
                    lineColor={0,0,255},
                    fillColor={127,255,255},
                    fillPattern=FillPattern.Solid,
                    textString=DynamicSelect("0", realString(
                      mod(large_digit4, 10),
                      1,
                      integer(precision)))),Rectangle(
                    extent={{600,0},{400,-200}},
                    fillColor=DynamicSelect({127,191,255}, dispColour),
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillPattern=FillPattern.Solid),Text(
                    extent={{410,-190},{590,-10}},
                    lineColor={0,0,255},
                    fillColor={127,255,255},
                    fillPattern=FillPattern.Solid,
                    textString=DynamicSelect("0", if small_digit > 0
             then realString(
                      small_digit,
                      1,
                      integer(precision)) else "")),Rectangle(
                    extent={{600,200},{400,0}},
                    fillColor=DynamicSelect({127,191,255}, dispColour),
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillPattern=FillPattern.Solid),Text(
                    extent={{404,10},{584,190}},
                    lineColor={0,0,255},
                    fillColor={127,255,255},
                    fillPattern=FillPattern.Solid,
                    textString=if text_digit == 1 then "Mo" else if
            text_digit == 2 then "Tu" else if text_digit == 3 then "We"
             else if text_digit == 4 then "Th" else if text_digit == 5
             then "Fr" else if text_digit == 6 then "Sa" else if
            text_digit == 7 then "Su" else if text_digit == 8 then "AM"
             else if text_digit == 9 then "PM" else if text_digit == 10
             then "Ch" else if text_digit == 11 then "SW" else " ")}),
    Documentation(info="<html>
<p>Displays four large digits, one small digit and one two letter text according to signals provided through the IntegerInputs. The top IntegerInput defines the level of illumination of the display.</p>
<p><img src=\"../Images/StateGraph/Examples/WatchDisplay.png\"/></p>
<p>Signal inputs are:</p>
<p><ul>
<li>Large digits, input at the bottom. Range: 0-9</li>
<li>Small digit, input at the right bottom. Range: 0-99</li>
<li>Textual Input, input at top right.  Range: 0-11. Signals are decoded as: 0 = &QUOT;&QUOT;, 1 = &QUOT;Mo&QUOT;, 2 = &QUOT;Tu&QUOT;, 3 = &QUOT;We&QUOT;, 4 = &QUOT;Th&QUOT;, 5 = &QUOT;Fr&QUOT;, 6 = &QUOT;Sa&QUOT;, 7 = &QUOT;Su&QUOT;, 8 = &QUOT;AM&QUOT;, 9 =&QUOT; PM&QUOT;, 10=&QUOT;Ch&QUOT;, 11 = &QUOT;SW&QUOT;.</li>
<li>Illumination level at the top. Range 0-2. Signals are decoded as: 0 - dark, 1 - normal, 2 - bright.</li>
</ul></p>
</html>"));
end WatchDisplay;
