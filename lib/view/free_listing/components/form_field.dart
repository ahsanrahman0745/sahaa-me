import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../../utils/constants.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({Key? key, required this.hintText, this.icon})
      : super(key: key);
  final String hintText;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        prefixIcon: icon,
        filled: true,
        constraints: BoxConstraints(
          maxWidth: Responsive.isDesktop(context)? size.width / 4 : size.width/1.2,
          maxHeight: 40,
        ),
        hintText: hintText,
        hintStyle: MyTextStyles.regularGrey,
        fillColor: sahaaLightColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.black12,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: sahaaColor,
          ),
        ),
      ),
    );
  }
}
