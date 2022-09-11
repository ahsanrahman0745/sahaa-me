import 'package:flutter/material.dart';

import '../../../model/landing/trust_item.dart';
import '../../../utils/constants.dart';
import '../../../utils/data.dart';

class Trust extends StatelessWidget {
  const Trust({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
          Text(
            'Why People Trust Sahaa ?',
            style: TextStyle(
                color: darkColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          Text(
            'You can find or list the businesses accordingly as per your requirements with simple steps and a strong customer-centric approach with Sahaa.',
            style: TextStyle(color: darkColor, fontSize: 15, height: 2),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              for (var trust in trusts)
                trustItem(
                    title: trust['title'],
                    description: trust['description'],
                    image: trust['image'])
            ],
          )
        ],
      ),
    );
  }
}
