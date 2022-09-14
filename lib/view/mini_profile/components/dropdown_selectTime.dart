import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
class DropdownSelectTime extends StatefulWidget {
  const DropdownSelectTime({Key? key}) : super(key: key);

  @override
  State<DropdownSelectTime> createState() => _DropdownSelectTimeState();
}

class _DropdownSelectTimeState extends State<DropdownSelectTime> {
  String? selectedClass;
  List<String> items = [
    '9:00 am',
    '10:00 am',
    '11:00 am',
    '12:00 pm',
    '01:00 pm',
    '02:00 pm',
    '03:00 pm',
    '04:00 pm',
    '05:00 pm',
    '06:00 pm',
    '07:00 pm',
  ];

  @override

  Widget build(BuildContext context) {
    return  DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: const [
            Expanded(
              child: Text(
                'Select Available Time:',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ))
            .toList(),
        value: selectedClass,
        onChanged: (value) {
          setState(() {
            selectedClass = value as String;
          });
        },
        buttonHeight: 40,
        // buttonWidth: 260,
        dropdownMaxHeight: 150,
        buttonPadding:
        const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          border: Border.all(
            color: Colors.black,
          ),
          color: Colors.white,
        ),
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        // dropdownWidth: 300,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Colors.white,
        ),
      ),
    );
  }
}
