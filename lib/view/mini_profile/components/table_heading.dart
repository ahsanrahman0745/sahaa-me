import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class TableHeading extends StatelessWidget {
  const TableHeading({Key? key, required this.tableheading}) : super(key: key);
  final String tableheading;
  @override
  Widget build(BuildContext context) {

    return  Container(
      color: sahaaLightColor,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Text(tableheading, style: TextStyle(fontSize: 14),),
    );
  }
}
