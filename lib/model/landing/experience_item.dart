import 'package:flutter/material.dart';

import '../../responsive.dart';
import '../../utils/constants.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({Key? key, required this.title, required this.description, required this.count}) : super(key: key);
final  String title,  description, count;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          Text(
            count,
            style: TextStyle(
              color: sahaaColor.withOpacity(0.3),
              fontWeight: FontWeight.bold,
              fontSize: 80,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Responsive.isMobile(context)?MyTextStyles.headingxSmallBoldBlack :MyTextStyles.headingLargeBlack,
                ),
                SizedBox(height: 15,),
                Text(description, style: MyTextStyles.subHeadingBlack,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

