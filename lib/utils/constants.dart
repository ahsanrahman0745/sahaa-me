import 'package:flutter/material.dart';

const darkColor = Colors.black;
const secondaryColors = Color(0xFFE86E24);
const exploreSvgSize = 100.0;
const lightColor = Colors.white;
const rewardColor = Color(0xFFEDEDED);
const lightGreyColor = Color(0xFFd3d3d3);
const lightBlueColor = Color(0xFF57AFDE);

//DEFAULTS

//STRINGS

const String siteMap = 'Sahaa';
const String siteUrl = 'Sahaa.me';
const String promotion = 'Sahaa Promotion';
const String freeListing = 'Get a free Listing';
const String advertise = 'Advertise';
const String advertiseMail = 'advertise@sahaa.me';
const String searchHintText = "Business Name, Product Name or Service";
const String searchLocationHintText = "Search City, Area";
const String disclaimer =
    "Disclaimer: The opinions expressed within Reviews are those of the author and not the views or opinions of Sahaa Limited. Registered Office: Business Center 1, M Floor, The Meydan Hotel, Nad Al Sheba, Dubai, U.A.E. Registered in Dubai. © Sahaa Marketing LLC FZ 2022. All rights reserved. Sahaa & Sahaa Pages and other ™ are trademarks of Sahaa Marketing LLC FZ.";

const String copyRight = '© sahaa Limited 2022';

//ASSETS
const String logo = 'assets/image/logo.png';

//TEXT STYLE
const exploreStyle =
    TextStyle(color: darkColor, fontSize: 20, fontWeight: FontWeight.bold);
const headingStyle = TextStyle(
    color: darkColor, fontSize: 30, fontWeight: FontWeight.bold, height: 2);
const headingNormalStyle = TextStyle(
    color: darkColor, fontSize: 30, fontWeight: FontWeight.w300, height: 2);

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
const h10 = SizedBox(
  height: 10,
);
const h50 = SizedBox(
  height: 50,
);
const h100 = SizedBox(
  height: 100,
);

const w20 = SizedBox(
  width: 20,
);

const w3 = SizedBox(
  width: 2,
);
const w5 = SizedBox(
  width: 5,
);
const w10 = SizedBox(
  width: 10,
);
const w30 = SizedBox(
  width: 30,
);
const w15 = SizedBox(
  width: 15,
);
