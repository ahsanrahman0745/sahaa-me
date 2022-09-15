import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sahaame/responsive.dart';

import '../utils/images.dart';

class HeaderSmallScreen extends StatefulWidget {
  const HeaderSmallScreen({Key? key}) : super(key: key);

  @override
  State<HeaderSmallScreen> createState() => _HeaderSmallScreenState();
}

class _HeaderSmallScreenState extends State<HeaderSmallScreen> {
  String? selectedSearch;
  List<String> itemsSearch = [
    'Item1',
    'I2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ///========first line
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Row(
              children: [
                SvgPicture.asset(logo, width: 100),
                const Spacer(),
                const Icon(Icons.accessibility),
                const Icon(Icons.menu),
              ],
            ),
          ),

          ///=========Second line
          const SizedBox(
            height: 40,
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 150,
            ),
            child: Column(
              children: [
                ///=======================first text field
                const TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 2),
                    ),
                    hintText: 'Business Name, Product Name or Service',
                    isDense: true,
                    // Added this
                    contentPadding: EdgeInsets.all(12), // Added this
                  ),
                ),

                ///=======================second text field
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 2),
                    ),
                    hintText: 'Business Name, Product Name or Service',
                    isDense: true,
                    // Added this
                    contentPadding: EdgeInsets.all(12), // Added this
                  ),
                ),

                ///=======================button
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print("SHah ooo");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    child: const Text("Search"),
                  ),
                ),
              ],
            ),
          ),

          ///=============divider line
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.orange,
            thickness: 5,
          ),

          ///======================third line
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // padding:
                  // const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  child: const Text(
                    "Did you mean a company call " "?",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                ///========================= dropdown
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Select Class',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    items: itemsSearch
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedSearch,
                    onChanged: (value) {
                      setState(() {
                        selectedSearch = value as String;
                      });
                    },
                    buttonHeight: 30,
                    // buttonWidth: 260,
                    dropdownMaxHeight: 100,
                    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                    // dropdownWidth: 300,
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),

          ///========================card
          Container(
            height: 60,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(

              color: Color(0XffF7F7F7),
             // color: Colors.blue,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(

                  children: [
                SizedBox(
                        height: 45,
                        width: 140,
                        child: GestureDetector(
                          onTap: (){print("ok hai yha bi");},
                          child: Card(

                            elevation: 0,
                            color: const Color(0XffEDEDED),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: const [

                                        Icon(Icons.pin_drop,color: Colors.orange, size: 20,),
                                        SizedBox(width: 3),
                                        Text("Map View", style: TextStyle(color: Color(0Xff9877B6),),),

                                      ],
                                    ),


                          ),
                        ),
                      ),

                    Spacer(),
                    Text("page 1",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 14),),
                  ],
                ),
              ),
            ),
          )
        ],
      );

  }
}
