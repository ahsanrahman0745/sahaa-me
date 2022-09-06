import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';

Widget horizontalSecondarySeparator({size = 4}) {
  return Container(
    width: double.infinity,
    color: secondaryColors,
    height: size,
  );
}
