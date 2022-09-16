// ignore_for_file: prefer_const_constructors
import 'package:sahaame/utils/constants.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

import'package:flutter/material.dart';

import '../../../responsive.dart';



class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  static const _images = [
    'assets/image/slider_3.jpg',
    'assets/image/slider_3.jpg',
    'assets/image/slider_3.jpg',
    'assets/image/slider_3.jpg',
  ];

  @override
  void initState() {
    // this.precache();
    super.initState();
    // Future.delayed(Duration.zero, this.precache());
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        SizedBox(
          // height: 610,
          child: CustomScrollView(
            shrinkWrap: true,
            physics:  ClampingScrollPhysics(),
            slivers: [
              ///Indicator
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 600,
                  child: ScrollPageView(
                    controller: ScrollPageController(),
                    delay: const Duration(seconds: 3),
                    indicatorRadius: 12,
                    indicatorAlign: Alignment.centerRight,
                    checkedIndicatorColor: sahaaColor,
                    indicatorPadding: EdgeInsets.only(right: MediaQuery.of(context).size.width/11),
                    children: (_images.reversed)
                        .map((image) {
                          return _imageView(image);
                        })
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Container(
        //   height: Responsive.isMobile(context)? 500:  600,
        //   width: MediaQuery.of(context).size.width,
        //   decoration: BoxDecoration(
        //     color: Colors.black87,
        //   ),
        // ),
      ],
    );
  }

  ///Image
  Widget _imageView(String image) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black87.withOpacity(0.9), BlendMode.srcATop),),
      ),
    );
  }


}
