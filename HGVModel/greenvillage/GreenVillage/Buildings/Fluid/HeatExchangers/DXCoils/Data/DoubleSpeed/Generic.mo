within GreenVillage.Buildings.Fluid.HeatExchangers.DXCoils.Data.DoubleSpeed;
record Generic "Generic data record for DoubleSpeed DXCoils"
  extends Buildings.Fluid.HeatExchangers.DXCoils.Data.Generic.DXCoil(final nSta=
       2);
  annotation (
    defaultComponentName="datCoi",
    defaultComponentPrefixes="parameter",
    Documentation(info=
                 "<html>
<p>
This record is used as a template for performance data
for the double speed DX coils
<a href=\"Buildings.Fluid.HeatExchangers.DXCoils.DoubleSpeed\">
Buildings.Fluid.HeatExchangers.DXCoils.DoubleSpeed</a>.
</p>
</html>",
        revisions="<html>
<ul>
<li>
November 20, 2012 by Thierry S. Nouidui:<br/>
First implementation.
</li>
</ul>
</html>"));
end Generic;
