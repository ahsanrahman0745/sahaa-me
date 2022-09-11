import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

Widget filledBtn(
    {required String title,
    MainAxisAlignment align = MainAxisAlignment.center}) {
  return Row(mainAxisAlignment: align, children: [
    Container(
      padding: const EdgeInsets.fromLTRB(30, 13, 30, 13),
      decoration: BoxDecoration(
          color: sahaaColor,
          border: Border.all(width: 1, color: sahaaColor),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Text(
        title,
        style: const TextStyle(
            color: lightColor, fontWeight: FontWeight.w400, fontSize: 15),
      ),
    )
  ]);
}
