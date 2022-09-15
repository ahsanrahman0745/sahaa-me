
import 'package:flutter/material.dart';

import '../../../model/landing/experience_item.dart';
import '../../../responsive.dart';
import '../../../utils/constants.dart';
import '../../../utils/data.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  SizedBox(
    width: Responsive.isMobile(context)? size.width/1.04 : size.width/1.2,

      child: Column(
        children: [
          Text('We Enrich Your Marketplace Experience Wisely', style: Responsive.isMobile(context)? MyTextStyles.SectionTitleSmallBlack: MyTextStyles.SectionTitleSmallBlack, textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Text('Enhance Your Business Reachability With Simple Steps With Sahaa.', style: MyTextStyles.headingxSmallGrey, textAlign: TextAlign.center,),
         SizedBox(height: 20,),
         Responsive.isMobile(context)?
         Column(
           children: [
             for (var experience in experiences)
               ExperienceItem(
                   title: experience['title'],
                   description: experience['description'],
                   count: experience['count']),
           ],
         ):
         IntrinsicHeight(
            child: Row(
              children: [
                for (var experience in experiences)
                  Expanded(
                    child: ExperienceItem(
                        title: experience['title'],
                        description: experience['description'],
                        count: experience['count']),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
