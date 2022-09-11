import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget Header() {
  return Column(
    children: [
      ///============first bar
      Container(
        width: double.infinity,
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 1232),
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "sahaa.me",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "sahaa.promotion",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "get a free Listing",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Advertise",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.mail_outline,
                          size: 14,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "advertise@sahaa.me",
                          style: TextStyle(color: Colors.white),
                        ),

                        // Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      ///================second bar
      Container(
        //width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 100,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/sahaa-logo.svg"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey, width: 2),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.orange, width: 2),
                            ),
                            hintText:
                            'Business Name, Product Name or Service',
                            isDense: true,
                            // Added this
                            contentPadding:
                            EdgeInsets.all(12), // Added this
                          ),
                        ),
                      ),
                      const Expanded(
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey, width: 2),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.orange, width: 2),
                            ),
                            hintText: 'Select city,Area',
                            isDense: true,
                            // Added this
                            contentPadding:
                            EdgeInsets.all(12), // Added this
                          ),
                        ),
                      ),

                      ///=======================button
                      Container(
                        height: 34,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            print("SHah ooo");
                          },
                          child: const Text("Search"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // background
                            onPrimary: Colors.white, // foreground
                          ),
                        ),
                      ),

                      ///================ login
                      const SizedBox(
                        width: 25,
                      ),
                      const Icon(
                        Icons.accessibility,
                      ),
                      const SizedBox(
                        width: 2,
                      ),

                      const Text(
                        'Login',
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),

      ///===============================divider line
      const SizedBox(
        height: 15,
      ),
      const Divider(
        thickness: 5,
        color: Colors.orange,
      ),
    ],
  );
}
