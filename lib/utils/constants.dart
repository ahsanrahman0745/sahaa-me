import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const darkColor = Colors.black;
const secondaryColors = Color(0xFFE86E24);
const exploreSvgSize = 100.0;
const lightColor = Colors.white;
const rewardColor = Color(0xFFEDEDED);
const lightGreyColor = Color(0xFFd3d3d3);

//TEXT STYLE
const exploreStyle =
    TextStyle(color: darkColor, fontSize: 20, fontWeight: FontWeight.bold);
const headingStyle = TextStyle(
    color: darkColor, fontSize: 30, fontWeight: FontWeight.bold, height: 2);

const subheadingStyle = TextStyle(color: darkColor, fontSize: 15, height: 2);

//BUTTON STYLE

ButtonStyle btn1 = ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(color: Colors.red))));

//PADING
double p50 = 50.0;
double p40 = 40.0;
double p20 = 40.0;

const h20 = SizedBox(
  height: 20,
);

const h30 = SizedBox(
  height: 30,
);
const h15 = SizedBox(
  height: 15,
);

const w20 = SizedBox(
  width: 20,
);

const w5 = SizedBox(
  width: 5,
);
const w30 = SizedBox(
  width: 30,
);
const w15 = SizedBox(
  width: 15,
);
