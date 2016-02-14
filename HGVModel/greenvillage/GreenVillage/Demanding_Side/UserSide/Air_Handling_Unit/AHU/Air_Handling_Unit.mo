within GreenVillage.Demanding_Side.UserSide.Air_Handling_Unit.AHU;
model Air_Handling_Unit
   replaceable package Medium_Air =
      Modelica.Media.Interfaces.PartialMedium;
   replaceable package Medium_ColdWater =
      Modelica.Media.Interfaces.PartialMedium;
   parameter Real P_SF[:] "Supply fan power array";
   parameter Real v_flow_SF[:] "Supply fan volume flow rate array";
   parameter Real p_flow_SF[:] "Supply fan Pressure array";
   parameter Real ti_SF "ti for supply fan controller";
   parameter Real k_SF "k for supply fan controller";
   parameter Real S_min_SF "The minimum speed for supply fan";
   parameter Modelica.SIunits.MassFlowRate mOut_flow_nominal
    "Mass flow rate of the outside air damper";
   parameter Modelica.SIunits.Pressure dpOut_nominal(min=0, displayUnit="Pa")
    "Pressure drop of the outside air damper (fully open)";
   parameter Modelica.SIunits.MassFlowRate mRec_flow_nominal
    "Mass flow rate of the recirculation air damper";
   parameter Modelica.SIunits.Pressure dpRec_nominal(min=0, displayUnit="Pa")
    "Pressure drop of the recirculation air damper (fully open)";
   parameter Modelica.SIunits.MassFlowRate mExh_flow_nominal
    "Mass flow rate of the exhaust air damper";
   parameter Modelica.SIunits.Pressure dpExh_nominal(min=0, displayUnit="Pa")
    "Pressure drop of the exhaust air damper";
   parameter Modelica.SIunits.MassFlowRate mAir_CC_flow_nominal
    "The nominal mass flow rate of the cooling air";
   parameter Modelica.SIunits.MassFlowRate mWater_CC_flow_nominal
    "The nominal mass flow rate of the cooling water";
   parameter Modelica.SIunits.Pressure dpAir_CC_nominal
    "The pressure drop of the cooling air";
   parameter Modelica.SIunits.Pressure dpWater_CC_nominal
    "The pressure drop of the cooling water";
   parameter Modelica.SIunits.Temperature TAir_CC_a_nominal
    "The nominal temperature of the air entering the cooling water coil";
   parameter Modelica.SIunits.Temperature TAir_CC_b_nominal
    "The nominal temperature of the air leaving the cooling water coil";
   parameter Modelica.SIunits.Temperature TWater_CC_a_nominal
    "The nominal temperature of the water entering the cooling water coil";
   parameter Modelica.SIunits.Temperature TWater_CC_b_nominal
    "The nominal temperature of the water leaving the cooling water coil";
   parameter Real k;
   parameter Real ti;

  Coil.Coil_2Way cooling_Coil(
    redeclare package Medium_Air = Medium_Air,
    mAir_flow_nominal=mAir_CC_flow_nominal,
    mWater_flow_nominal=mWater_CC_flow_nominal,
    dpAir_nominal=dpAir_CC_nominal,
    dpWater_nominal=dpWater_CC_nominal,
    TAir_a_nominal=TAir_CC_a_nominal,
    TAir_b_nominal=TAir_CC_b_nominal,
    TWater_a_nominal=TWater_CC_a_nominal,
    TWater_b_nominal=TWater_CC_b_nominal,
    redeclare package Medium_Water = Medium_ColdWater,
    UA=-mWater_CC_flow_nominal*4200*(TWater_CC_b_nominal - TWater_CC_a_nominal)
        /Buildings.Fluid.HeatExchangers.BaseClasses.lmtd(
        TWater_CC_a_nominal,
        TWater_CC_b_nominal,
        TAir_CC_a_nominal,
        TAir_CC_b_nominal))
    annotation (Placement(transformation(extent={{-20,-26},{18,10}})));
  Fan.Variable_Speed_Fan Supply_Fan(redeclare package Medium = Medium_Air, add_heat_to_fluid=false,
    P=P_SF,
    v_flow=v_flow_SF,
    p_flow=p_flow_SF)               annotation (Placement(transformation(extent={{82,-16},
            {114,14}})));
  MixingBox.MixingBox mixingBox(redeclare package Medium_Air = Medium_Air,
    mOut_flow_nominal=mOut_flow_nominal,
    dpOut_nominal=dpOut_nominal,
    mRec_flow_nominal=mRec_flow_nominal,
    dpRec_nominal=dpRec_nominal,
    mExh_flow_nominal=mExh_flow_nominal,
    dpExh_nominal=dpExh_nominal)
                                annotation (Placement(transformation(
        extent={{-16,-16},{16,16}},
        rotation=-90,
        origin={-70,24})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium = Medium_Air)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
                                                                                                  annotation (Placement(transformation(extent={{130,-10},{150,10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium = Medium_Air)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
                                                                                                  annotation (Placement(transformation(extent={{-170,-10},{-150,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_Exh(redeclare package Medium =
        Medium_Air)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
                                                                                                        annotation (Placement(transformation(extent={{-110,90},{-90,110}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_Fre(redeclare package Medium =
        Medium_Air)
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
                                                                                                        annotation (Placement(transformation(extent={{-70,90},{-50,110}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b_Cold_Water(redeclare package
      Medium =
        Medium_ColdWater)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
                                                                                                  annotation (Placement(transformation(extent={{-32,
            -110},{-12,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a_Cold_Water(redeclare package
      Medium =
        Medium_ColdWater)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
                                                                                                  annotation (Placement(transformation(extent={{10,-110},
            {30,-90}})));
  Modelica.Blocks.Interfaces.RealInput Mix_Set
    "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{-180,70},{-160,90}})));
  Fan.Controller.Pressure_based_SF_control pressure_based_SF_control(
    ti=ti_SF,
    k=k_SF,
    S_min=S_min_SF)                                                  annotation (Placement(transformation(extent={{100,30},{80,50}})));
  Modelica.Blocks.Interfaces.RealInput Pre_Set
    "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{160,70},{140,90}})));
  Modelica.Blocks.Interfaces.RealInput Pre_Mea
    "Connector of setpoint input signal"                                            annotation (Placement(transformation(extent={{160,30},{140,50}})));
  Controller.HP_PI hP_PI(k=k, ti=ti)
    annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
  Modelica.Blocks.Interfaces.RealInput SetPoi
    "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{-180,-90},{-160,-70}})));
  Modelica.Blocks.Interfaces.RealInput CoolOn
    "Connector of setpoint input signal"
    annotation (Placement(transformation(extent={{-180,-30},{-160,-10}})));
  Modelica.Blocks.Interfaces.RealOutput PFan "Electrical power consumed"
    annotation (Placement(transformation(extent={{140,-70},{160,-50}})));
equation
  connect(cooling_Coil.port_b_Air, Supply_Fan.port_a) annotation (Line(
      points={{18.38,-0.8},{68.19,-0.8},{68.19,-1},{82,-1}},
      color={0,127,255},
      thickness=1));
  connect(Supply_Fan.port_b, port_b) annotation (Line(
      points={{114,-1},{114,0},{140,0}},
      color={0,127,255},
      thickness=1));
  connect(mixingBox.port_Fre, port_Fre) annotation (Line(
      points={{-63.6,40},{-63.6,69},{-60,69},{-60,100}},
      color={0,127,255},
      thickness=1));
  connect(port_Exh, port_Exh) annotation (Line(points={{-100,100},{-100,100}}, color={0,127,255}));
  connect(mixingBox.port_Exh, port_Exh) annotation (Line(
      points={{-76.4,40},{-76.4,68},{-100,68},{-100,100}},
      color={0,127,255},
      thickness=1));
  connect(port_b_Cold_Water, port_b_Cold_Water) annotation (Line(points={{-22,-100},
          {-22,-100},{-22,-96},{-24,-96},{-24,-100},{-22,-100}},                               color={0,127,255}));
  connect(cooling_Coil.port_b_Water, port_b_Cold_Water) annotation (Line(
      points={{-4.8,-26},{-4.8,-60},{-22,-60},{-22,-100}},
      color={0,127,255},
      thickness=1));
  connect(cooling_Coil.port_a_Water, port_a_Cold_Water) annotation (Line(
      points={{2.8,-26},{2.8,-60},{20,-60},{20,-100}},
      color={0,127,255},
      thickness=1));
  connect(pressure_based_SF_control.u_s, Pre_Set) annotation (Line(
      points={{102,46},{120,46},{120,80},{150,80}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(pressure_based_SF_control.u_m,Pre_Mea)  annotation (Line(
      points={{102,34},{120,34},{120,40},{150,40}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(pressure_based_SF_control.y, Supply_Fan.y) annotation (Line(
      points={{79,40},{74,40},{74,5},{80.4,5}},
      color={0,0,127},
      pattern=LinePattern.Dash));
  connect(port_a, mixingBox.port_Ret) annotation (Line(
      points={{-160,0},{-76.4,0},{-76.4,8}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(mixingBox.port_Sup, cooling_Coil.port_a_Air) annotation (Line(
      points={{-63.6,8},{-64,8},{-64,-0.8},{-20,-0.8}},
      color={0,127,255},
      smooth=Smooth.None,
      thickness=1));
  connect(mixingBox.y, Mix_Set) annotation (Line(
      points={{-57.2,43.2},{-57.2,80},{-170,80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(hP_PI.y1, cooling_Coil.yVal) annotation (Line(
      points={{-79,-40},{-40,-40},{-40,-8},{-21.9,-8}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(cooling_Coil.TAirLeaCoil, hP_PI.MeaT) annotation (Line(
      points={{19.9,-8},{42,-8},{42,-60},{-114,-60},{-114,-46},{-102,-46}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(hP_PI.SetPoi, SetPoi) annotation (Line(
      points={{-102,-40},{-140,-40},{-140,-80},{-170,-80}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(hP_PI.CoolOn, CoolOn) annotation (Line(
      points={{-102,-34},{-120,-34},{-120,-20},{-170,-20}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  connect(Supply_Fan.PFan, PFan) annotation (Line(
      points={{115.6,5},{115.6,-60},{150,-60}},
      color={0,0,127},
      smooth=Smooth.None,
      pattern=LinePattern.Dash));
  annotation (Diagram(coordinateSystem(extent={{-160,-100},{140,100}}, preserveAspectRatio=false),
        graphics),                                                                                  Icon(coordinateSystem(extent={{-160,-100},{140,100}}, preserveAspectRatio=false), graphics={Bitmap(
          extent={{102,-78},{-122,74}},
          imageSource=
              "/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAH4A9AMBEQACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAAAAQIDBAUHBgj/xABJEAABAwIDAwULCQYEBwAAAAABAAIDBBEFEiEGMUETIlFhcQcjMlJygZGhscHRFBUkMzRCYoLhFhdjg5LSQ5PC8ERTVHOio7L/xAAaAQADAQEBAQAAAAAAAAAAAAAAAQIDBAUG/8QAMhEAAgEDAQYEBgICAwEAAAAAAAECAwQRMRITFCFBURUyM1IFImFxofAjkUKBU2LhJP/aAAwDAQACEQMRAD8A9xQAIAEALegD4av2qxRsrm0kVKGAkDMCTv7V1xt4tZZxTuZJ4RhdtLjbr5+TPkuy+5VuIonfyYmbRYozUtkPUJr+1PdLsG/ZazavGAPq2HfYOI9aFbwepLuZrQ0x7Y4kLZ6KFxt49kO1h3GrufVH1+E1T63D4amRjWOkFy1puAuOSw8HdF5WTZdSUK4QAXCAC4QAXQAXCAHdACuEAF0AJ9nDKdQRYhAHmeJ0TYq6ojimnjaJHZQH6AX4L06eHFZR5VRtTeJGPkJg6zKypH8xabMOxntVPcyMkNZYhuJ1LfzlLZh2E5VPcUTHF2uAgxSbIRbnPcCPQUKlSfQHVrJ+YrBx3hi9QOyWT+5Lc0ew99X7myGs2jjaGjG35R0tLj6ypdKl2LVat7j7/ZCapnwsvral1ROHkOc4Wt2LhrRUZYR6FCTlDLO4sjYEACABAHBxvazDsFxKnoKsTGecAs5Nlxqbaq4wctCJTUSMm1lI0XbBO49At8Ve5kQ60TK/bSnaXfQKsAfeLRY+gqlbt9UQ7lLozNNt1AAWto57niRuV8K+6M+MWmGfMfKoCedK1t9efdvtXRlI53FsmySF26aM/nCNpAosnYHwXNPnRkGmKw6k8iwO1tbacdbIyPDNVL3QGYZA2iOHvkMNxnMgF9SkrB1PmUhP4kqXyuL5E/3njhhX/u/RPwx+78EeLx9jIfvPed2FsHbOT/pR4Z/2F4x/0/JH95tRww+Adsjj7k/DV7heLP2/v9EH90uttzaGk87n/BUvhse7E/isukV+Sr95eKHRtFRDtLvin4bDuyfFqntQj3R8ZO6kogewn/Un4dSWrYP4nX6RRWe6Jjtr8hRf5Tv7k/D6Pd/v+ifE7j2r9/2Vnuj41fLajBP8E/3J+H0f1h4pX+n9f+lTu6Fj53S0w/khUrCh+sjxO4/URdt7tC4aVUQ7IG/BJ2ND9Y/Ebjv+DUKqrqCZ5mxvfJznO1F1ioqPJM6d45c2v3+iQfLm+z3v+P8ARH+wz9Ccb3uv3h9xobFTnmXs/QTs3Gnn82X4p5YbP0I8q9pt8knPXdvxSyGPoybHyXsKOTdxcEnL6j2fozsYHtC7CmzQTYbVPDnBzTHYj29ixnS3jzlG9Otu1jZZ127Y05NnYdXNPkt+Kz4Z+5Gquc/4stbtbRktvTVQBNiS0c31qHRki1Wj2NH7TYba5dIBxuxTupD30ULCdqMJximdUUFQ6SJr8hJjLdbA8eohQ4tF7aPg+6pT2xmnrWyESQwtDRbrJuu6yjGUsSPP+ITlGGYnyIxrEBqagntaPgvU4el2PHV1WXUs+f60ts7knflU8LDoXxlV6jbj033oYz2XCHbLuNXcuxpZtI4c10Hoes+E+pqr7ui1u0FO7R8Dv6QVDs5dy1fR7Mk3GMOf4cGXtiBUu0mUr2n1H84YU8ZbNFxxY4KXb1V0K4mi+p8ziOMTwVcjKcM5DcwObm07SspqVNm9JU6kcmzZ98Fa2V+KPym45OxyDr3LWlOts/KjnrUrdT+Z8zrMgwRuhlJ7ZHLbauMaGLhaZ1JZcBabb+vM8+9PNyTizQs2BNOgv5nlH/0MM2f7kkKnAx/gA9rHI2Lh9R7y0XT8D+WYKN1OP8pLd1+4t7advwL5wwgbqUH+UFSo1+4OtarSP4AYphjPBo/RG1G4q9wVxQWkfwMYzQ5rij3buY1HD1O4cVSX+IPx2mH/AAhzddgnw0n1FxkPaL9oowNKW/nFkuFl7ilex7AdpTwpnf1o4R9w49diJ2mk4Uw870+D+ouPxpH8gNqagb6dn9SOCT6j8Ql2Iv2mqTugYPOSkrSC5Ng76euyVnaOrJvycXoKvhIdyOOn2RA7RV3RCNPE/VVwkERxtTshM2gxA3tIwWNtGBJWtMHe1U+WP6E/HcRItyzR2Rt+CrhqS6E8XWlyz+Cr55xB2+pdp+BvwQrel7RO5rL/ACInFa5wINQ6xGoAA9yrh6fYniq3uPRe5vs9BBs4JGzyEzzGUiw5tw0WHoC8K4+Wo0j6O2zOmpM8026mq4NqMSpDW1U0cc2VnKyl1gQDbXgLp05OKygqRjJtSWTgsrqiHRpY4cc7Gu9ZC03tT3GPD0faWjF5R4VPTO/l29hTVxUXUTtaL6Em4u2930cZ8l7grV3V7kOxossbi1KdX0jwPwy/orV7U6kP4fT6FzcRws7465h6Rkd8FXGz7Gb+HQ7s7VLgraykjq4aoNjlGZokZYjtsVor1dUZP4e+kjDW0bqSUMMkb7i92G66aVZVNDkr0HSfPmWYbR09QyY1ELJC0NsXNvbesLpc0dNk3iRnmjjhlkjiaGsDjoNwW1t6aOe7f8zItvuvZbnIW5mFgBZZw45jqs3GT6msZxivKRba1gNU1FrqTOaa0EQelaEZFxtxRyGFjfep2cgnjoFt/YnspD2voDDomJjLjltc2RsoE2GZ2TJmOTxb6ISSDaZGyYhEIGInKCTuG9JvCyxpZeEYjisfKZQ0ll9DdcXGRU8YPQVhNwy3zNrXBwBadDuXcpZWUee04vDGgRDlWMOVzrEk2AWUqkYas2jRnU8qKZGvdK8/Kmhp3AHcsJ/NLKqYR0Q2VHDp8/sDIZC5pM4dlNzYn0Jwpyb2lPOBTqxSa3eMllVMKeLlC2+oFlvVqbuG0YUKW9nsnr3cwr5KzZZkgp8rWyuY28g51gBf03Xz1w9uo5YPpreGxTUcnne3NIJ9rMYde30pov8Akaqh5URU85lbsxK5gc2aI3G43CvJLTK5NlqsC+SJw6nhAsMyy7O1TN9O8+TYoGm0ZpMHkjHfIpW9rCjCFtMxS02QE33BDSGpNs9A2fghGD05I1MY1A1TEc7H2MjLAy2t/cu6y1Z5t+lyKMPqBS0VbO5mcMDTYGyLx80KxXKRxvnIVVW7vWUPd4yVvc4xDBV1aa1MmtegeSO6AIys5SNzQ5zSdxHBTOO1HBdKexJSayZjROt9pkXPwr9zOzjY/wDGh09M+KZznPL2/dN93alTtpQqbWR1byM6eylg1LsPPDX1IAi06BCGxpiBACugYIAprC4U0mUXNllXf8bN7bG9jk4DGF0lmjcV4y5s+gk0lzPoacEQRg8Ghe1S5QR87XeajLBvWuTIzTUzaiMBxAub3trx4+dctSgquGzspXUqOUiIw6lGgY7+pHC0wd9X7l8EEcAcIhYHetadKNPOyjCrWnVeZMcsTZmFj9ydSmqkdlipVZUpbUT2HYDZ7DIdmqd/yVrnzEyPc83JJ09wXztx8tRpH1Ft81NSerPgtsy1u0+NZjb6TGb/AJQqh5UTUXzFsEoyANmjNhpY71RJeySa573cDocCmLmW/KHAc6GQfkKAG2rZ0tb2lAZOftBLE/Cqkc3MYzY6EqWNMuwQWwqntpzArJRzNor8pFcaWOtutd9n1PMv+hmpYDU4ZXxtNi4NCLtZkhWXKDZxoMP5Ga73EuY4giydC3XKeQuruTzTwbgu48wEAFkAFkACYAgAG9ICLRzQhDeo7JiBACQMLJgJzQ4FrhcHeEmsrDGpNPKM8dBCyTPzjbcDZc6top5R0yvKko4NNl0YOXIW1QAmjmjsSjoVLUYCZIIADuQI932Obk2ZoB/DXzNw/wCVn11t6UTynbmIO2jxs3t36PXo5iun5SJ+ZlFLhExgjcyshN29Y9yvJGDZHh9ezUZXjpa4JZDZZZyVXH4UUg7AUZQ9lkmzzDwr+dHIMM5uOVLxh04LGWLDfmhAzJh2Nchh7GkA5Waab1RBlqMVOJhpyZeTFl32XVnmX75xR0cDPe6kdbErvzILHyyMFX9rm8srpt/TRyXfrMrC3OYdkCGAgGIhMAsgBIAXSgYm+CELQb1HwTECAGRYAncUZHhkeKBAUACABADsgaM0sskTY3Na1zNA651CwlOUFFpcjphThU2k3zNPFbnKCAIncfWkNHvuy7cmz9CP4QXy9bnUZ9fQ9OJ5btpDyu0GNgWuZYt5/AFrT8plU8xGio6pkLG97cABud+ivKJwzXlnjFzG7zBGUGGTbVPYOcHN7UsAmT+XkjU5vMjA9o5mPzQy4ZVN5GPMYzZ2XcUsD2jHhOBxS4dCZBYuYLg8FaaMmmYcVw+Ogka2Gwa5t7L0LN6nmX0Wtls1YH9mqCPGapu/OirH05HPqz9Lm8srqt/SRxXfrSKwtjnGgQXQDE7cbGxtp2pNPoOOM8ymjkkkbIJXAuY/LccVlQlJpqXQ6LmEIuLho0X6Lc5hHW/YgCLdwQtCmNMQBAASgAugBFAAE0A0ACT0GjLUCWQQxMZzea4uvusuerGUsRS5cjqpShHak33/ACajvXQcrEgQJPQaP0DgTMmDUTf4DPYvlqnnZ9hSWKaR5ftdDym0mN2JBzRn/wAFrDymVTzDoWyfJ2X106VZBtaXtHFAw5W55zb+UgRFzI3nnRjtAsjAJnJ2gp4m4VVSNDrtjNtUijVgji/CqdxG+MKiUcXadhbNEdfBK77J6nmfEFjZI4F9ln8pqLvzoLL039zm1JvUzeWfaum39JHFdetIgFucxLggQXQMi5zmscWi7uASbaTaKjFOSTKaWOSNjy8WL3lyyoRcU2+rN7icJNKPRYL1ucwcCgEIA2CEAFMBXQMEACABADCeRBdGQA6A9il6DWohuCFoD1GmISAG0XcB1hTLRlR1P0NhYthtIN1oWf8AyF8rPzM+xh5UeY7S1dJDtdilPUytY+XkyASB9zpK3p+UwqeYvpobxtEZDgBoQbi3atEyGjRyMjRxsnyFzI2cPCbftCWAyRIb4luxIeTmY+G/M9ZYH6o7ykxpongrHHC6ext3sKmJHI2qNqiFpPArvsup5nxF+UrwFualqLeO1K686+w7H05fc5VULVMvln2rroemjgufWkQC2Ocd0AGqADVAAmAIAR49iQ0IcEIHqBVCFdAwQA0ACABAAgAdowk9CT0BajuLbwDwCMpDaA36CmLAb9yAMdbVvpXRlgbvvquO6rSppJdTvsreNVty6H6C2NrZsR2Xw2sqcgllgDnZBYeZeBPzM+jg8xR8Z3YKaDJSzcizlS1135dTq3ium0Sk2mct43GOUeSx1M1O7vMskdjpkcQk0VF8jpU21GMU9hHWvcB914ze1JIrJ0Ydu8SbYVEFLKOPNLT6ijAuR0oduqN4tU0UrHfgdcIywwivFtpcIrMLqYoJJGzPjIa17CLlPIsG7BMXoWYRBy9VC14YARm1CrJKRxsbr6eunHyaUSBosS2+9d9l1PL+IaxNWz/2aa+7OPYld+dF2Ppv7nKqvtMvln2rroemjz7n1ZFa2OcfBAAgAQAIASYAUmNai4JrQHqCBCQMEACYAkA0wEgAceY7sUy0HHUoqYJJXB0bix5POdm4dQ/3vXLWt5Tkmmd1vcwpQaayR+RSf9VN6UcK/ew42PsRfBG6JmVz3PN95C2pU3BYbyc1arvJZxgup4Y5auESRteM4HOF+KVaMXBtodvOSmkmfoPCGNZhVG1jQ0CFlgBa2gXzUtWfVw8qPg+625vJ0rCRmLCbE8Lhdth6hw/EfSPLXQxu3hexKjCWqPEjXqR0ZW+ijPSOxYuzps3jf1VqUvoDweCsZWPZm8fiPdFL6SYbmgjqWMrWouhvG+pPV4KHxSN3sKxdKa6HRGtCWjINDi7QOUqLyXtLudijiEUZ4k7169vS3cTwrqtvZ/Y72F1kVDhlRNO4hglANm3O4LkvPOjtsPTf3OI2uiqKlwjD+c4kXC3t68WlDHM5bq2lFuo9C9dZwDQIpnZO4t5B7W9NwsqsajxsPB0UZUVneLJU6KutpOy/RbesXTuPcbqpaZ8rLaZkjWXkddx3t4NV28akc7ZF3OlJrdly6TjEdyBrUANE0D1GgBIALIAEAIDXcgB6pgBIG8gdpSyh4YvDByXd5IuolUiupcac3oi+OlqZR3ummd1hnxWbuKa6mitqr6GiPCsQedKfL5bwPZdQ7uBqrGo9S35lqARy08EfnJ+Czle9kax+HvqznY/SPoqB0sFTneHWdyY8EWOt+HBc9S6nNYOqhZwhLLP0BgRLsEw8uNyaaMk/lC8qWp60fKjzbuuxum2iwaMbjC7NbfbMLrotpuLyjnuYKa2WfMyYMx7/AKNUgnxXDVehG9l1PLnYR/xZllwyri3xZh0sN10RuoPU5pWdRaGV7HMNpGlh6HCy3U4y0ZzypzjqhAcWq0QBbfeEtQyQ5Jl75RdLYj2Hty7k7aaKhZNraOWtwSqggtndKCL6bgF5l56iPWsHik/ucekoJIJs8jhcXGUD3rW2oOLU8mN5dRknTwbrLuPNJIEACAHZAhW0TGFrpAJ7S1uuiGNYyQzNAF3AdpS2l3HstvQtZDLIBycUj7+KwlS60FqzSNGpLRGiPC6550pZB5Vgs3dU0aqzqvoaYsAr5Dzmxsb1uJPqCzd5FaI1jYT6ss+YSw9/r4mdQb8Ssnet6I1Xw+PVlzcGo2jn1E0nkt/RQ7qozRWVJFowzD2b6eSXqkdp6ys3XqPqaxt6UdEXR0lPGQYcPpmjiTa49A96hyk9WaqEVoiwctrYxNHDKz9VLyVgeSXS9RIOpgARgeSPyZr9HGSQng6Rxv5lPIObNdNgtVN9Rh0p6+SsjaitWUoyeiIY3sdjlZhzmU2HtfIXAhskoaPaodSJcacj1DCIX02FUcEotJFAxjhfcQ0Armep0rQ+T272dr8VxbDa6hhbIyCN7JW5rOF7FpHTxWlKSjqZVYuWh8lWUM1M7k6undGAfBkjIC6E0zBpooDA22UuHRYkj4JkkiXbiGSDoc23r/RNchPD1M8tHRy6vpnMPSz9PgrjWnHRmUrenPVGQ4RFISKaqBd4jx/srojeSWpzTsIvyvBmkwurj/wg8fhd8VtG8g9TnlY1I6czLJG+M2ka5h/E2y3jVhLRnNKlOPmR1cHraSnp5mTVMbHZ75XG2lgvPvJfyHqWEXuzmPc173PDgQSSD0rvov8AjR5lx6shN1PN5/ki6tzitWZqnN6IvjpamQXbTSkeTb2rN16a6mitqr6F8eE1rj9UG+U4BZu7h0NVY1HryNTMAqXeHPEzsBd8Fm7zsjaPw/vItGB08Y+kYgCegAN95WbvKnQ2jYU+pa3CqBrgDHNJ53a+oLN3FR9TVWtGPQuFLRR+Dh7T2tHvKnbk+poqcFoi2Pmg8jTQR9Y1PoAHtSyx4Re2R1m55Q22+zB77qXkcWJokezWU7tQ2UED0AKeXUrmVBsMpLHOa8tte7s5Hp3Iyh4ZqpqSd4tS073f9thPsSckg2WzdDs/ikpuKJ7b8XWHvS3kV1KVOT6G2LY/EHm75YIx1uLiodePQrcSNsOxQ0M9e49UcdvWSpdd9EWqC6s3wbJYZGOeJpD1vt7FO+kXuYm6HAsLhtloYSRxc3N7VDk2XsI3RwQxC0UTGD8LQFOWPCJ2QMLIAALIAaAIyMZIwtka1zTvDhcIA5FXszhVVcupRE4/eiOX2aKlOSIcIs4dbsMSCaKtN/Fmb7x8Fqq3dGTodmfPVey2MUkj3GhdI3TnwODrjs3+paKrFmbpSRyJ2OaS2WMhw+7ILEeYquTIeUQaHNALZHtHCzvigMjfLKGAOMb28c4sfh6kxN9z4Sv0rZRzfCJ03AdCh56mkcY5H0+y7MlFz6Zkj3OzNc4jQW3LROTWpm1HOh9C2SYeCyKPsBd8EYYZQyZnamW3U1gHtuhIMiEZOjpJCPL+CYsiDGg6gfm1RyDLLI8zQeSbpxDBv9CWUgSkzVBQYhL9TRVLxuvybrelJziupSpy7G2HZvGXn7IWA8XyNHsKnfxKVCTNcOx+Jud3ySnjHTmJ9yl3CKVuzX+wzZojHU17srt4jiA9ZJ9il3D6Irh11ZZS9z3A6ctLmVEpHjSWHoACzdWTNFRijpYHsthOBGZ2HUuV0pzPL3l59e5S5tlqCR3FJQIAEACABAAgAQAIAEACABAAgAQAIARQBRU0dPVNLaiCKUHg9oKMtCaTOJWbGYTUXMTJKYn/AJTtPQbhWqkkQ6UWfP4nsPPTx56arikY3UiVpafVdaxrGUqP1PIcVge7FJ2DIDmsQN2ipsS0weg7I7O1VThsPImnZcakuNzp2Juookqk5H1VPsTOQOVrYmg7wxhPtUOuuxaofU2RbE0rfraydw6GhrfcVLryK3ETbFsnhMfhQySHpfK72DRS6s+5W6ibocFw2C3J0UA68t1O3LuWoR7GtkMcf1cbG+S2ykeCdkDCyAGgAQAIAEACABAAgAQAIAEACABAAgAQB//Z",
          fileName="modelica://Air_Side_System/Resources/Pics/AHU.jpg"),
                                 Text(
          extent={{-149,153},{151,113}},
          lineColor={0,0,255},
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={0,127,255},
          textString="%name")}));
end Air_Handling_Unit;
