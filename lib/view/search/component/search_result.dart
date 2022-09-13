
import 'package:flutter/material.dart';

import 'dropdown_filter.dart';

Widget SearchResult(){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    ///======================= main content
    ///first line
    Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: const Text(
        "Home > Business > Seach > ",
        style: TextStyle(color: Colors.orange),
      ),
    ),



    ///==========second line
    Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: Row(
        children: const [
          Text("Did you mean a company call " "?"),
          Spacer(),
          DropdownFilter(),
        ],
      ),
    ),
  ],);
}