// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahaame/utils/constants.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
          color: sahaaColor),
      elevation: 0,
      backgroundColor: Colors.white,
      title: InkWell(
        onTap: (){

        },
        child: SvgPicture.asset(
          'assets/svg/sahaa-logo.svg',
          width:100 ,
        ),
      ),
    );
  }
}
