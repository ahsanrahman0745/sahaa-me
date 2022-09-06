import 'package:flutter/material.dart';
import 'package:sahaame/utils/responsiveness.dart';

import '../../../../utils/constants.dart';
import '../../../widgets/filled_btn.dart';
import '../../../widgets/filled_search_textfield.dart';
import '../../../widgets/location_search_textField.dart';
import '../../../widgets/mobile_filled_button.dart';
import '../../../widgets/search_btn.dart';
import '../../../widgets/small_icon.dart';

Widget sliderText(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      isMobile(context)
          ? Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: filledSearchTextField(
                            hint: searchHintText,
                            filled: true,
                            color: lightColor)),
                  ],
                ),
                h10,
                Row(
                  children: [
                    Expanded(
                        child: locationSearchTextField(
                            hint: searchLocationHintText,
                            preIcon: Icons.gps_fixed_outlined,
                            filled: true,
                            color: lightColor)),
                  ],
                ),
                h10,
                Container(
                  color: lightColor,
                  child: Row(
                    children: [
                      Expanded(
                        child: searchBtn(
                            color: secondaryColors,
                            title: 'Search',
                            titleColor: lightColor,
                            size: 40),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Container(
              color: lightColor,
              child: Row(
                children: [
                  Expanded(
                      child: filledSearchTextField(
                          hint: searchHintText,
                          filled: true,
                          color: lightColor)),
                  smallIcon(icon: Icons.gps_fixed_outlined, color: darkColor),
                  Expanded(
                      child: filledSearchTextField(
                          hint: searchLocationHintText,
                          filled: true,
                          color: lightColor)),
                  searchBtn(
                      color: secondaryColors,
                      title: 'Search',
                      titleColor: lightColor,
                      size: 40),
                ],
              ),
            ),
      h30,
      Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontSize: isMobile(context) ? 18 : 45,
                          fontWeight: FontWeight.bold,
                          color: lightColor),
                      children: const [
                    TextSpan(text: 'Sahaa Connecting\n'),
                    TextSpan(
                        text: 'Customers',
                        style: TextStyle(color: secondaryColors)),
                    TextSpan(text: ' With Right\n'),
                    TextSpan(
                        text: 'Business',
                        style: TextStyle(color: secondaryColors)),
                  ])),
              h30,
              isMobile(context)
                  ? mobileFilledBtn(
                      title: 'List Your Business',
                      align: MainAxisAlignment.start)
                  : filledBtn(
                      title: 'List Your Business',
                      align: MainAxisAlignment.start)
            ],
          )),
          Expanded(child: Column())
        ],
      )
    ],
  );
}
