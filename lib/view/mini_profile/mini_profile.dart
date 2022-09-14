// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sahaame/header/headers.dart';
import '../../header/appbar.dart';
import '../../responsive.dart';
import 'components/card.dart';
import 'components/company_details.dart';

class MiniProfile extends StatefulWidget {
  const MiniProfile({Key? key}) : super(key: key);

  @override
  State<MiniProfile> createState() => _MiniProfileState();
}

class _MiniProfileState extends State<MiniProfile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Responsive.isMobile(context)? CustomAppBar():
            Header(),
            SizedBox(height: 30,),
            MiniCard(),
            SizedBox(height: 30,),
            CompanyDetails(),
          ],
        ),
      ),
    );
  }
}
