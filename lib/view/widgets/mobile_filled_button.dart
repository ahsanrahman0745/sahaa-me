import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

Widget mobileFilledBtn(
    {required String title,
    MainAxisAlignment align = MainAxisAlignment.center}) {
  return Row(mainAxisAlignment: align, children: [
    Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          color: secondaryColors,
          border: Border.all(width: 1, color: secondaryColors),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Text(
        title,
        style: const TextStyle(
            color: lightColor, fontWeight: FontWeight.w400, fontSize: 13),
      ),
    )
  ]);
}
