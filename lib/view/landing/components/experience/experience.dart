import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/utils/data.dart';
import 'package:sahaame/view/widgets/heading.dart';
import 'package:sahaame/view/widgets/subheading.dart';

import 'experience_item.dart';

Widget experience() {
  return Column(
    children: [
      heading(title: 'We Enrich Your Marketplace Experience Wisely'),
      subheading(
          title:
              'Enhance Your Business Reachability With Simple Steps With Sahaa.'),
      h20,
      Row(
        children: [
          for (var experience in experiences)
            Expanded(
              child: experienceItem(
                  title: experience['title'],
                  description: experience['description'],
                  count: experience['count']),
            ),
        ],
      )
    ],
  );
}
