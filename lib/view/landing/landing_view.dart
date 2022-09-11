import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/header/headers.dart';
import 'components/consultant.dart';
import 'components/experience.dart';
import 'components/explore.dart';
import 'components/register.dart';
import 'components/reward.dart';
import 'components/slider.dart';
import 'components/trust.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              const LandingSlider(),
             const SizedBox(height: 40,),
              const Explore(),
              const SizedBox(height: 40,),
              const Reward(),
              const SizedBox(height: 40,),
              const Experience(),
              const SizedBox(height: 40,),
              const Consultant(),
              const SizedBox(height: 40,),
              Trust(),
              const SizedBox(height: 40,),
              Register(),
            ],
          ),
        ),
      ),
    );
  }
}
