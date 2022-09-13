// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../../utils/constants.dart';
import '../../../widgets/onhover.dart';

class MiniCard extends StatelessWidget {
  const MiniCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // height: 400,
      width: size.width,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? size.width / 11 : 10),

      /// main card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// company info
          Responsive.isDesktop(context)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///company logo
                    Image.asset(
                      'assets/icons/minicard/wallstreet-card.png',
                      width: size.width / 6,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: [
                        Container(
                          width: Responsive.isDesktop(context)
                              ? size.width / 2.5
                              : null,
                          // color: Colors.grey,
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'Wallstreet investment commercial brokers',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Image.asset(
                                'assets/icons/minicard/verified.png',
                                width: 100,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Management Consultancy',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      color: Colors.black,
                                      width: 2,
                                      height: 17,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text('0 Reviews'),
                                  SizedBox(
                                    height: 20,
                                    child: ListView.builder(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        // physics: NeverScrollableScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: 5,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Icon(
                                            Icons.star,
                                            size: 14,
                                            color: sahaaColor,
                                          );
                                        }),
                                  ),
                                  Text(
                                    '4.9 ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),

                                  /// favourities button
                                  TextButton(
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                    ),
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                  ),
                                  Container(
                                    color: Colors.black,
                                    width: 2,
                                    height: 17,
                                  ),

                                  ///share button
                                  OnHover(builder: (isHovered) {
                                    final hoverColor =
                                        isHovered ? sahaaColor : Colors.black;
                                    return InkWell(
                                      onTap: () {},
                                      hoverColor: Colors.transparent,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '  Share  ',
                                            style: TextStyle(
                                              fontSize:
                                                  Responsive.isMobile(context)
                                                      ? 12
                                                      : 15,
                                              color: hoverColor,
                                            ),
                                          ),
                                          Icon(
                                            Icons.share_outlined,
                                            size: 15,
                                            color: hoverColor,
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Office# 1007, Flor 10th Floor Churchill Executive',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 14),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  print("SHah ooo");
                                },
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide.none,
                                    foregroundColor: Colors.white,
                                    backgroundColor: sahaaColor // foreground
                                    ),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    "Write a Review",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    ///ad image
                    Responsive.isDesktop(context)
                        ? Image.asset(
                            'assets/icons/minicard/ad.png',
                            width: size.width / 5.5,
                            fit: BoxFit.cover,
                          )
                        : SizedBox(),
                  ],
                )
              : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/icons/minicard/wallstreet-card.png',
                        width: Responsive.isDesktop(context)
                            ? size.width / 6
                            : size.width / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Responsive.isDesktop(context)
                          ? size.width / 2.5
                          : size.width - 20,
                      // color: Colors.grey,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Wallstreet investment commercial brokers',
                                  style: TextStyle(
                                      fontSize: Responsive.isMobile(context)? 16: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Image.asset(
                                'assets/icons/minicard/verified.png',
                                width: Responsive.isMobile(context) ? 50 : 100,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Management Consultancy',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  color: Colors.black,
                                  width: 2,
                                  height: 17,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            children: [
                              Text('0 Reviews'),
                              SizedBox(
                                height: 20,
                                child: ListView.builder(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    // physics: NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Icon(
                                        Icons.star,
                                        size: 14,
                                        color: sahaaColor,
                                      );
                                    }),
                              ),
                              Text(
                                '4.9 ',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),

                              /// favourities button
                              TextButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                ),
                                onPressed: () {},
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.black,
                                  size: 15,
                                ),
                              ),
                              Container(
                                color: Colors.black,
                                width: 2,
                                height: 17,
                              ),

                              ///share button
                              OnHover(builder: (isHovered) {
                                final hoverColor =
                                    isHovered ? sahaaColor : Colors.black;
                                return InkWell(
                                  onTap: () {},
                                  hoverColor: Colors.transparent,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '  Share  ',
                                        style: TextStyle(
                                          fontSize: Responsive.isMobile(context)
                                              ? 12
                                              : 15,
                                          color: hoverColor,
                                        ),
                                      ),
                                      Icon(
                                        Icons.share_outlined,
                                        size: 15,
                                        color: hoverColor,
                                      )
                                    ],
                                  ),
                                );
                              }),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.blue,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text(
                                  'Office# 1007, Flor 10th Floor Churchill Executive',
                                  style:
                                      TextStyle(color: Colors.blue, fontSize: 12),
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              print("SHah ooo");
                            },
                            style: ElevatedButton.styleFrom(
                                side: BorderSide.none,
                                foregroundColor: Colors.white,
                                backgroundColor: sahaaColor // foreground
                                ),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Write a Review",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

          SizedBox(
            height: Responsive.isDesktop(context) ? 5 : 40,
          ),

          ///contact us
          Container(
            width: Responsive.isDesktop(context)
                ? size.width / 1.2
                : size.width - 20,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Color(0xFFffeede),
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 5,
              runSpacing: 10,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Responsive.isMobile(context)
                    ? SizedBox()
                    : Text(
                        'How to contact us?',
                        style: TextStyle(
                            fontSize: Responsive.isMobile(context) ? 13 : 16,
                            color: Colors.black),
                      ),
                // SizedBox(width: 10,),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/minicard/whatsapp.png',
                        width: 25,
                      ),
                      Responsive.isMobile(context)
                          ? SizedBox()
                          : FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                ' Whatsapp Us ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/minicard/phone.png',
                        width: 25,
                      ),
                      Responsive.isMobile(context)
                          ? SizedBox()
                          : FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                ' Call Us ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/minicard/gmail.png',
                        width: 25,
                      ),
                      Responsive.isMobile(context)
                          ? SizedBox()
                          : FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                ' Email Us ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/minicard/messenger.png',
                        width: 25,
                      ),
                      Responsive.isMobile(context)
                          ? SizedBox()
                          : FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                ' Message Us ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.sports_basketball,
                        size: 18,
                        color: Colors.blue,
                      ),
                      Responsive.isMobile(context)
                          ? SizedBox()
                          : FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                ' Website ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
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
}