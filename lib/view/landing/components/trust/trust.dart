import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/utils/responsiveness.dart';
import 'package:sahaame/view/landing/components/trust/trust_item.dart';
import 'package:sahaame/view/widgets/heading.dart';
import 'package:sahaame/view/widgets/subheading.dart';

import '../../../../utils/data.dart';

Widget trust(context) {
  return Column(
    children: [
      heading(title: 'Why People Trust Sahaa ?'),
      subheading(
          title:
              'You can find or list the businesses accordingly as per your requirements with simple steps and a strong customer-centric approach with Sahaa.'),
      h30,
      isMobile(context)
          ? Column(
              children: [
                for (var trust in trusts)
                  Row(
                    children: [
                      trustItem(
                          title: trust['title'],
                          description: trust['description'],
                          image: trust['image']),
                    ],
                  )
              ],
            )
          : Row(
              children: [
                for (var trust in trusts)
                  trustItem(
                      title: trust['title'],
                      description: trust['description'],
                      image: trust['image'])
              ],
            )
    ],
  );
}
