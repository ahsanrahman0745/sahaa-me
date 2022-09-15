import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../../utils/constants.dart';

class Consultant extends StatelessWidget {
  const Consultant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: Responsive.isMobile(context) ? size.width/1.04 : size.width/1.2,
      child: Responsive.isDesktop(context)?
      Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hire A Consultant',
                  style: TextStyle(
                      color: darkColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      height: 2),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Hire a Sahaa consultant to enjoy multiple services without any hassle. Our consultant will guide you about the best packages and services that match your requirements.',
                  style: TextStyle(color: darkColor, fontSize: 15, height: 2),
                    textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("SHah ooo");
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        foregroundColor: Colors.white,
                        backgroundColor:sahaaColor, // foreground
                      ),
                      child: const Text("Call Now"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: sahaaColor),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email us',
                            style: TextStyle(fontSize: 14, color: sahaaColor),
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.arrow_circle_right,
                            color: sahaaColor,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Container(
                    width: 380,
                    height: 430,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: sahaaColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                  ),
                ),
                Container(
                  height: 360,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: AssetImage('assets/image/slider_3.jpg',),fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: const Icon(
                        Icons.play_arrow,
                        color: sahaaColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ):
      Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hire A Consultant',
                style: TextStyle(
                    color: darkColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 2),
                textAlign: TextAlign.center,
              ),
              Text(
                'Hire a Sahaa consultant to enjoy multiple services without any hassle. Our consultant will guide you about the best packages and services that match your requirements.',
                style: TextStyle(color: darkColor, fontSize: 15, height: 2),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 30,
              ),
              Responsive.isMobile(context)?
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("SHah ooo");
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      foregroundColor: Colors.white,
                      backgroundColor:sahaaColor, // foreground
                    ),
                    child: const Text("Call Now"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: sahaaColor),
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    ),
                    child: SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email us',
                            style: TextStyle(fontSize: 14, color: sahaaColor),
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.arrow_circle_right,
                            color: sahaaColor,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
              :
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("SHah ooo");
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      foregroundColor: Colors.white,
                      backgroundColor:sahaaColor, // foreground
                    ),
                    child: const Text("Call Now"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: sahaaColor),
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email us',
                          style: TextStyle(fontSize: 14, color: sahaaColor),
                        ),
                        SizedBox(width: 10,),
                        Icon(
                          Icons.arrow_circle_right,
                          color: sahaaColor,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 360,
                // width: 400,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(image: AssetImage('assets/image/slider_3.jpg',),fit: BoxFit.cover),
                ),
              ),
              Positioned(
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: sahaaColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
