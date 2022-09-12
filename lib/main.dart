import 'package:flutter/material.dart';
import 'package:sahaame/view/landing/landing_view.dart';
import 'package:sahaame/view/search/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sahaa',
      theme: ThemeData(
        primaryColor: const Color(0xffe86e24),
      ),
      home: const LandingView(),
    );
  }
}

