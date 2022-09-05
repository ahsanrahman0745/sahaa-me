import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: secondaryColors),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Row(
            children: [
              const Text(
                'See More',
                style: TextStyle(
                    color: secondaryColors,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              w15,
              Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: secondaryColors,
                      border: Border.all(width: 1, color: secondaryColors),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                    color: lightColor,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
