import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';

Widget bredCrumbes({
  required List navigation,
}) {
  return SizedBox(
    height: 30,
    child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (c, i) {
          return Text(
            navigation[i],
            style: i == (navigation.length - 1)
                ? const TextStyle(color: darkColor)
                : const TextStyle(color: sahaaColor),
          );
        },
        separatorBuilder: (c, i) {
          return const Text(
            ' > ',
            style: TextStyle(color: sahaaColor),
          );
        },
        itemCount: navigation.length),
  );
}
