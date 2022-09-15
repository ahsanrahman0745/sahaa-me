import 'package:flutter/material.dart';

import 'package:number_pagination/number_pagination.dart';



import '../../footer/footer.dart';
import '../../header/header_small_screen.dart';
import '../../header/headers.dart';
import '../../model/footer/button_link.dart';
import '../../responsive.dart';
import '../../utils/images.dart';
import 'component/business_card.dart';
import 'component/card_data_display.dart';
import 'component/category.dart';

import 'component/rating.dart';
import 'component/search_result.dart';
import 'component/sidebar_images_with_deatail.dart';
import '../../model/search_page/blog_data.dart';





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
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///=================================header


           Responsive.isMobile(context) ? HeaderSmallScreen()  :   Header(headerValue: true,),







            ///======================= main content
       if(!Responsive.isMobile(context))     SearchResult(),

            ///==========================divider line

            if(!Responsive.isMobile(context))    const Divider(
              endIndent: 100,
              indent: 100,
              height: 1,
              color: Colors.black,
            ),

            ///===========================dive portions
            Container(
              padding:
                   EdgeInsets.symmetric(horizontal: Responsive.isMobile(context)?10:100 , vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///============first side
              if(!Responsive.isTablet(context) &&!Responsive.isMobile(context))
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
                            const Rating(),
                            const SizedBox(
                              height: 20,
                            ),

                            ///=====================images with info bottom
                            const   lastSideBarImages(),
                            const  SizedBox(height: 20,),
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
                            const SizedBox(height: 10,),
                            ///================================Pagination
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
                            ///================================BusinessCard
                            const SizedBox(height: 30,),
                           const BusinessCard(),
                          ],
                        ),



                  ),

                ],
              ),
            ),




            ///================================footer
            const SizedBox(height: 40,),
            const Footer(),


          ],
        ),
      ),
    );
  }
}



