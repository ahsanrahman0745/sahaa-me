import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahaame/utils/constants.dart';

Widget trustItem(
    {required String description,
    required String title,
    required String image}) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                      color: darkColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100))),
                ),
                Positioned(
                  top: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: lightColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: SvgPicture.asset(
                        'assets/svg/$image',
                        height: 100,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                h15,
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      height: 1.4,
                      color: darkColor.withOpacity(0.7)),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
