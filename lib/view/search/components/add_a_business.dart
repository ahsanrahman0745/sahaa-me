import 'package:flutter/widgets.dart';

import '../../../utils/constants.dart';
import '../../widgets/filled_btn.dart';
import '../../widgets/heading_normal.dart';
import '../../widgets/subheading.dart';

Widget addaBusiness() {
  return Container(
    color: lightGreyColor,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
    child: Column(
      children: [
        headingNormal(title: 'Business not here?'),
        subheading(
            title:
                'Is the business you’re looking for not listed? Tell us what we’re missing.',
            align: TextAlign.center),
        h20,
        filledBtn(title: 'Add a business')
      ],
    ),
  );
}
