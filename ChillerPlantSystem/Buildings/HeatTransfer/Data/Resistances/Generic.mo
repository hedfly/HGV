within ChillerPlantSystem.Buildings.HeatTransfer.Data.Resistances;
record Generic "Thermal properties of heat resistances"
    extends Buildings.HeatTransfer.Data.BaseClasses.Material(
    final c=0,
    final d=0,
    final k=0,
    final x=0,
    final nStaRef=0,
    final nSta=1,
    final steadyState=true,
    final TSol=293.15,
    final TLiq=293.15,
    final LHea=0,
    final phasechange=false);

  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Rectangle(
          extent={{-100,50},{100,-100}},
          fillColor={255,255,127},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}), Text(
          extent={{-98,-72},{96,-94}},
          lineColor={0,0,255},
          textString="R=%R")}),
    defaultComponentName="mat",
              Documentation(info="<html>
Generic record for thermal properties of
heat resistances.
</html>",
revisions="<html>
<ul>
<li>
Sep. 3 2010, by Michael Wetter, Wangda Zuo:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;