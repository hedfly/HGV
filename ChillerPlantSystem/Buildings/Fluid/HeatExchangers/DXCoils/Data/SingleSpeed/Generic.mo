within ChillerPlantSystem.Buildings.Fluid.HeatExchangers.DXCoils.Data.SingleSpeed;
record Generic "Generic data record for SingleSpeed DXCoils"
  extends Buildings.Fluid.HeatExchangers.DXCoils.Data.Generic.DXCoil(final nSta=
       1);
  annotation (defaultComponentName="per", Documentation(info=
                                                         "<html>
This record is used as a template for performance data
for SingleSpeed DXCoils
<a href=\"Buildings.Fluid.HeatExchangers.DXCoils.SingleSpeed\">
Buildings.Fluid.HeatExchangers.DXCoils.SingleSpeed</a>.
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
