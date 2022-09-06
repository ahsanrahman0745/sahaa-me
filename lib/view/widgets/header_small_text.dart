import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';

Widget headerSmallText(
    {required String text,
    Color color = darkColor,
    bold = FontWeight.normal,
    size = 13}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: size, fontWeight: bold),
  );
}
