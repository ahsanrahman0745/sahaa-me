import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constants.dart';
import '../widgets/header_small_text.dart';

Widget lastFooterIconItem({text, icon, size = 20}) {
  return Row(
    children: [
      FaIcon(
        icon,
        size: size,
      ),
      w5,
      headerSmallText(text: text, size: 17),
    ],
  );
}
