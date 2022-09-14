import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';

Widget smallText({required String text}) {
  return Text(
    text,
    style: const TextStyle(
      color: darkColor,
      fontSize: 17,
    ),
  );
}
