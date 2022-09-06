import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';

Widget headerMediumText(
    {required String text, Color color = darkColor, size = 17}) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
  );
}
