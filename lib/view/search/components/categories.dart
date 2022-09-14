import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

Widget categories({required String title, required List categories}) {
  return ExpansionPanelList(
    expansionCallback: (int index, bool isExpanded) {},
    children: [
      ExpansionPanel(
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          );
        },
        body: Container(
          padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
          child: ListView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Text(
                  categories[index],
                  style: const TextStyle(
                      fontSize: 15, color: darkColor, height: 1.5),
                );
              }),
        ),
        isExpanded: true,
      ),
    ],
  );
}
