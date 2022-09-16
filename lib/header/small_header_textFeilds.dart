 import 'package:flutter/material.dart';

class SmallHeaderTextFeilds extends StatelessWidget {
  const SmallHeaderTextFeilds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width/1.2,
          child: Column(
            children: [
              ///=======================first text field
              const TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                  hintText: 'Business Name, Product Name or Service',
                  isDense: true,
                  // Added this
                  contentPadding: EdgeInsets.all(12), // Added this
                ),
              ),

              ///=======================second text field
              const SizedBox(
                height: 10,
              ),
              const TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                  hintText: 'Select City, Area',
                  isDense: true,
                  // Added this
                  contentPadding: EdgeInsets.all(12), // Added this
                ),
              ),

              ///=======================button
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("SHah ooo");
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.black, // foreground
                  ),
                  child: const Text("Search"),
                ),
              ),
            ],
          ),
        ),

        ///=============divider line
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.orange,
          thickness: 5,
        ),
      ],
    );
  }
}
