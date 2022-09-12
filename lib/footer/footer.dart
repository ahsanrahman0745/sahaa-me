import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahaame/utils/constants.dart';
import '../model/footer/button_link.dart';
import '../responsive.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(Responsive.isMobile(context)? 10: 100, 50, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('About Us', style: TextStyle(fontSize: 24, color: darkColor, fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
         Responsive.isMobile(context)?
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: const [
                   FooterButton(buttonName: 'About Sahaa.me',),
                   FooterButton(buttonName: 'Business listings',),
                   FooterButton(buttonName: 'Help & Support',),
                 ],),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: const [
                   FooterButton(buttonName: 'Sahaa App',),
                   FooterButton(buttonName: 'Sahaa Blogs',),
                   FooterButton(buttonName: 'Sahaa Reviews',),
                 ],),
               ],
             ):
         Wrap(
            runSpacing: 10,
            direction: Axis.horizontal,
            children: const [
              FooterButton(buttonName: 'About Sahaa.me',),
              FooterButton(buttonName: 'Business listings',),
              FooterButton(buttonName: 'Help & Support',),
              FooterButton(buttonName: 'Sahaa App',),
              FooterButton(buttonName: 'Sahaa Blogs',),
              FooterButton(buttonName: 'Sahaa Reviews',),
            ],
          ),
          const SizedBox(height: 40,),
          const Text('Our Businesses & Services', style: TextStyle(fontSize: 24, color: darkColor, fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
         Responsive.isMobile(context)?
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 FooterButton(buttonName: 'Digital Marketing',),
                 FooterButton(buttonName: 'Result Driven Services',),
                 FooterButton(buttonName: 'Google Ads',),
                 FooterButton(buttonName: 'Social Media Ads',),
               ],
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 FooterButton(buttonName: 'SEO',),
                 FooterButton(buttonName: 'Website',),
                 FooterButton(buttonName: 'Video',),
                 FooterButton(buttonName: 'Free Digital Marketing',),
               ],
             ),
           ],
         ) :
         Wrap(
            runSpacing: 10,
            direction: Axis.horizontal,
            children: const [
              FooterButton(buttonName: 'Digital Marketing',),
              FooterButton(buttonName: 'Result Driven Services',),
              FooterButton(buttonName: 'Google Ads',),
              FooterButton(buttonName: 'Social Media Ads',),
              FooterButton(buttonName: 'SEO',),
              FooterButton(buttonName: 'Website',),
              FooterButton(buttonName: 'Video',),
              FooterButton(buttonName: 'Free Digital Marketing',),
            ],
          ),
          const SizedBox(height: 40,),
          const Text('Social Links', style: TextStyle(fontSize: 24, color: darkColor, fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
         Responsive.isMobile(context)?
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 FooterSocialButton(buttonName: 'Facebook', socialIcon: 'facebook'),
                 FooterSocialButton(buttonName: 'Instagram', socialIcon: 'instagram'),
                 FooterSocialButton(buttonName: 'Twitter', socialIcon: 'twitter'),
                 FooterSocialButton(buttonName: 'Linked In', socialIcon: 'linkedin'),
               ],
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 FooterSocialButton(buttonName: 'Linked In', socialIcon: 'linkedin'),
                 FooterSocialButton(buttonName: 'Tik Tok', socialIcon: 'tiktok'),
                 FooterSocialButton(buttonName: 'Youtube', socialIcon: 'youtube'),
               ],
             ),
           ],
         ) :
         Wrap(
            runSpacing: 10,
            direction: Axis.horizontal,
            children: const [
              FooterSocialButton(buttonName: 'Facebook', socialIcon: 'facebook'),
              FooterSocialButton(buttonName: 'Instagram', socialIcon: 'instagram'),
              FooterSocialButton(buttonName: 'Twitter', socialIcon: 'twitter'),
              FooterSocialButton(buttonName: 'Linked In', socialIcon: 'linkedin'),
              FooterSocialButton(buttonName: 'Tik Tok', socialIcon: 'tiktok'),
              FooterSocialButton(buttonName: 'Youtube', socialIcon: 'youtube'),
            ],
          ),
          const SizedBox(height: 40,),
          Padding(
            padding:  EdgeInsets.only(right: Responsive.isMobile(context)? 10 : 90),
            child: Text('Disclaimer: The opinions expressed within Reviews are those of the author and not the views or opinions of Sahaa Limited. Registered Office: Business Center 1, M Floor, The Meydan Hotel, Nad Al Sheba, Dubai, U.A.E. Registered in Dubai. © Sahaa Marketing LLC FZ 2022. All rights reserved. Sahaa & Sahaa Pages and other ™ are trademarks of Sahaa Marketing LLC FZ.', style: TextStyle(color: Colors.grey.shade800, fontSize: 13),),
          ),
          const SizedBox(height: 40,),
         Responsive.isMobile(context)?
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 FooterButton(buttonName: 'Privacy Policy',),
                 FooterButton(buttonName: 'Terms & Condition',),
                 FooterButton(buttonName: 'Review Policy',),
               ],
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 FooterButton(buttonName: 'Legal',),
                 FooterButton(buttonName: 'Accessibility Statement',),
               ],
             ),
           ],
         ):
         Wrap(
            runSpacing: 10,
            direction: Axis.horizontal,
            children: const [
              FooterButton(buttonName: 'Privacy Policy',),
              FooterButton(buttonName: 'Terms & Condition',),
              FooterButton(buttonName: 'Review Policy',),
              FooterButton(buttonName: 'Legal',),
              FooterButton(buttonName: 'Accessibility Statement',),
            ],
          ),
          const SizedBox(height: 40,),
          Row(
            children: [
              SvgPicture.asset('assets/svg/favicon.svg', height: Responsive.isMobile(context)? 20 : 40,),
              const SizedBox(width: 20,),
              const Icon(Icons.copyright_rounded, color: Colors.black, size: 15,),
              const SizedBox(width: 10,),
              Text('sahaa Limited 2022', style: TextStyle(color: Colors.black, fontSize: Responsive.isMobile(context)? 20: 36),),
              
            ],
          )
        ],
      ),
    );
  }
}
