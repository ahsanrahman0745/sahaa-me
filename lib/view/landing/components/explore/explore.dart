import 'package:flutter/widgets.dart';
import 'package:sahaame/view/landing/components/explore/see_more_btn.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/data.dart';
import '../../../widgets/heading.dart';
import '../../../widgets/subheading.dart';
import 'explore_item.dart';

Widget explore() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      subheading(title: 'One-Stop Solution For All Your Problems'),
      h20,
      heading(title: 'Explore the Sahaa Market'),
      h30,
      Wrap(
        spacing: 100,
        runSpacing: 100,
        children: [
          for (var explore in explores)
            exploreItem(title: explore['title'], image: explore['image'])
        ],
      ),
      h30,
      const SeeMoreButton(title: 'See More'),
    ],
  );
}
