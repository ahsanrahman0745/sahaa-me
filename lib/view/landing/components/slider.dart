import 'package:flutter/material.dart';
import 'package:sahaame/view/landing/components/waveclipper.dart';

import '../../../responsive.dart';
import '../../../utils/constants.dart';
import '../../mini_profile/mini_profile.dart';
import 'carousel.dart';

class LandingSlider extends StatelessWidget {
  const LandingSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: Responsive.isDesktop(context)? WaveClipper() : null,
      child: Stack(
        children: [
          const Carousel(),
          Center(
            child: Column(
              children: [
                Container(
                  width: size.width/1.2,
                  padding:  EdgeInsets.fromLTRB(0, 100, 0, 20),
                  height: Responsive.isMobile(context)? 600 : 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Responsive.isMobile(context)?  Column(
                        children: [
                          TextField(
                            cursorColor: Colors.black87,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                              ),
                              hintText:
                              'Business Name, Product Name or Service',
                              isDense: true,
                              // Added this
                              contentPadding: EdgeInsets.all(20), // Added this
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            cursorColor: Colors.black87,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.my_location),
                              prefixIconColor: Colors.black87,
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                              ),
                              hintText: 'Select City, Area',
                              isDense: true,
                              // Added this
                              contentPadding: EdgeInsets.all(20), // Added this
                            ),
                          ),
                          SizedBox(height: 10,),
                          ///=======================button
                          SizedBox(
                            width: size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                print("SHah ooo");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MiniProfile()),);
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
                              child: const Text("Search"),
                            ),
                          ),
                        ],
                      ):
                      Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              cursorColor: Colors.black87,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide:
                                      BorderSide(color: Colors.orange, width: 2),
                                ),
                                hintText:
                                    'Business Name, Product Name or Service',
                                isDense: true,
                                // Added this
                                contentPadding: EdgeInsets.all(20), // Added this
                              ),
                            ),
                          ),
                          const Expanded(
                            child: TextField(
                              cursorColor: Colors.black87,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.my_location),
                                prefixIconColor: Colors.black87,
                                filled: true,
                                fillColor: Colors.white,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide:
                                      BorderSide(color: Colors.orange, width: 2),
                                ),
                                hintText: 'Select City, Area',
                                isDense: true,
                                // Added this
                                contentPadding: EdgeInsets.all(20), // Added this
                              ),
                            ),
                          ),

                          ///=======================button
                          ElevatedButton(
                            onPressed: () {
                              print("SHah ooo");
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MiniProfile()),);
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
                            child: const Text("Search"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Responsive.isMobile(context)? null:  500,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Sahaa Connecting ',
                                style:
                                    TextStyle(fontSize: Responsive.isDesktop(context)? 48 : 36, color: Colors.white ,fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Customers ',
                                style:
                                TextStyle(fontSize: Responsive.isDesktop(context)? 48 : 36, color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'With Right ',
                                style:
                                TextStyle(fontSize: Responsive.isDesktop(context)? 48 : 36, color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Business',
                                style:
                                TextStyle(fontSize: Responsive.isDesktop(context)? 48 : 36, color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print("SHah ooo");
                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide.none,
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.zero
                          // ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          foregroundColor: Colors.white,
                          backgroundColor:sahaaColor, // foreground
                        ),
                        child: const Text("List Your Business"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
