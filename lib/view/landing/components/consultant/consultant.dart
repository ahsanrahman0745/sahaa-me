import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/utils/responsiveness.dart';
import 'package:sahaame/view/widgets/heading.dart';

import '../../../widgets/border_btn.dart';
import '../../../widgets/filled_btn.dart';
import '../../../widgets/smallText.dart';

Widget consultant(context) {
  return isMobile(context)
      ? Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heading(title: 'Hire A Consultant'),
                      smallText(
                          text:
                              'Hire a Sahaa consultant to enjoy multiple services without any hassle. Our consultant will guide you about the best packages and services that match your requirements.'),
                      h30,
                      Row(
                        children: [
                          filledBtn(title: 'Call Now'),
                          w20,
                          borderBtn(title: 'Email Us'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            h30,
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/image/slider_3.jpg',
                              height: 360,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: lightColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child: const Icon(
                                Icons.play_arrow,
                                color: secondaryColors,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      : Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heading(title: 'Hire A Consultant'),
                  smallText(
                      text:
                          'Hire a Sahaa consultant to enjoy multiple services without any hassle. Our consultant will guide you about the best packages and services that match your requirements.'),
                  h30,
                  Row(
                    children: [
                      filledBtn(title: 'Call Now'),
                      w20,
                      borderBtn(title: 'Email Us'),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Container(
                    width: 380,
                    height: 430,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: secondaryColors),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                  ),
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/image/slider_3.jpg',
                            height: 360,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                color: lightColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: const Icon(
                              Icons.play_arrow,
                              color: secondaryColors,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ))
          ],
        );
}
