import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/utils/responsiveness.dart';
import 'package:sahaame/view/header/mobile/mobile_header.dart';
import 'components/header_bottom.dart';
import 'components/header_top.dart';

Widget headerView({isSearch = true, context}) {
  return Container(
    color: lightColor,
    child: Column(
      children: [
        if (!isMobile(context)) headerTop(),
        h20,
        isMobile(context) ? mobileHeader() : headerBottom(isSearch: isSearch),
        h10
      ],
    ),
  );
}
