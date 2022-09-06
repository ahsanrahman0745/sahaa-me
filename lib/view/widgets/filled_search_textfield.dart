import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

Widget filledSearchTextField({hint, filled = false, color = lightColor}) {
  return SizedBox(
      height: 40,
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
