import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';
import 'custom_wave_cliper_one.dart';

Widget slider(context, {images}) {
  return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (c, i, r) {
            return SizedBox(
              child: ClipPath(
                clipper: CustomWaveClipperOne(flip: true),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                        width: double.infinity,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset('assets/image/slider1.jpg'),
                        )),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: darkColor.withOpacity(0.8),
                    ),
                  ],
                ),
              ),
            );
          },
          options: CarouselOptions(
              // height: 400,
              viewportFraction: 1,
              autoPlay: true,
              reverse: true)));
}
