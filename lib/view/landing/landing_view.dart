import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/view/landing/components/experience/experience.dart';

import 'components/consultant/consultant.dart';
import 'components/explore/explore.dart';
import 'components/register/register.dart';
import 'components/reward/reward.dart';
import 'components/trust/trust.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            explore(),
            reward(),
            experience(),
            h30,
            consultant(),
            trust(),
            h30,
            register(context: context)
          ],
        ));
  }
}
