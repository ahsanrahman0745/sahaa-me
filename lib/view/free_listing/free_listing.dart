// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sahaame/header/headers.dart';
import '../../footer/footer.dart';
import '../../header/appbar.dart';
import '../../header/small_header_textFeilds.dart';
import '../../responsive.dart';
import 'components/listing_body.dart';

class FreeListing extends StatefulWidget {
  const FreeListing({Key? key}) : super(key: key);

  @override
  State<FreeListing> createState() => _FreeListingState();
}

class _FreeListingState extends State<FreeListing> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Responsive.isMobile(context)? CustomAppBar():
            Header(headerValue: true,),
            Responsive.isMobile(context)? SmallHeaderTextFeilds() : SizedBox(),
            ListingBody(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
