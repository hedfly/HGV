within ChillerPlantSystem.Buildings.HeatTransfer.Data.SolidsPCM;
record PCM020 =Buildings.HeatTransfer.Data.SolidsPCM.Generic (
    k=0.204,
    d=800,
    c=1341,
    TSol=273.15 + 23,
    TLiq=273.15 + 27,
    LHea=38900) "Wallboard with 20% of microencapsulated paraffin"
  annotation (Documentation(info="<html>
<p>
This material record is for PCM treated wallboard. The data source is Feustel (1995).
</p>
<h4>References</h4>
<p>
Feustel, Helmut E.
Simplified numerical description of latent storage characteristics for phase change wallboard.
<i>LBNL-Technical Report 36933</i>. 1995.
<a href=\"http://dx.doi.org/10.2172/70723\">DOI: 10.2172/70723</a>.
</p>
</html>",
revisions="<html>
<ul>
<li>
March 18, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
