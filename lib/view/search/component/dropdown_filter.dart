import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
class DropdownFilter extends StatefulWidget {
  const DropdownFilter({Key? key}) : super(key: key);

  @override
  State<DropdownFilter> createState() => _DropdownFilterState();
}

class _DropdownFilterState extends State<DropdownFilter> {
  String? selectedClass;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  @override

  Widget build(BuildContext context) {
    return
      DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: const [
            Expanded(
              child: Text(
                'Select Class',
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
        buttonWidth: 260,
        dropdownMaxHeight: 100,
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
