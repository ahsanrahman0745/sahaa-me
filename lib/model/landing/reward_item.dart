import 'package:flutter/widgets.dart';

import '../../utils/constants.dart';

class RewardItem extends StatelessWidget {
  const RewardItem(
      {Key? key,
      required this.start,
      required this.middle,
      required this.end,
      required this.image})
      : super(key: key);
  final String start, middle, end, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/$image',
          ),
          SizedBox(height: 20,),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: start,
                  style: const TextStyle(
                      color: darkColor, height: 1.5, fontSize: 20),
                ),
                TextSpan(
                  text: middle,
                  style: const TextStyle(
                    color: sahaaColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: end,
                  style: const TextStyle(
                      color: darkColor, fontSize: 20, height: 1.5),
                ),
              ])),
        ],
      ),
    );
  }
}
