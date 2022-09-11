import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/utils/data.dart';
import 'package:sahaame/view/search/components/searched_text.dart';
import 'package:sahaame/view/search/components/side_bar.dart';

import '../widgets/horizontal_secondary_separator.dart';
import '../widgets/horizontal_separator.dart';
import 'components/bredcrumbes.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h15,
            horizontalSecondarySeparator(),
            h15,
            bredCrumbes(navigation: navigation),
            h20,
            searchedText(text: 'gym'),
            h20,
            horizontalSeparator(),
            h20,
            Row(
              children: [
                Expanded(flex: 1, child: sideBar()),
                Expanded(flex: 4, child: Container()),

              ],
            ),
            Text("ehhhhhhhhh")
          ],
        ),
      ),
    );
  }
}
