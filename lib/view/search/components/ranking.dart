import 'package:flutter/material.dart';

Widget rankings({required String title, required int maxStar}) {
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
              itemCount: maxStar,
              reverse: true,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                  child: ListView.builder(
                      itemCount: index + 1,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (c, i) {
                        return const Icon(Icons.star_border);
                      }),
                );
              }),
        ),
        isExpanded: true,
      ),
    ],
  );
}
