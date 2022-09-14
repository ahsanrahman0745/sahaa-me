import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

Widget filterDropdown({
  required List dropdownValues,
}) {
  return Container(
    padding: EdgeInsets.only(left: p20, right: p20),
    decoration: ShapeDecoration(
      color: lightGreyColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
            width: 1.0,
            style: BorderStyle.solid,
            color: darkColor.withOpacity(0.4)),
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton(
        items: dropdownValues
            .map((value) => DropdownMenuItem(
                  value: value,
                  child: Text(value),
                ))
            .toList(),
        onChanged: (value) {},
        isExpanded: false,
        value: dropdownValues.first,
      ),
    ),
  );
}
