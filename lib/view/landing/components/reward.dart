import 'package:flutter/widgets.dart';
import 'package:sahaame/model/landing/reward_item.dart';

import '../../../utils/constants.dart';
import '../../../utils/data.dart';
import '../../widgets/heading.dart';

class Reward extends StatelessWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: rewardColor,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          heading(title: 'Hire & Earn Rewards !'),
          SizedBox(
            height: 30,
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}

