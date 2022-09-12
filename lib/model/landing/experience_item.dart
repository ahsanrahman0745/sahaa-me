import 'package:flutter/material.dart';
import 'package:sahaame/view/widgets/smallText.dart';

import '../../utils/constants.dart';

Widget experienceItem(
    {required String title,
    required String description,
    required String count}) {
  return Container(
    margin: const EdgeInsets.only(left: 10, right: 10),
    child: Stack(
      children: [
        Text(
          count,
          style: TextStyle(
            color: sahaaColor.withOpacity(0.2),
            fontWeight: FontWeight.bold,
            fontSize: 80,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: darkColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    height: 2),
              ),
              SizedBox(height: 15,),
              smallText(text: description)
            ],
          ),
        ),
      ],
    ),
  );
}
