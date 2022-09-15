import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/model/landing/reward_item.dart';

import '../../../responsive.dart';
import '../../../utils/constants.dart';
import '../../../utils/data.dart';

class Reward extends StatelessWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.grey.shade200,
      child: Padding(
       padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context)? 10 : size.width/11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
          Text('Hire & Earn! Get paid. Repeat!', style: Responsive.isMobile(context)? MyTextStyles.SectionTitleSmallBlack: MyTextStyles.SectionTitleLargeBlack),
            SizedBox(
              height: 30,
            ),
           Responsive.isDesktop(context) || Responsive.isTablet(context)?
           IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start  ,
                children: [
                  Expanded(
                      child:Image.asset('assets/image/Banner 1.png'),),
                  SizedBox(width: 30,),
                  Expanded(
                    child:Image.asset('assets/image/Banner 2.png'),),
                  SizedBox(width: 30,),
                  Expanded(
                    child:Image.asset('assets/image/Banner 3.png'),),
                ],
              ),
            )
            :
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Image.asset('assets/image/Banner 1.png', width: size.width/1.04, fit: BoxFit.cover,),
               SizedBox(height: 20,),
               Image.asset('assets/image/Banner 1.png', width: size.width/1.04,fit: BoxFit.cover,),
               SizedBox(height: 20,),
               Image.asset('assets/image/Banner 1.png', width: size.width/1.04,fit: BoxFit.cover,),
             ],
           ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}

