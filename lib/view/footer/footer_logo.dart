import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahaame/view/widgets/header_medium_text.dart';

import '../../utils/constants.dart';

Widget footerLogo({size = 20}) {
  return Row(
    children: [
      SvgPicture.asset(
        'assets/svg/favicon.svg',
        height: size,
      ),
      w20,
      headerMediumText(text: copyRight)
    ],
  );
}
