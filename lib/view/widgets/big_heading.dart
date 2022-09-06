import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';

Widget bigHeading({text, size = 45, color = lightColor}) {
  return Text(
    text,
    style: TextStyle(fontSize: size, fontWeight: FontWeight.bold, color: color),
  );
}
