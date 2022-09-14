import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/radix_icons.dart';


class ServicesItem extends StatelessWidget {
  const ServicesItem({Key? key, required this.item}) : super(key: key);
 final String item;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Iconify(RadixIcons.dot_filled, color: Colors.black87,),
        SizedBox(width: 10,),
        Flexible(child: Text(item, style: TextStyle(fontSize: 14, color: Colors.black87), overflow: TextOverflow.visible,)),// widget
      ],
    );
  }
}
