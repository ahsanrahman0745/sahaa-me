import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sahaame/utils/constants.dart';
import '../../../responsive.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/registerbanner.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobile(context) ? 10 : 100,
                vertical: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Register to the Sahaa Family',
                  style: TextStyle(
                      fontSize: Responsive.isMobile(context) ? 24 : 36,
                      fontWeight: FontWeight.bold,
                      color: lightColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Register and become a partner with Sahaa to open a plethora box of benefits and opportunities',
                  style:
                      TextStyle(color: lightColor, fontSize: 18, height: 1.2),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("SHah ooo");
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide.none,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    foregroundColor: Colors.white,
                    backgroundColor: sahaaColor, // foreground
                  ),
                  child: const Text(
                    "Become a Partener",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
