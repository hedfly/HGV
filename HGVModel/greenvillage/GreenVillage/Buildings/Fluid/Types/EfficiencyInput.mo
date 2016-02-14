within GreenVillage.Buildings.Fluid.Types;
type EfficiencyInput = enumeration(
    volume "use state of fluid volume",
    port_a "use port_a",
    port_b "use port_b",
    average "use (port_a+port_b)/2)")
  "Enumeration to define the input for efficiency curves";
