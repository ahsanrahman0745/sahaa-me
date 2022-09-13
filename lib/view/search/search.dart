import 'package:flutter/material.dart';

import 'package:number_pagination/number_pagination.dart';



import '../../utils/images.dart';
import 'component/card_data_display.dart';
import 'component/category.dart';

import 'component/rating.dart';
import 'component/search_result.dart';
import 'component/sidebar_images_with_deatail.dart';
import 'model/blog_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Search()),
    );
  }
}

///================

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final int numOfPages = 10;
  int currentPage = 0;
  var selectedPageNumber = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ///============first bar
            // Container(
            //   width: double.infinity,
            //   color: Colors.black,
            //   child: SafeArea(
            //     child: Column(
            //       children: [
            //         Container(
            //           constraints: const BoxConstraints(maxWidth: 1232),
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 100, vertical: 10),
            //           child: Column(
            //             children: [
            //               Row(
            //                 children: const [
            //                   Text(
            //                     "shaa.me",
            //                     style: TextStyle(color: Colors.white),
            //                   ),
            //                   SizedBox(
            //                     width: 40,
            //                   ),
            //                   Text(
            //                     "shaa.promotion",
            //                     style: TextStyle(color: Colors.white),
            //                   ),
            //                   Spacer(),
            //                   Text(
            //                     "get a free Listing",
            //                     style: TextStyle(color: Colors.white),
            //                   ),
            //                   SizedBox(
            //                     width: 40,
            //                   ),
            //                   Text(
            //                     "Advertise",
            //                     style: TextStyle(color: Colors.white),
            //                   ),
            //                   SizedBox(
            //                     width: 10,
            //                   ),
            //                   Icon(
            //                     Icons.mail_outline,
            //                     size: 14,
            //                     color: Colors.white,
            //                   ),
            //                   SizedBox(
            //                     width: 5,
            //                   ),
            //                   Text(
            //                     "advertise@sahaa.me",
            //                     style: TextStyle(color: Colors.white),
            //                   ),
            //
            //                   // Spacer(),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            //
            // ///================second bar
            // Container(
            //   //width: double.infinity,
            //   child: Column(
            //     children: [
            //       Container(
            //         padding: const EdgeInsets.symmetric(
            //           horizontal: 100,
            //         ),
            //         child: Column(
            //           children: [
            //             Row(
            //               children: [
            //                 SvgPicture.asset("icons/logo.svg"),
            //                 const SizedBox(
            //                   width: 10,
            //                 ),
            //                 const Expanded(
            //                   child: TextField(
            //                     cursorColor: Colors.grey,
            //                     decoration: InputDecoration(
            //                       enabledBorder: OutlineInputBorder(
            //                         borderSide: BorderSide(
            //                             color: Colors.grey, width: 2),
            //                       ),
            //                       focusedBorder: OutlineInputBorder(
            //                         borderSide: BorderSide(
            //                             color: Colors.grey, width: 2),
            //                       ),
            //                       border: OutlineInputBorder(
            //                         borderSide: BorderSide(
            //                             color: Colors.orange, width: 2),
            //                       ),
            //                       hintText:
            //                           'Business Name, Product Name or Service',
            //                       isDense: true,
            //                       // Added this
            //                       contentPadding:
            //                           EdgeInsets.all(12), // Added this
            //                     ),
            //                   ),
            //                 ),
            //                 const Expanded(
            //                   child: TextField(
            //                     cursorColor: Colors.grey,
            //                     decoration: InputDecoration(
            //                       enabledBorder: OutlineInputBorder(
            //                         borderSide: BorderSide(
            //                             color: Colors.grey, width: 2),
            //                       ),
            //                       focusedBorder: OutlineInputBorder(
            //                         borderSide: BorderSide(
            //                             color: Colors.grey, width: 2),
            //                       ),
            //                       border: OutlineInputBorder(
            //                         borderSide: BorderSide(
            //                             color: Colors.orange, width: 2),
            //                       ),
            //                       hintText: 'Select city,Area',
            //                       isDense: true,
            //                       // Added this
            //                       contentPadding:
            //                           EdgeInsets.all(12), // Added this
            //                     ),
            //                   ),
            //                 ),
            //
            //                 ///=======================button
            //                 Container(
            //                   height: 34,
            //                   width: 100,
            //                   child: ElevatedButton(
            //                     onPressed: () {
            //                       print("SHah ooo");
            //                     },
            //                     child: const Text("Search"),
            //                     style: ElevatedButton.styleFrom(
            //                       primary: Colors.black, // background
            //                       onPrimary: Colors.white, // foreground
            //                     ),
            //                   ),
            //                 ),
            //
            //                 ///================ login
            //                 const SizedBox(
            //                   width: 25,
            //                 ),
            //                 const Icon(
            //                   Icons.accessibility,
            //                 ),
            //                 const SizedBox(
            //                   width: 2,
            //                 ),
            //
            //                 const Text(
            //                   'Login',
            //                 ),
            //                 const SizedBox(
            //                   width: 4,
            //                 ),
            //                 const Icon(
            //                   Icons.arrow_forward_ios,
            //                 ),
            //               ],
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            //
            // ///===============================divider line
            // const SizedBox(
            //   height: 15,
            // ),
            // const Divider(
            //   thickness: 5,
            //   color: Colors.orange,
            // ),

            ///======================= main content
            SearchResult(),

            ///==========================divider line

            const Divider(
              endIndent: 100,
              indent: 100,
              height: 1,
              color: Colors.black,
            ),

            ///===========================dive portions
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///============first side
                  Expanded(
                    child: Container(
                      // color: Colors.black,
                      child: Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            ///=============image
                            Image.asset(sideBarImageFirst),
                            const SizedBox(
                              height: 20,
                            ),

                            ///==============filter
                            Row(
                              children: const [
                                Icon(
                                  Icons.filter_list,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  'Filter Result',
                                ),
                              ],
                            ),

                            ///=============ExpansionPanel 1 category
                            CategoryFilter(),

                            ///================= ExpansionPanel 2 rating
                            Rating(),
                            SizedBox(
                              height: 20,
                            ),

                            ///=====================images with info bottom
                            lastSideBarImages(),
                          ],
                        ),
                      ),
                    ),
                  ),

                  ///===========second side
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child:
                    Column(
                      children: [
                        Column(
                          children:List.generate(
                            CardPosts.length,
                                (index) => CardDisplay(blog: CardPosts[index]),

                          ),


                        ),

                        NumberPagination(
                          onPageChanged: (int pageNumber) {
                            //do somthing for selected page
                            setState(() {
                              selectedPageNumber = pageNumber;
                            });
                          },
                          pageTotal: 100,
                          pageInit: selectedPageNumber, // picked number when init page
                          colorPrimary: Colors.orange,
fontSize: 25,
                          // iconToLast: Text("next",style: TextStyle(color: Colors.black),),
                          // iconToFirst: Text("previous", style: TextStyle(color: Colors.black),),
                          colorSub: Colors.white70,

                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}



