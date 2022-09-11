import 'package:flutter/material.dart';
import 'package:sahaame/view/landing/components/waveclipper.dart';

import 'carousel.dart';

class LandingSlider extends StatelessWidget {
  const LandingSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Stack(
        children: [
          const Carousel(),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(100, 100, 100, 20),
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      width: 500,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Sahaa Connecting ',
                              style:
                                  TextStyle(fontSize: 48, color: Colors.white ,fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Customers ',
                              style:
                              TextStyle(fontSize: 48, color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'With Right ',
                              style:
                              TextStyle(fontSize: 48, color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Business',
                              style:
                              TextStyle(fontSize: 48, color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
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
                        backgroundColor:
                            Theme.of(context).primaryColor, // foreground
                      ),
                      child: const Text("List Your Business"),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
