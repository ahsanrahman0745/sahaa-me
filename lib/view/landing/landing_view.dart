import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/utils/responsive_screens.dart';
import 'package:sahaame/view/header/header_view.dart';
import 'package:sahaame/view/landing/components/experience/experience.dart';
import 'package:sahaame/view/landing/components/slider/selider_btn.dart';

import '../../utils/responsiveness.dart';
import '../footer/footer.dart';
import 'components/consultant/consultant.dart';
import 'components/explore/explore.dart';
import 'components/register/register.dart';
import 'components/reward/reward.dart';
import 'components/slider/slider.dart';
import 'components/slider/slider_text.dart';
import 'components/trust/trust.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Stack(
          children: [
            slider(context, images: [
              'assets/image/slider1.jpg',
              'assets/image/slider1.jpg'
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                headerView(isSearch: false, context: context),
                isMobile(context) ? h20 : h100,
                WidgetWrapper(child: sliderText(context))
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: sliderBtn(
                  iconColor: lightColor,
                  icon: Icons.arrow_downward_rounded,
                  backgroundColor: secondaryColors,
                  size: 70),
            )
          ],
        ),
        h50,
        WidgetWrapper(child: explore()),
        h50,
        reward(context),
        h50,
        WidgetWrapper(child: experience(context)),
        h50,
        WidgetWrapper(child: consultant(context)),
        WidgetWrapper(child: trust(context)),
        h50,
        register(context: context),
        h50,
        footerView(),
      ],
    ));
  }
}
