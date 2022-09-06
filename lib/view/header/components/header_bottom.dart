import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahaame/view/header/components/search_textfield.dart';
import '../../../utils/constants.dart';
import '../../../utils/responsive_screens.dart';
import '../../widgets/header_medium_text.dart';
import '../../widgets/site_logo.dart';
import '../../widgets/small_icon.dart';

Widget headerBottom({isSearch = true}) {
  return Container(
    color: lightColor,
    width: double.infinity,
    child: Column(
      children: [
        WidgetWrapper(
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      siteLogo(),
                    ],
                  )),
              !isSearch
                  ? Container()
                  : Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                              child: searchTextField(hint: searchHintText)),
                          Expanded(
                              child: searchTextField(
                                  hint: searchLocationHintText)),
                          Container(
                            height: 35,
                            color: darkColor,
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 20),
                            child: const Center(
                              child: Text(
                                'Search',
                                style: TextStyle(color: lightColor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/login.svg',
                      height: 30,
                      color: secondaryColors,
                    ),
                    w15,
                    headerMediumText(text: 'Login', color: darkColor),
                    w15,
                    smallIcon(
                        icon: Icons.arrow_forward_ios_rounded,
                        color: darkColor,
                        size: 17)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
