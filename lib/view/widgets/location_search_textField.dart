import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

Widget locationSearchTextField(
    {hint, filled = false, color = lightColor, preIcon}) {
  return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          filled: filled,
          fillColor: color,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: hint,
          prefixIcon: Icon(preIcon),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          hintStyle: const TextStyle(fontSize: 15),
        ),
        style: const TextStyle(fontSize: 15),
      ));
}
