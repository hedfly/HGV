within ChillerPlantSystem.Buildings.Fluid.HeatExchangers.DXCoils.Data.DoubleSpeed;
record Generic "Generic data record for DoubleSpeed DXCoils"
  extends Buildings.Fluid.HeatExchangers.DXCoils.Data.Generic.DXCoil(final nSta=
       2);
  annotation (defaultComponentName="per", Documentation(info=
                                                         "<html>
This record is used as a template for performance data
for DoubleSpeed DXCoils
<a href=\"Buildings.Fluid.HeatExchangers.DXCoils.DoubleSpeed\">
Buildings.Fluid.HeatExchangers.DXCoils.DoubleSpeed</a>.
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
