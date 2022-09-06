import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';

Widget subheading({required String title, TextAlign align = TextAlign.start}) {
  return Text(
    title,
    style: subheadingStyle,
    textAlign: align,
  );
}
