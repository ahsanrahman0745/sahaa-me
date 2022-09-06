import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';

Widget searchBtn(
    {color = darkColor, size = 40, title = 'Search', titleColor = lightColor}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: size,
      color: color,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: titleColor),
        ),
      ),
    ),
  );
}
