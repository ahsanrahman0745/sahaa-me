// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class TableDetail extends StatelessWidget {
  const TableDetail({Key? key, required this.tableDetail}) : super(key: key);
  final String tableDetail;
  @override
  Widget build(BuildContext context) {

    return  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border(top: BorderSide(color: Colors.black26, width: 1,), bottom:BorderSide(color: Colors.black26, width: 1,) ),
      ),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Text(tableDetail, style: TextStyle(fontSize: 12),),
    );
  }
}
