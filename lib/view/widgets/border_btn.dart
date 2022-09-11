  import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

Widget borderBtn({required String title}) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Container(
      padding: const EdgeInsets.fromLTRB(30, 13, 30, 13),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: sahaaColor),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Text(
        title,
        style: const TextStyle(
            color: sahaaColor, fontWeight: FontWeight.w400, fontSize: 15),
      ),
    )
  ]);
}
