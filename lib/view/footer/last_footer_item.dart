import 'package:flutter/widgets.dart';
import '../widgets/header_small_text.dart';

Widget lastFooterItem({text}) {
  return Row(
    children: [
      headerSmallText(text: text, size: 17),
    ],
  );
}
