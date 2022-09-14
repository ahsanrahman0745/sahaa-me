import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

import '../../../utils/data.dart';
import 'categories.dart';
import 'ranking.dart';
import 'rewards.dart';

Widget sideBar() {
  return Column(
    children: [
      Image.asset('assets/image/map.png'),
      h20,
      Row(
        children: const [
          Icon(Icons.tune_outlined),
          w5,
          Text(
            'Filter Result',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
      h20,
      categories(title: 'Category', categories: category),
      h20,
      rankings(title: 'Ranking', maxStar: 3),
      h20,
      rewardsList(),
    ],
  );
}
