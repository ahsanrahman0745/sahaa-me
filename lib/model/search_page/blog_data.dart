import 'package:flutter/material.dart';


import '../../utils/images.dart';

class CardData {
  final String? image, text;

  final String? heading, icon, subheadting, phonenumber;

  final String? socialicon, socialicon1, socialicon2, socialicon3, socialicon4;
  final String? distance, address;

  final String? status, time;

  final String? info, info1;

  final String? info2, info3;

  final String? info4, info5;

  final String? actiontext, actiontext1, actiontext2;
  final String? imagelast ;
  IconData iconloction, clock, actionicon;

  CardData(
      {this.image,
      this.text,
      this.heading,
      this.icon,
      this.subheadting,
      this.phonenumber,
      this.socialicon,
      this.socialicon1,
      this.socialicon2,
      this.socialicon3,
      this.socialicon4,
      required this.iconloction,
      this.distance,
      this.address,
      required this.clock,
      this.status,
      this.time,
      this.info,
      this.info1,
      this.info2,
      this.info3,
      this.info4,
      this.info5,
      this.actiontext,
      this.actiontext1,
      required this.actionicon,
      this.actiontext2,
      this.imagelast});
}

List<CardData> CardPosts = [
  CardData(
    ///=================first column
    image: cardFirstColumnPic,
    text: "Give us Review",

    ///========================second column
    heading: "RAY FORCE FIRE FIGHTING SAFETY EQUIPtion",
    icon: verifiedIcon,
    subheadting: "Management Consultancy",
    phonenumber: "0588230988",
    socialicon: whatsapp,
    socialicon1: phone,
    socialicon2: gmail,
    socialicon3: facebook,
    socialicon4: twitter,
    iconloction: Icons.pin_drop,
    distance: "2.1 mi",
    address: "Office# 1007, Flor 10th Floor Churchill Executive   ",
    clock: Icons.access_time,
    status: " open",
    time: " Opens at 09:00",
    info: "am not good developer but i need to struggle",
    info1: "Tayyab yha ab kar ka hee rhana hai  oooh na kar yar",
    info2: "am not good developer but i need to struggle",
    info3: "Tayyab yha ab kar ka hee rhana hai  oooh na kar yar",
    info4: "am not good developer but i need to struggle",
    info5: "Tayyab yha ab kar ka hee rhana hai  oooh na kar yar",
     actiontext: "Give us Review",
    actiontext1: "Add To Favorite",
    actionicon: Icons.heart_broken_rounded,
    actiontext2: "Report",


    ///========================third column
    imagelast: thirdColumnPic,
  ),
  CardData(
    ///=================first column
    image: cardFirstColumnPic,
    text: "Give us Review",

    ///========================second column
    heading: "ZH Shots DubaiZH ",
    icon: verifiedIcon,
    subheadting: "Management Consultancy",
    phonenumber: "0588230988",
    socialicon: whatsapp,
    socialicon1: phone,
    socialicon2: gmail,
    socialicon3: facebook,
    socialicon4: twitter,
    iconloction: Icons.pin_drop,
    distance: "2.1 mi",
    address: "Office# 1007, Flor 10th Floor Churchill Executive   ",
    clock: Icons.access_time,
    status: " open",
    time: " Opens at 09:00",
    info: "am not good developer but i need to struggle",
    info1: "Tayyab yha ab kar ka hee rhana hai  oooh na kar yar",
    info2: "am not good developer but i need to struggle",
    info3: "Tayyab yha ab kar ka hee rhana hai  oooh na kar yar",
    info4: "am not good developer but i need to struggle",
    info5: "Tayyab yha ab kar ka hee rhana hai  oooh na kar yar",
    actiontext: "Give us Review",
    actiontext1: "Add To Favorite",
    actionicon: Icons.heart_broken_rounded,
    actiontext2: "Report",


    ///========================third column
    imagelast: thirdColumnPic,
  ),
  CardData(
    ///=================first column
    image: cardFirstColumnPic,
    text: "Give us Review",

    ///========================second column
    heading: "fix IT TECHNICAL SERVICES LLC ",
    icon: verifiedIcon,
    subheadting: "Management Consultancy",
    phonenumber: "0588230988",
    socialicon: whatsapp,
    socialicon1: phone,
    socialicon2: gmail,
    socialicon3: facebook,
    socialicon4: twitter,
    iconloction: Icons.pin_drop,
    distance: "2.1 mi",
    address: "Office# 1007, Flor 10th Floor Churchill Executive   ",
    clock: Icons.access_time,
    status: " open",
    time: " Opens at 09:00",
    info: "am not good developer but i need to struggle",
    info1: "Tayyab yha ab kar ka hee rhana hai  oooh na kar yar",
    info2: "am not good developer but i need to struggle",
    info3: "Tayyab yha ab kar ka hee rhana hai  oooh na kar yar",
    info4: "am not good developer but i need to struggle",
    info5: "Tayyab yha ab kar ka hee rhana hai  oooh na kar yar",
    actiontext: "Give us Review",
    actiontext1: "Add To Favorite",
    actionicon: Icons.heart_broken_rounded,
    actiontext2: "Report",
    imagelast: thirdColumnPic,

    ///========================third column
  ),

];
