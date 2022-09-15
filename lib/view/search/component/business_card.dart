import 'package:flutter/material.dart';

import '../../../responsive.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10 ),

      child:
      Card(
        color: const Color(0xffFBEEDE),
        // color: Colors.green,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(
              height: 30,
            ),
            const Center(
                child: Text(
              "Business not here?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Is the business you’re looking for not listed? Tell us \n what we’re missing..',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            ///===================button
            const SizedBox(height: 10,),
            Center(
              child: SizedBox(
                height: 50,
                width: 153,
                child: Card(
                  shape:  RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.orange,
                      width: 1.0,
                    ),
                   borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<
                          OutlinedBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          )),
                      backgroundColor: MaterialStateProperty
                          .resolveWith<Color?>(
                            (states) {
                          if (states
                              .contains(MaterialState.hovered)) {
                            return Colors.white;
                          }
                          return Colors.orange;
                        },
                      ),
                      foregroundColor: MaterialStateProperty
                          .resolveWith<Color?>((states) {
                        if (states
                            .contains(MaterialState.hovered)) {
                          return Colors.orange;
                        }
                        return Colors.white;
                      }),
                    ),
                    onPressed: () {
                      print("Business button");
                    },
                    child: const Text('Add a business'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),

          ],
        ),
      ),
     );
  }
}
