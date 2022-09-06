import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/constants.dart';

Widget sliderBtn(
    {iconColor = lightColor,
    backgroundColor = secondaryColors,
    borderColor = lightColor,
    size = 50,
    icon}) {
  return Center(
    child: Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(width: 2, color: borderColor),
          borderRadius: const BorderRadius.all(Radius.circular(100))),
      child: Icon(
        icon,
        color: iconColor,
      ),
    ),
  );
}
