import 'package:flutter/widgets.dart';
import 'package:sahaame/view/landing/components/reward/reward_item.dart';
import 'package:sahaame/utils/data.dart';

Widget rewardsList() {
  return ListView.separated(
      itemCount: rewards.length,
      shrinkWrap: true,
      itemBuilder: (c, i) {
        return RewardItem(
            start: rewards[i]['start'],
            middle: rewards[i]['middle'],
            end: rewards[i]['end'],
            image: rewards[i]['image']);
      },
      separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ));
}
