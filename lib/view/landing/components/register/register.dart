import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/view/widgets/filled_btn.dart';

Widget register({required BuildContext context}) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset('assets/image/registerbanner.jpg'),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Register to the Sahaa Family',
            style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color: lightColor),
          ),
          h15,
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Text(
              'Register and become a partner with Sahaa to open a plethora box of benefits and opportunities',
              style: TextStyle(color: lightColor, fontSize: 18, height: 1.2),
            ),
          ),
          h30,
          filledBtn(title: 'BECOME A PARTNER', align: MainAxisAlignment.start)
        ],
      )
    ],
  );
}
