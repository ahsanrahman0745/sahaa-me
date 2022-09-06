import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/view/widgets/header_small_text.dart';
import 'package:sahaame/view/widgets/horizontal_secondary_separator.dart';
import 'package:sahaame/view/widgets/smallText.dart';
import 'package:sahaame/view/widgets/small_icon.dart';

import '../../widgets/header_medium_text.dart';
import '../../widgets/small_asset_image.dart';
import '../../widgets/vertical_separator.dart';
import 'business_properties.dart';

Widget businessList(context) {
  return Column(
    children: [
      ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (c, i) {
            return Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Image.asset(
                                      'assets/image/businessimage.png',
                                    ),
                                    Container(
                                      width: 70,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 3, horizontal: 8),
                                      decoration: const BoxDecoration(
                                          color: lightColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Row(
                                        children: [
                                          smallAssetImage(
                                              image: 'assets/image/star.png',
                                              size: 15),
                                          w3,
                                          smallAssetImage(
                                              image: 'assets/image/star.png',
                                              size: 18),
                                          w3,
                                          smallAssetImage(
                                              image: 'assets/image/star.png',
                                              size: 15),
                                        ],
                                      ),
                                    ),
                                  ]),
                              h30,
                              headerSmallText(
                                  text: 'Give us Review',
                                  color: secondaryColors,
                                  size: 17)
                            ],
                          )),
                      w20,
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: headerMediumText(
                                        text:
                                            'Wallstreet investment Commercial Brokers',
                                        size: 18,
                                        color: darkColor),
                                  ),
                                  Image.asset(
                                    'assets/image/verified.png',
                                    height: 25,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  smallText(
                                      text: 'Management Consultancy',
                                      color: darkColor,
                                      size: 12),
                                  w15,
                                  Container(
                                    height: 10,
                                    width: 1,
                                    color: darkColor,
                                  ),
                                  w15,
                                  smallText(
                                      text: '0588230988',
                                      color: lightBlueColor,
                                      size: 12),
                                ],
                              ),
                              h15,
                              Row(
                                children: [
                                  smallAssetImage(
                                      image: 'assets/image/messenger.png'),
                                  w10,
                                  smallAssetImage(
                                      image: 'assets/image/phone.png'),
                                  w10,
                                  smallAssetImage(
                                      image: 'assets/image/whatsapp.png'),
                                  w10,
                                  smallAssetImage(
                                      image: 'assets/image/gmail.png')
                                ],
                              ),
                              h10,
                              Row(
                                children: [
                                  smallIcon(
                                      icon: Icons.place_outlined,
                                      color: darkColor),
                                  w15,
                                  headerSmallText(
                                      text: '2.3 mi',
                                      bold: FontWeight.bold,
                                      color: lightBlueColor),
                                  w5,
                                  verticalSeparator(),
                                  w5,
                                  Expanded(
                                      child: headerSmallText(
                                          text:
                                              'Office# 1007, Flor 10th Floor Churchill Executive',
                                          color: lightBlueColor))
                                ],
                              ),
                              h10,
                              Row(
                                children: [
                                  smallIcon(
                                      icon: Icons.schedule_outlined,
                                      color: darkColor),
                                  w15,
                                  headerSmallText(
                                      text: 'Closed',
                                      bold: FontWeight.bold,
                                      color: secondaryColors),
                                  w5,
                                  Expanded(
                                      child: headerSmallText(
                                          text: 'Opens at 09:00',
                                          color: lightBlueColor))
                                ],
                              ),
                              h15,
                              businessPropertise(properties: [
                                'Real Estate Brokerage',
                                'Real Estate Brokerage',
                                'Off plan properties'
                              ], context: context),
                              h15,
                              horizontalSecondarySeparator(size: 2),
                              Container(
                                color: secondaryColors.withOpacity(0.1),
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    headerSmallText(text: 'Give us Review'),
                                    Row(
                                      children: [
                                        headerSmallText(
                                            text: 'Add To Favorite '),
                                        smallIcon(icon: Icons.favorite)
                                      ],
                                    ),
                                    headerSmallText(text: 'Report')
                                  ],
                                ),
                              )
                            ],
                          )),
                      w20,
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: smallAssetImage(
                                image: 'assets/image/bannerbusiness.png',
                                size: null),
                          ))
                    ],
                  )
                ],
              ),
            );
          })
    ],
  );
}
