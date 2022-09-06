import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/view/widgets/header_medium_text.dart';
import 'package:sahaame/view/widgets/header_small_text.dart';

import '../../utils/responsive_screens.dart';
import 'footer_icon_item.dart';
import 'footer_item.dart';
import 'footer_logo.dart';
import 'last_footer_icon_item.dart';
import 'last_footer_item.dart';

Widget footerView() {
  return SizedBox(
    width: double.infinity,
    child: Column(
      children: [
        WidgetWrapper(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerMediumText(text: 'About Us', size: 25),
              h15,
              Row(
                children: [
                  footerItem(text: 'About Sahaa.me'),
                  footerItem(text: 'Business listings'),
                  footerItem(text: 'Help & Support'),
                  footerItem(text: 'Sahaa App'),
                  footerItem(text: 'Sahaa Blogs'),
                  lastFooterItem(text: 'Sahaa Reviews')
                ],
              ),
              h30,
              headerMediumText(text: 'Our Businesses & Services', size: 25),
              h15,
              Row(
                children: [
                  footerItem(text: 'Digital Marketing'),
                  footerItem(text: 'Result-Driven Services'),
                  footerItem(text: 'Google Ads'),
                  footerItem(text: 'Social Media Ads'),
                  footerItem(text: 'SEO'),
                  footerItem(text: 'Website'),
                  lastFooterItem(text: 'Free Digital Marketing'),
                ],
              ),
              h30,
              headerMediumText(text: 'Social Links', size: 25),
              h15,
              Row(
                children: [
                  footerIconItem(
                      text: 'Digital Marketing',
                      icon: FontAwesomeIcons.facebook),
                  footerIconItem(
                      text: 'Instagram', icon: FontAwesomeIcons.instagram),
                  footerIconItem(
                      text: 'Twitter', icon: FontAwesomeIcons.twitter),
                  footerIconItem(
                      text: 'Linked In', icon: FontAwesomeIcons.linkedin),
                  footerIconItem(
                      text: 'Tik Tok', icon: FontAwesomeIcons.tiktok),
                  footerIconItem(
                      text: 'Youtube', icon: FontAwesomeIcons.youtube),
                  lastFooterIconItem(
                      text: 'Pintrest', icon: FontAwesomeIcons.pinterest),
                ],
              ),
              h20,
              headerSmallText(
                  text: disclaimer,
                  size: 15,
                  color: darkColor.withOpacity(0.7)),
              h30,
              Row(
                children: [
                  footerItem(text: 'Privacy Policy'),
                  footerItem(text: 'Terms & Condition'),
                  footerItem(text: 'Review Policy'),
                  footerItem(text: 'Legal'),
                  lastFooterItem(text: 'Accessibility Statement')
                ],
              ),
              h30,
              footerLogo(size: 30),
              h50,
            ],
          ),
        ),
      ],
    ),
  );
}
