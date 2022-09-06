import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageCrosual extends StatefulWidget {
  const ImageCrosual({Key? key}) : super(key: key);

  @override
  State<ImageCrosual> createState() => _ImageCrosualState();
}

class _ImageCrosualState extends State<ImageCrosual> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        disableCenter: false,
      ),
      items: choices
          .map((Choice) => Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              Choice.title,
                              style: null,
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              Choice.content,
                              style: null,
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              Choice.title,
                              style: null,
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              Choice.content,
                              style: null,
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                color: Colors.green,
              ))
          .toList(),
    ));
  }
}

class Choice {
  const Choice({required this.title, required this.content});

  final String title;

  final String content;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'title : 1', content: 'content : 1'),
  const Choice(title: 'title : 2', content: 'content : 2'),
  const Choice(title: 'title : 3', content: 'content : 3'),
  const Choice(title: 'title : 4', content: 'content : 4'),
];
