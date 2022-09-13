import 'package:flutter/material.dart';

class CompanyOverviewTile extends StatelessWidget {
  const CompanyOverviewTile({Key? key, required this.overviewImage}) : super(key: key);

  final String overviewImage;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 7.5,
      height: size.width / 7.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage('assets/image/overview/$overviewImage.jpg'),fit: BoxFit.cover),
      ),

    );
  }
}
