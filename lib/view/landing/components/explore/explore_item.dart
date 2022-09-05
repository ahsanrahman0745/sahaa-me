import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';

Widget exploreItem({required String title, required String image}) {
  return Column(
    children: [
      SvgPicture.asset('assets/svg/$image', height: exploreSvgSize),
      h15,
      Text(
        title,
        style: exploreStyle,
      )
    ],
  );
}
