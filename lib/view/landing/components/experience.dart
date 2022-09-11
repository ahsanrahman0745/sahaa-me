
import 'package:flutter/material.dart';

import '../../../model/landing/experience_item.dart';
import '../../../utils/constants.dart';
import '../../../utils/data.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 100),

      child: Column(
        children: [
          Text('We Enrich Your Marketplace Experience Wisely', style: TextStyle(
              color: darkColor, fontSize: 30, fontWeight: FontWeight.bold, height: 2),),
          Text('Enhance Your Business Reachability With Simple Steps With Sahaa.', style: TextStyle(color: darkColor, fontSize: 15, height: 2),),
         SizedBox(height: 20,),
          Row(
            children: [
              for (var experience in experiences)
                Expanded(
                  child: experienceItem(
                      title: experience['title'],
                      description: experience['description'],
                      count: experience['count']),
                ),
            ],
          )
        ],
      ),
    );
  }
}
