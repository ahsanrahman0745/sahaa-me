import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({Key? key, required this.text, required this.image}) : super(key: key);
final String text , image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          SvgPicture.asset(image ,width: 100,),
          const SizedBox(height: 15,),
          Text(text, style: const TextStyle( fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
        ],
      ),
    );
  }
}
