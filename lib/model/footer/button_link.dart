import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../responsive.dart';
import '../../utils/constants.dart';
import '../../widgets/onhover.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';



class FooterButton extends StatelessWidget {
  const FooterButton({Key? key, required this.buttonName}) : super(key: key);
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered){
      final hoverColor = isHovered ? sahaaColor : Colors.grey.shade700 ;
      return InkWell(
        hoverColor: Colors.transparent,
        onTap: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 12 : 15,
                  color: hoverColor,
                  overflow: TextOverflow.visible
                ),
              ),
            ),
            Responsive.isMobile(context)? const SizedBox() :
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 17,
                width: 2,
                decoration:  BoxDecoration(
                  color: hoverColor,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class FooterSocialButton extends StatelessWidget {
  const FooterSocialButton({Key? key, required this.buttonName, required this.socialIcon}) : super(key: key);
  final String buttonName, socialIcon;

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered){
      final hoverColor = isHovered ? sahaaColor : Colors.grey.shade700 ;
      return InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/svg/social/$socialIcon.svg', color: hoverColor, height: 15,),
            SizedBox(width: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 12 : 14,
                  color: hoverColor,
                ),
              ),
            ),
            Responsive.isMobile(context)? const SizedBox() :
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 17,
                width: 2,
                decoration:  BoxDecoration(
                  color: hoverColor,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class LastSocialButton extends StatelessWidget {
  const LastSocialButton ({Key? key, required this.buttonName, }) : super(key: key);
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered){
      final hoverColor = isHovered ? sahaaColor : Colors.grey.shade700 ;
      return InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Iconify(Bi.pinterest ,color: hoverColor, size: 15,),
            SizedBox(width: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 12 : 14,
                  color: hoverColor,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class LastFooterButton extends StatelessWidget {
  const LastFooterButton ({Key? key, required this.buttonName, }) : super(key: key);
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered){
      final hoverColor = isHovered ? sahaaColor : Colors.grey.shade700 ;
      return InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 12 : 14,
                  color: hoverColor,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}




