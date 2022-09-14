import 'package:flutter/material.dart';

class Day extends StatelessWidget {
  const Day({Key? key, required this.day}) : super(key: key);
final String day;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10),
      child: Text(
        day,
        style: TextStyle(
            fontSize: 12,
            color: Colors.black87),
      ),
    );
  }
}
