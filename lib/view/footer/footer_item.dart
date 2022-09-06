import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';
import '../widgets/header_small_text.dart';
import '../widgets/vertical_separator.dart';

Widget footerItem({text}) {
  return Row(
    children: [
      headerSmallText(text: text, size: 17),
      w10,
      verticalSeparator(width: 1, height: 15, color: darkColor),
      w10,
    ],
  );
}
