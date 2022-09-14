import 'package:flutter/material.dart';

class OfficeHours extends StatelessWidget {
  const OfficeHours({Key? key, required this.officeHours}) : super(key: key);
 final String officeHours;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10),
      child: Text(
        officeHours,
        style: TextStyle(
            fontSize: 12,
            color: Colors.black87),
      ),
    );
  }
}
