import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/utils/data.dart';
import 'package:sahaame/utils/responsive_screens.dart';
import 'package:sahaame/view/footer/footer.dart';
import 'package:sahaame/view/header/header_view.dart';
import 'package:sahaame/view/search/components/searched_text.dart';
import 'package:sahaame/view/search/components/side_bar.dart';

import '../widgets/horizontal_secondary_separator.dart';
import '../widgets/horizontal_separator.dart';
import 'components/add_a_business.dart';
import 'components/bredcrumbes.dart';
import 'components/business_list.dart';
import 'components/previous_next_btns.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  bool isResult = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          headerView(),
          horizontalSecondarySeparator(),
          WidgetWrapper(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                h15,
                bredCrumbes(navigation: navigation),
                h20,
                searchedText(text: 'gym'),
                h20,
                horizontalSeparator(),
                h20,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 1, child: sideBar()),
                    w20,
                    Expanded(
                      flex: 4,
                      child: isResult
                          ? businessList(context)
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                previousNextBtns(),
                                h30,
                                addaBusiness()
                              ],
                            ),
                    )
                  ],
                ),
                h50,
                footerView()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
