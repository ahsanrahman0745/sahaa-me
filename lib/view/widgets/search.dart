
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_svg/svg.dart';

import '../../header/headers.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(body: Header()),
    );
  }
}

///================

// class Search extends StatefulWidget {
//   const Search({Key? key}) : super(key: key);
//
//   @override
//   State<Search> createState() => _SearchState();
// }
//
// class _SearchState extends State<Search> {
//   var rating = 0;
//   double value = 0;
//   bool _expanded = true;
//   bool _expanded1 = true;
//   String? selectedClass;
//   List<String> items = [
//     'Item1',
//     'Item2',
//     'Item3',
//     'Item4',
//     'Item5',
//     'Item6',
//     'Item7',
//     'Item8',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ///============first bar
//             Container(
//               width: double.infinity,
//               color: Colors.black,
//               child: SafeArea(
//                 child: Column(
//                   children: [
//                     Container(
//                       constraints: const BoxConstraints(maxWidth: 1232),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 100, vertical: 10),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: const [
//                               Text(
//                                 "shaa.me",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               SizedBox(
//                                 width: 40,
//                               ),
//                               Text(
//                                 "shaa.promotion",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               Spacer(),
//                               Text(
//                                 "get a free Listing",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               SizedBox(
//                                 width: 40,
//                               ),
//                               Text(
//                                 "Advertise",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Icon(
//                                 Icons.mail_outline,
//                                 size: 14,
//                                 color: Colors.white,
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Text(
//                                 "advertise@sahaa.me",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//
//                               // Spacer(),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//
//             ///================second bar
//             Container(
//               //width: double.infinity,
//               child: Column(
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 100,
//                     ),
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             SvgPicture.asset("icons/logo.svg"),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             const Expanded(
//                               child: TextField(
//                                 cursorColor: Colors.grey,
//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                         color: Colors.grey, width: 2),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                         color: Colors.grey, width: 2),
//                                   ),
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                         color: Colors.orange, width: 2),
//                                   ),
//                                   hintText:
//                                       'Business Name, Product Name or Service',
//                                   isDense: true,
//                                   // Added this
//                                   contentPadding:
//                                       EdgeInsets.all(12), // Added this
//                                 ),
//                               ),
//                             ),
//                             const Expanded(
//                               child: TextField(
//                                 cursorColor: Colors.grey,
//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                         color: Colors.grey, width: 2),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                         color: Colors.grey, width: 2),
//                                   ),
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                         color: Colors.orange, width: 2),
//                                   ),
//                                   hintText: 'Select city,Area',
//                                   isDense: true,
//                                   // Added this
//                                   contentPadding:
//                                       EdgeInsets.all(12), // Added this
//                                 ),
//                               ),
//                             ),
//
//                             ///=======================button
//                             Container(
//                               height: 34,
//                               width: 100,
//                               child: ElevatedButton(
//                                 onPressed: () {
//                                   print("SHah ooo");
//                                 },
//                                 child: const Text("Search"),
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.black, // background
//                                   onPrimary: Colors.white, // foreground
//                                 ),
//                               ),
//                             ),
//
//                             ///================ login
//                             const SizedBox(
//                               width: 25,
//                             ),
//                             const Icon(
//                               Icons.accessibility,
//                             ),
//                             const SizedBox(
//                               width: 2,
//                             ),
//
//                             const Text(
//                               'Login',
//                             ),
//                             const SizedBox(
//                               width: 4,
//                             ),
//                             const Icon(
//                               Icons.arrow_forward_ios,
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//
//             ///===============================divider line
//             const SizedBox(
//               height: 15,
//             ),
//             const Divider(
//               thickness: 5,
//               color: Colors.orange,
//             ),
//
//             ///======================= main content
//             ///first line
//             Container(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
//               child: const Text(
//                 "Home > Business > Seach > ",
//                 style: TextStyle(color: Colors.orange),
//               ),
//             ),
//
//             ///==========second line
//             Container(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
//               child: Row(
//                 children: [
//                   const Text("Did you mean a company call " "?"),
//                   const Spacer(),
//                   Container(
//                     child: DropdownButtonHideUnderline(
//                       child: DropdownButton2(
//                         isExpanded: true,
//                         hint: Row(
//                           children: const [
//                             Expanded(
//                               child: Text(
//                                 'Select Class',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         items: items
//                             .map((item) => DropdownMenuItem<String>(
//                                   value: item,
//                                   child: Text(
//                                     item,
//                                     style: const TextStyle(
//                                       fontSize: 14,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                 ))
//                             .toList(),
//                         value: selectedClass,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedClass = value as String;
//                           });
//                         },
//                         buttonHeight: 40,
//                         buttonWidth: 260,
//                         dropdownMaxHeight: 100,
//                         buttonPadding:
//                             const EdgeInsets.only(left: 14, right: 14),
//                         buttonDecoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(0),
//                           border: Border.all(
//                             color: Colors.black,
//                           ),
//                           color: Colors.white,
//                         ),
//                         itemPadding: const EdgeInsets.only(left: 14, right: 14),
//                         // dropdownWidth: 300,
//                         dropdownDecoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(0),
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             ///==========================divider line
//
//             const Divider(
//               endIndent: 100,
//               indent: 100,
//               height: 1,
//               color: Colors.black,
//             ),
//
//             ///===========================dive portions
//             Container(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ///============first side
//                   Expanded(
//                     child: Container(
//                       color: Colors.black,
//                       child: Card(
//                         elevation: 0,
//                         color: Colors.white,
//                         child: Column(
//                           children: [
//                             ///=============image
//                             Image.asset("images/0.png"),
//                             const SizedBox(
//                               height: 20,
//                             ),
//
//                             ///==============filter
//                             Row(
//                               children: const [
//                                 Icon(
//                                   Icons.filter_list,
//                                 ),
//                                 SizedBox(
//                                   width: 2,
//                                 ),
//                                 Text(
//                                   'Filter Result',
//                                 ),
//                               ],
//                             ),
//
//                             ///=============ExpansionPanel 1
//
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   //margin: const EdgeInsets.all(2),
//
//                                   child: ExpansionPanelList(
//                                     elevation: 0,
//                                     animationDuration:
//                                         const Duration(milliseconds: 2000),
//                                     children: [
//                                       ExpansionPanel(
//                                         headerBuilder: (context, isExpanded) {
//                                           return const ListTile(
//                                             leading: Text(
//                                               'Category',
//                                               style: TextStyle(
//                                                   color: Colors.black,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 14),
//                                             ),
//                                           );
//                                         },
//                                         body: ListTile(
//                                           title: Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children:  [
//                                               InkWell(
//                                                 hoverColor:Colors.white,
//                                                 onTap: () {},
//                                                 child:
//                                                 const Text(
//                                                   'Packaging & Shipping',
//                                                   style: TextStyle(
//                                                       color: Colors.black),
//                                                 ),
//                                               ),
//                                               const SizedBox(
//                                                 height: 10,
//                                               ),
//                                               InkWell(
//                                                 hoverColor:Colors.white,
//                                                 onTap: () {},
//                                                 child: const Text(
//                                                   'Travel & Tourism',
//                                                   style: TextStyle(
//                                                       color: Colors.black),
//                                                 ),
//                                               ),
//                                               const SizedBox(
//                                                 height: 10,
//                                               ),
//                                               InkWell(
//                                                 hoverColor:Colors.white,
//                                                 onTap: () {},
//                                                 child: const Text(
//                                                   'Hotel, Motel & Extended Stay',
//                                                   style: TextStyle(
//                                                       color: Colors.black),
//                                                 ),
//                                               ),
//                                               const SizedBox(
//                                                 height: 10,
//                                               ),
//                                               InkWell(
//                                                 hoverColor:Colors.white,
//                                                 onTap: () {},
//                                                 child: const Text(
//                                                   'Moving & Storage',
//                                                   style: TextStyle(
//                                                       color: Colors.black),
//                                                 ),
//                                               ),
//                                               const SizedBox(
//                                                 height: 10,
//                                               ),
//                                               InkWell(
//
//                                                 hoverColor:Colors.white,
//                                                 onTap: () {},
//                                                 child: const Text(
//                                                   'Transportation',
//                                                   style: TextStyle(
//                                                       color: Colors.black),
//                                                 ),
//                                               ),
//                                               const SizedBox(
//                                                 height: 10,
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         isExpanded: _expanded,
//                                         canTapOnHeader: true,
//                                       ),
//                                     ],
//                                     // dividerColor: Colors.grey,
//                                     expansionCallback:
//                                         (panelIndex, isExpanded) {
//                                       _expanded = !_expanded;
//                                       setState(() {});
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//
//                             ///================= ExpansionPanel 2
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   //margin: const EdgeInsets.all(2),
//
//                                   child: ExpansionPanelList(
//                                     elevation: 0,
//                                     animationDuration:
//                                     const Duration(milliseconds: 2000),
//                                     children: [
//                                       ExpansionPanel(
//                                         headerBuilder: (context, isExpanded) {
//                                           return const ListTile(
//                                             leading: Text(
//                                               'Ranking',
//                                               style: TextStyle(
//                                                   color: Colors.black,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 14),
//                                             ),
//                                           );
//                                         },
//                                         body: ListTile(
//                                           title: Column(
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children:  [
//                                             RatingBar.builder(
//                                             initialRating: 0,
//                                             minRating: 0,
//                                             direction: Axis.horizontal,
//                                             allowHalfRating: true,
//                                             itemSize: 30,
//                                             itemCount: 3,
//                                             //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                                             itemBuilder: (context, _) => const Icon(
//                                               Icons.star_border_purple500_sharp,
//                                               color: Colors.amber,
//                                             ),
//                                             onRatingUpdate: (rating) {
//                                               print(rating);
//                                             },
//                                           ),
//
//
//                                               const SizedBox(
//                                                 height: 10,
//                                               ),
//                                               RatingBar.builder(
//                                                 initialRating: 0,
//                                                 minRating: 0,
//                                                 direction: Axis.horizontal,
//                                                 allowHalfRating: true,
//                                                 itemSize: 30,
//                                                 itemCount: 2,
//                                                 //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                                                 itemBuilder: (context, _) => const Icon(
//                                                   Icons.star_border_purple500_sharp,
//                                                   color: Colors.amber,
//                                                 ),
//                                                 onRatingUpdate: (rating) {
//                                                   print(rating);
//                                                 },
//                                               ),
//                                               const SizedBox(
//                                                 height: 10,
//                                               ),
//                                               RatingBar.builder(
//                                                 initialRating: 0,
//                                                 minRating: 0,
//                                                 direction: Axis.horizontal,
//                                                 allowHalfRating: true,
//                                                 itemSize: 30,
//                                                 itemCount: 1,
//                                                 //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                                                 itemBuilder: (context, _) => const Icon(
//                                                   Icons.star_border_purple500_sharp,
//                                                   color: Colors.amber,
//                                                 ),
//                                                 onRatingUpdate: (rating) {
//                                                   print(rating);
//                                                 },
//                                               ),
//
//
//                                             ],
//                                           ),
//                                         ),
//                                         isExpanded: _expanded1,
//                                         canTapOnHeader: true,
//                                       ),
//                                     ],
//                                     // dividerColor: Colors.grey,
//                                     expansionCallback:
//                                         (panelIndex, isExpanded) {
//                                       _expanded1 = !_expanded1;
//                                       setState(() {});
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             ///=====================images
//                             Image.asset("images/bonus_1.png"),
//                             Image.asset("images/cashbacks.png"),
//                             Image.asset("images/discount_home.png"),
//
//
//
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//
//                   ///===========second side
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       color: Colors.red,
//                       height: 300,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
