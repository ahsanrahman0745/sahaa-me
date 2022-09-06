import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

Widget searchTextField({hint, filled = false, color = lightColor}) {
  return Container(
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: darkColor.withOpacity(0.1))),
      child: TextField(
        decoration: InputDecoration(
          filled: filled,
          fillColor: color,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: hint,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          hintStyle: const TextStyle(fontSize: 15),
        ),
        style: const TextStyle(fontSize: 15),
      ));
}
