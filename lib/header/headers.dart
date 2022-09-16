import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../responsive.dart';
import '../utils/constants.dart';
import '../view/free_listing/free_listing.dart';

 class Header extends StatelessWidget {
    Header({required this.headerValue}) ;

   bool headerValue ;

   @override
   Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
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
                   width: size.width/1.2,
                   // constraints: const BoxConstraints(maxWidth: 1232),
                   padding:
                   const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                   child: Column(
                     children: [
                       Row(
                         children:  [
                           Text(
                             "sahaa.me",
                             style:  TextStyle(color: Colors.white, fontSize: Responsive.isDesktop(context)? null :10),
                           ),
                           SizedBox(
                             width: 40,
                           ),
                           Text(
                             "sahaa.promotion",
                             style: TextStyle(color: Colors.white,fontSize: Responsive.isDesktop(context)? null :10),
                           ),
                           Spacer(),
                           InkWell(
                             hoverColor: Colors.transparent,
                             onTap: (){
                               Navigator.push(
                                 context, MaterialPageRoute(builder: (context) => FreeListing()),);
                             },
                             child: Text(
                               "get a free Listing",
                               style: TextStyle(color: Colors.white,fontSize: Responsive.isDesktop(context)? null :10),
                             ),
                           ),
                           SizedBox(
                             width: 40,
                           ),
                           Text(
                             "Advertise",
                             style: TextStyle(color: Colors.white,fontSize: Responsive.isDesktop(context)? null :10),
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
                             style: TextStyle(color: Colors.white,fontSize: Responsive.isDesktop(context)? null :10),
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
                 width: size.width/1.2,
                 padding: const EdgeInsets.symmetric(
                   horizontal: 0,
                 ),
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                       children: [
                         SvgPicture.asset("assets/svg/sahaa-logo.svg", width: 100,),
                         const SizedBox(
                           width: 10,
                         ),
                         ///============== search fields
                         headerValue ? const
                         Expanded(
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
                         ) : SizedBox(),
                         headerValue ? const  Expanded(
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
                         ): SizedBox(),

                         ///=======================button
                        headerValue?  Container(
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
                         ) : SizedBox(),

                         ///================ login
                         const SizedBox(
                           width: 25,
                         ),
                         Row(
                           children: [
                             const Icon(
                               Icons.accessibility,
                               color: sahaaColor,
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
          SizedBox(
           height: headerValue? 15 : 0,
         ),
         headerValue? Divider(
           thickness: 5,
           color: Colors.orange,
         ) : SizedBox(),
       ],
     );
   }
 }


