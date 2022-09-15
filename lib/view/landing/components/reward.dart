import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/model/landing/reward_item.dart';

import '../../../responsive.dart';
import '../../../utils/data.dart';

class Reward extends StatelessWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
     width: Responsive.isMobile(context)? size.width/1.04: size.width/1.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Text('Hire & Earn Rewards !', style: TextStyle(fontSize: 36, color: Colors.black, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 30,
          ),
         Responsive.isDesktop(context)?
         IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start  ,
              children: [
                Expanded(
                    child: RewardItem(
                      start: rewards[0]['start'],
                      middle: rewards[0]['middle'],
                      end: rewards[0]['end'],
                      image: rewards[0]['image'],
                    )),
                SizedBox(width: 30,),
                Expanded(
                    child: RewardItem(
                      start: rewards[1]['start'],
                      middle: rewards[1]['middle'],
                      end: rewards[1]['end'],
                      image: rewards[1]['image'],
                    )),
                SizedBox(width: 30,),
                Expanded(
                    child: RewardItem(
                      start: rewards[2]['start'],
                      middle: rewards[2]['middle'],
                      end: rewards[2]['end'],
                      image: rewards[2]['image'],
                    )),
              ],
            ),
          )
          :
         Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             RewardItem(
               start: rewards[0]['start'],
               middle: rewards[0]['middle'],
               end: rewards[0]['end'],
               image: rewards[0]['image'],
             ),
             SizedBox(height: 30,),
             RewardItem(
               start: rewards[1]['start'],
               middle: rewards[1]['middle'],
               end: rewards[1]['end'],
               image: rewards[1]['image'],
             ),
             SizedBox(height: 30,),
             RewardItem(
               start: rewards[2]['start'],
               middle: rewards[2]['middle'],
               end: rewards[2]['end'],
               image: rewards[2]['image'],
             ),
           ],
         ),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}

