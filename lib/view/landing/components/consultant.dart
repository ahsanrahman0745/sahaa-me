import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class Consultant extends StatelessWidget {
  const Consultant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We Enrich Your Marketplace Experience Wisely',
                  style: TextStyle(
                      color: darkColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 2),
                ),
                Text(
                  'Enhance Your Business Reachability With Simple Steps With Sahaa.',
                  style: TextStyle(color: darkColor, fontSize: 15, height: 2),
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
                            horizontal: 50, vertical: 25),
                        foregroundColor: Colors.white,
                        backgroundColor:
                            Theme.of(context).primaryColor, // foreground
                      ),
                      child: const Text("Call Now"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: OutlinedButton(
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
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/image/slider_3.jpg',
                            height: 360,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: lightColor,
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
            ),
          ),
        ],
      ),
    );
  }
}
