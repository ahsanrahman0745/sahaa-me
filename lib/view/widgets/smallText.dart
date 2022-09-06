import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';

Widget smallText({required String text, Color color = darkColor, size = 17}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
    ),
  );
}
