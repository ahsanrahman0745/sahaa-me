import 'package:flutter/widgets.dart';

import '../../../utils/constants.dart';
import '../../../utils/data.dart';
import 'filter_dropdown.dart';

Widget searchedText({required String text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          RichText(
              text: TextSpan(children: [
            const TextSpan(text: 'Did you mean a company call '),
            TextSpan(
                text: '"$text"?',
                style: const TextStyle(color: secondaryColors))
          ])),
        ],
      ),
      filterDropdown(dropdownValues: filters),
    ],
  );
}
