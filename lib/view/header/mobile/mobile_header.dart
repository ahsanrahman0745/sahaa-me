import 'package:flutter/material.dart';
import 'package:sahaame/view/widgets/site_logo.dart';
import 'package:sahaame/view/widgets/small_icon.dart';

import '../../../utils/constants.dart';

Widget mobileHeader() {
  return Container(
      color: lightColor,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          siteLogo(size: 30),
          smallIcon(icon: Icons.menu, color: lightBlueColor, size: 30)
        ],
      ));
}
