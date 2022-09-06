import 'package:flutter/widgets.dart';

Widget smallAssetImage({image, size = 22}) {
  return Image.asset(
    image,
    height: size,
    fit: BoxFit.cover,
  );
}
