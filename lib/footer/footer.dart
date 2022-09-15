import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahaame/utils/constants.dart';
import '../model/footer/button_link.dart';
import '../responsive.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: Responsive.isMobile(context)? size.width/1.04 : size.width/1.2,
      padding: EdgeInsets.fromLTRB(Responsive.isMobile(context)? 10: 0, 50, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('About Us', style: Responsive.isMobile(context)? MyTextStyles.headingxSmallBoldBlack: MyTextStyles.headingLargeBlack,),
          const SizedBox(height: 15,),
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
                   LastFooterButton(buttonName: 'Sahaa Reviews',),
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
              LastFooterButton(buttonName: 'Sahaa Reviews',),
            ],
          ),
          const SizedBox(height: 30,),
           Text('Our Businesses & Services', style: Responsive.isMobile(context)? MyTextStyles.headingxSmallBoldBlack: MyTextStyles.headingLargeBlack,),
          const SizedBox(height: 15,),
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
                 LastFooterButton(buttonName: 'Free Digital Marketing',),
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
              LastFooterButton(buttonName: 'Free Digital Marketing',),
            ],
          ),
          const SizedBox(height: 30,),
           Text('Social Links', style: Responsive.isMobile(context)? MyTextStyles.headingxSmallBoldBlack: MyTextStyles.headingLargeBlack,),
          const SizedBox(height: 15,),
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
                 LastSocialButton(buttonName: 'Pinterest', )
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
              LastSocialButton(buttonName: 'Pinterest', )
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
                 LastFooterButton(buttonName: 'Accessibility Statement',),

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
              LastFooterButton(buttonName: 'Accessibility Statement',),
            ],
          ),
          const SizedBox(height: 40,),
          Row(
            children: [
              SvgPicture.asset('assets/svg/favicon.svg', height: Responsive.isMobile(context)? 20 : 40,),
              const SizedBox(width: 20,),
               Icon(Icons.copyright_rounded, color: Colors.black, size: Responsive.isMobile(context)? 15 : 22,),
              const SizedBox(width: 10,),
              Text('sahaa Limited 2022', style: Responsive.isMobile(context)? MyTextStyles.headingxSmallBoldBlack : MyTextStyles.headingLargeBlack),
              
            ],
          )
        ],
      ),
    );
  }
}
