import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
class DropdownSelectBusiness extends StatefulWidget {
  const DropdownSelectBusiness({Key? key}) : super(key: key);

  @override
  State<DropdownSelectBusiness> createState() => _DropdownSelectBusinessState();
}

class _DropdownSelectBusinessState extends State<DropdownSelectBusiness> {
  String? selectedClass;
  List<String> items = [
    'AutoMotive ',
    'Business Support and supplies',
    'Computers & Electronics',
    'Construction & Contractors',
    'Education',
    'Entertainment',
    'Food & Dining',
    'Health & Medicine',
    'Legal & Financial',
    'Manufacturing, Wholesale,Distribution',
    'Merchants (Retail)',
    'Personal Care & Services',
    'Real Estate',
    'Travel & Transportation',
    'Miscellaneous',
    'Home & Garden ',
  ];

  @override

  Widget build(BuildContext context) {
    return  DropdownButtonHideUnderline(
      child: DropdownButton2(

        isExpanded: true,
        hint: Row(
          children:  [
            Text(
              'Select Available Time:',
              style: MyTextStyles.regularGrey,
            ),
          ],
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style:  MyTextStyles.regularGrey,
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
        dropdownMaxHeight: 200,
        buttonPadding:
        const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black12,
          ),
          color: sahaaLightColor,
        ),
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        // dropdownWidth: 300,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: sahaaLightColor,
        ),
      ),
    );
  }
}
