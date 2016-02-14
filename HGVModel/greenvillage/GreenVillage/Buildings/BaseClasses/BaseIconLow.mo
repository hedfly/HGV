within GreenVillage.Buildings.BaseClasses;
block BaseIconLow "Base icon with model name below the icon"

  annotation (Icon(graphics={Text(
          extent={{-50,-84},{48,-132}},
          lineColor={0,0,255},
          textString=
               "%name")}),
Documentation(
info="<html>
<p>
Basic class that provides a label with the component name below the icon.
</p>
</html>",
revisions="<html>
<ul>
<li>
April 28, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));

end BaseIconLow;
