import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/responsive_screens.dart';
import '../../widgets/header_small_text.dart';
import '../../widgets/small_icon.dart';

Widget headerTop() {
  return Container(
    color: darkColor,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      children: [
        WidgetWrapper(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  w30,
                  headerSmallText(text: siteUrl, color: lightColor),
                  w30,
                  headerSmallText(text: promotion, color: lightColor)
                ],
              ),
              Row(
                children: [
                  headerSmallText(text: freeListing, color: lightColor),
                  w30,
                  headerSmallText(text: advertise, color: lightColor),
                  w15,
                  smallIcon(color: lightColor, icon: Icons.mail),
                  w5,
                  headerSmallText(text: advertiseMail, color: lightColor),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
