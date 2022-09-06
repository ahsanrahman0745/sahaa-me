import 'package:flutter/material.dart';

Widget filledSmallBtn(
    {required String title,
    MainAxisAlignment align = MainAxisAlignment.center,
    required Color titleColor,
    required Color backgroundColor}) {
  return Row(mainAxisAlignment: align, children: [
    Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Text(
        title,
        style: TextStyle(
            color: titleColor, fontWeight: FontWeight.w400, fontSize: 10),
      ),
    )
  ]);
}
