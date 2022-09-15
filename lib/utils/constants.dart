// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor myColors = MaterialColor(
    0xffE86E24,
    <int, Color>{
      50: Color(0xffFBE7DA), //10%
      100: Color(0xffF7CFB6), //20%
      200: Color(0xffF3B691), //30%
      300: Color(0xffEF9E6B), //40%
      400: Color(0xffEC8646), //50%
      500: Color(0xffE86E24), //60%
      600: Color(0xffDE6317), //70%
      700: Color(0xffCB5B15), //80%
      800: Color(0xffA64A11), //90%
      900: Color(0xff944210), //100%
    },
  );
}

const darkColor = Colors.black;
const sahaaColor = Color(0xFFE86E24);
const sahaaLightColor = Color(0xFFffeede);

class MyTextStyles {
  
///white colors ******************************

  static TextStyle sectionTitleLargeWhite = TextStyle(
    color: Colors.white,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
  static TextStyle sectionTitleSmallWhite = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingLargeWhite = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingSmallWhite = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ); 
  
  static TextStyle headingxSmallBoldWhite = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  
  static TextStyle headingxSmallWhite = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  
  static TextStyle subHeadingWhite =
  TextStyle(color: Colors.white, fontSize: 14,);

  static TextStyle subHeadingBoldWhite = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle regularWhite = TextStyle(
    color: Colors.white,
    fontSize: 12,
  );

  static TextStyle xSmallWhite = TextStyle(
    color: Colors.white,
    fontSize: 10,
  );

  ///sahaa Colors********************************
  static TextStyle sectionTitleLargeSahaa = TextStyle(
    color: sahaaColor,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
  static TextStyle sectionTitleSmallSahaa = TextStyle(
    color: sahaaColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingLargeSahaa = TextStyle(
    fontSize: 20,
    color: sahaaColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingSmallSahaa = TextStyle(
    fontSize: 18,
    color: sahaaColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingxSmallBoldSahaa = TextStyle(
    fontSize: 16,
    color: sahaaColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingxSmallSahaa = TextStyle(
    fontSize: 16,
    color: sahaaColor,
  );

  static TextStyle subHeadingBoldSahaa = TextStyle(
    color: sahaaColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subHeadingSahaa = TextStyle(
    color: sahaaColor,
    fontSize: 14,
  );

  static TextStyle regularSahaa = TextStyle(
    fontSize: 12,
    color: sahaaColor,
  );

  static TextStyle xSmallSahaa = TextStyle(
    fontSize: 10,
    color: sahaaColor,
  );

// black ***********************

  static TextStyle SectionTitleLargeBlack = TextStyle(
    color: Colors.black,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
  static TextStyle SectionTitleSmallBlack = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingLargeBlack = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingSmallBlack = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingxSmallBoldBlack = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingxSmallBlack = TextStyle(
    color: Colors.black,
    fontSize: 16,
  );

  static TextStyle subHeadingBoldBlack = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subHeadingBlack = TextStyle(
    color: Colors.black,
    fontSize: 14,
  );

  static TextStyle regularBlack = TextStyle(
    color: Colors.black,
    fontSize: 12,
  );

  static TextStyle xSmallBlack = TextStyle(
    color: Colors.black,
    fontSize: 10,
  );
//grey*************************************


  static TextStyle headingxSmallBoldGrey = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingxSmallGrey = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 16,
  );

  static TextStyle subHeadingBoldGrey = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subHeadingGrey = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 14,
  );

  static TextStyle regularGrey = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 12,
  );

  static TextStyle xSmallGrey = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 10,
  );

}
