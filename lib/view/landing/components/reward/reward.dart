import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/responsiveness.dart';
import 'package:sahaame/view/landing/components/reward/reward_item.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/data.dart';
import '../../../../utils/responsive_screens.dart';
import '../../../widgets/heading.dart';

Widget reward(context) {
  return Container(
    color: rewardColor,
    width: double.infinity,
    padding: EdgeInsets.only(top: p40, bottom: p40),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        heading(title: 'Hire & Earn Rewards !'),
        h30,
        isMobile(context)
            ? Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: RewardItem(
                        start: rewards[0]['start'],
                        middle: rewards[0]['middle'],
                        end: rewards[0]['end'],
                        image: rewards[0]['image'],
                      )),
                    ],
                  ),
                  h20,
                  Row(
                    children: [
                      Expanded(
                          child: RewardItem(
                        start: rewards[1]['start'],
                        middle: rewards[1]['middle'],
                        end: rewards[1]['end'],
                        image: rewards[1]['image'],
                      )),
                    ],
                  ),
                  h20,
                  Row(
                    children: [
                      Expanded(
                          child: RewardItem(
                        start: rewards[2]['start'],
                        middle: rewards[2]['middle'],
                        end: rewards[2]['end'],
                        image: rewards[2]['image'],
                      )),
                    ],
                  ),
                ],
              )
            : WidgetWrapper(
                child: Row(
                  children: [
                    Expanded(
                        child: RewardItem(
                      start: rewards[0]['start'],
                      middle: rewards[0]['middle'],
                      end: rewards[0]['end'],
                      image: rewards[0]['image'],
                    )),
                    w30,
                    Expanded(
                        child: RewardItem(
                      start: rewards[1]['start'],
                      middle: rewards[1]['middle'],
                      end: rewards[1]['end'],
                      image: rewards[1]['image'],
                    )),
                    w30,
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
      ],
    ),
  );
}
