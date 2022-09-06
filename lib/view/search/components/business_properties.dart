import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/view/widgets/header_small_text.dart';

Widget businessPropertise({required List properties, context}) {
  return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: properties.length,
      itemBuilder: (c, i) {
        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: headerSmallText(text: properties[i]));
      });
}
