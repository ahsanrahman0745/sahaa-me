import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../widgets/filled_small_btn.dart';

Widget previousNextBtns() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      filledSmallBtn(
          title: 'Previous',
          backgroundColor: lightGreyColor,
          titleColor: darkColor),
      filledSmallBtn(
          title: 'Next',
          backgroundColor: secondaryColors,
          titleColor: lightColor)
    ],
  );
}
