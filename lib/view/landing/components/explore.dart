import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../model/landing/explore_model.dart';
import '../../../responsive.dart';
import '../../../utils/constants.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: Responsive.isMobile(context)? size.width/1.04 : size.width/1.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text(
            'One-Stop Solution For All Your Problems',
            style: MyTextStyles.headingxSmallGrey,
          ),
          const SizedBox(
            height: 20,
          ),
           Text(
            'Explore the Sahaa Market',
            style: Responsive.isMobile(context)?  MyTextStyles.SectionTitleSmallBlack: MyTextStyles.SectionTitleLargeBlack,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Responsive.isDesktop(context)?
            Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ExploreItem(
                        text: 'Automotive',
                        image: 'assets/svg/explore/Automotive.svg',
                      ),
                      ExploreItem(
                        text: 'Cleaning',
                        image: 'assets/svg/explore/Cleaning.svg',
                      ),
                      ExploreItem(
                        text: 'Gym',
                        image: 'assets/svg/explore/Fitness.svg',
                      ),
                      ExploreItem(
                        text: 'Movers',
                        image: 'assets/svg/explore/Movers.svg',
                      ),
                      ExploreItem(
                        text: 'Finance',
                        image: 'assets/svg/explore/Finance.svg',
                      ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ExploreItem(
                        text: 'Electrician',
                        image: 'assets/svg/explore/Electrician.svg',
                      ),
                      ExploreItem(
                        text: 'Mobile Repair',
                        image: 'assets/svg/explore/mobile-repair.svg',
                      ),
                      ExploreItem(
                        text: 'Laundary',
                        image: 'assets/svg/explore/Laundry.svg',
                      ),
                      ExploreItem(
                        text: 'Landscaping',
                        image: 'assets/svg/explore/Landscaping.svg',
                      ),
                      ExploreItem(
                        text: 'Health',
                        image: 'assets/svg/explore/Health.svg',
                      ),
                    ],
                  ),
                ),
              ],
            )
            :
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: const [
                  ExploreItem(
                    text: 'Automotive',
                    image: 'assets/svg/explore/Automotive.svg',
                  ),
                  ExploreItem(
                    text: 'Cleaning',
                    image: 'assets/svg/explore/Cleaning.svg',
                  ),
                  ExploreItem(
                    text: 'Gym',
                    image: 'assets/svg/explore/Fitness.svg',
                  ),
                  ExploreItem(
                    text: 'Movers',
                    image: 'assets/svg/explore/Movers.svg',
                  ),
                  ExploreItem(
                    text: 'Finance',
                    image: 'assets/svg/explore/Finance.svg',
                  ),
                  ExploreItem(
                    text: 'Electrician',
                    image: 'assets/svg/explore/Electrician.svg',
                  ),
                  ExploreItem(
                    text: 'Mobile Repair',
                    image: 'assets/svg/explore/mobile-repair.svg',
                  ),
                  ExploreItem(
                    text: 'Laundary',
                    image: 'assets/svg/explore/Laundry.svg',
                  ),
                  ExploreItem(
                    text: 'Landscaping',
                    image: 'assets/svg/explore/Landscaping.svg',
                  ),
                  ExploreItem(
                    text: 'Health',
                    image: 'assets/svg/explore/Health.svg',
                  )
                ]

              ),
            ),
          ),
          SizedBox(
            width: 150,
            child: OutlinedButton(
              onPressed: () {},

              style: OutlinedButton.styleFrom(
                side: BorderSide(color: sahaaColor),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'See More',
                    style: TextStyle(
                        fontSize: 14, color: sahaaColor),
                  ),
                  Icon(Icons.arrow_circle_right, color: sahaaColor, size: 18,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
