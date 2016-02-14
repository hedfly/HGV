within GreenVillage.Buildings.Media.Water;
record extends ThermodynamicState(
    T(start=T_default),
    p(start=p_default)) "Thermodynamic state variables"
end ThermodynamicState;
