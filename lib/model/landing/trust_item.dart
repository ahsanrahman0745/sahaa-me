import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahaame/utils/constants.dart';

import '../../responsive.dart';

class TrustItem extends StatelessWidget {
  const TrustItem({Key? key, required this.description, required this.title, required this.image}) : super(key: key);
 final String description, title , image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(

        border: Border.all(width: 1, color: Colors.black.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                    color: darkColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100))),
              ),
              Positioned(
                top: 45,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(100))),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: SvgPicture.asset(
                      'assets/svg/trust/$image',
                    ),
                  ),
                ),
              )
            ],
          ),

          Container(
            decoration: BoxDecoration(),
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 40),
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Responsive.isMobile(context)? MyTextStyles.headingxSmallBlack:  MyTextStyles.headingSmallBlack,
                ),
                SizedBox(height: 15,),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: Responsive.isMobile(context)? MyTextStyles.regularGrey : MyTextStyles.subHeadingGrey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

