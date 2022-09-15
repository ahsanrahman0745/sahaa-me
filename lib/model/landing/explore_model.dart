import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahaame/utils/constants.dart';

import '../../responsive.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({Key? key, required this.text, required this.image}) : super(key: key);
final String text , image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(image ,width: Responsive.isMobile(context)? 70 : 100,),
          const SizedBox(height: 15,),
          Text(text, style:MyTextStyles.headingxSmallBoldBlack,),
        ],
      ),
    );
  }
}
