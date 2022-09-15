import 'package:flutter/material.dart';

import '../../../utils/images.dart';


class lastSideBarImages extends StatelessWidget {
  const lastSideBarImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///================first image and info
        Image.asset(sideBarBottomImage),
        const SizedBox(
          height: 10,
        ),
        /*  Center(
          child: RichText(
            text: const TextSpan(
              text: 'Earn  ',
              style: TextStyle(color: Colors.black, fontSize: 30, ),
              children: <TextSpan>[
                TextSpan(
                  text: ' DISCOUNT ',
                  style: TextStyle(color: Colors.orange, fontSize: 30,fontWeight: FontWeight.bold,wordSpacing: 1),
                ),

              ],

            ),
          ),
        ),
        Center(
          child: RichText(
            text: const TextSpan(
              text: 'VOUCHERS',
              style: TextStyle(color: Colors.orange, fontSize: 30, ),



            ),
          ),
        ),
        SizedBox(height: 20,),*/
        /*Center(
          child: RichText(
            text: const TextSpan(
              text: 'with  each  referral ',
              style: TextStyle(color: Colors.black, fontSize: 28, ),

            ),
          ),
        ),
        SizedBox(height: 30,),*/
        ///=====================================Second image and info
        Image.asset(sideBarBottomImage1),
       /* const SizedBox(
          height: 10,
        ),
        Center(
          child: RichText(
            text: const TextSpan(
              text: 'Get  ',
              style: TextStyle(color: Colors.black, fontSize: 30, ),


            ),
          ),
        ),
        Center(
          child: RichText(
            text: const TextSpan(
              text: 'GUARANTEED',
              style: TextStyle(color: Colors.orange, fontSize: 30,fontWeight: FontWeight.bold ),



            ),
          ),
        ),
        SizedBox(height: 20,),
        Center(
          child: RichText(
            text: const TextSpan(
              text: 'CASHBACK ',
              style: TextStyle(color: Colors.orange, fontSize: 30,fontWeight: FontWeight.bold ),

            ),
          ),
        ),
        Center(
          child: RichText(
            text: const TextSpan(
              text: 'from Sahaa ',
              style: TextStyle(color: Colors.black, fontSize: 28, ),

            ),
          ),
        ),*/
        SizedBox(height: 30,),
        ///=====================================third image and info
        Image.asset(sideBarBottomImage2),
       /* const SizedBox(
          height: 10,
        ),
        Center(
          child: RichText(
            text: const TextSpan(
              text: 'Sign Up! & Get  ',
              style: TextStyle(color: Colors.black, fontSize: 28, ),


            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: RichText(
            text: const TextSpan(
              text: '50 AED ',
              style: TextStyle(color: Colors.orange, fontSize: 30,),
              children: [

                TextSpan(
                  text: 'Bonus',
                  style: TextStyle(
                    color: Colors.black ,fontSize: 28,
                  ),
                ),

              ],


            ),
          ),
        ),*/
      ],
    );
  }
}