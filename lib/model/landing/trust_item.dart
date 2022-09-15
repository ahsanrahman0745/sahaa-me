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
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 40),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15,),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      height: 1.4,
                      color: darkColor.withOpacity(0.7)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

