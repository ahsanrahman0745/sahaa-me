import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../model/landing/explore_model.dart';
import '../../../utils/constants.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'One-Stop Solution For All Your Problems',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Explore the Sahaa Market',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Row(
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
                Row(
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
              ],
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
                children: [
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
