// ignore_for_file: prefer_const_constructors

import'package:flutter/material.dart';



class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                'assets/image/slider_3.jpg',),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
