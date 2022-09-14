import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';

import '../../../responsive.dart';
import 'dropdown_selectTime.dart';

class RequestCall extends StatelessWidget {
  const RequestCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return Container(
      padding: EdgeInsets.fromLTRB( Responsive.isMobile(context)? 20 : size.width/2.3, 20, 20, 30),
      width: Responsive.isDesktop(context) ? size.width / 1.2 : size.width / 1.04,
      decoration: BoxDecoration(
        color: sahaaColor.withOpacity(0.7),
        boxShadow: [
          BoxShadow(color: Colors.black26, spreadRadius: 2, blurRadius: 5),
      ],
      image:  DecorationImage(image: AssetImage('assets/image/form.png',), fit: BoxFit.cover, scale: 1, colorFilter: ColorFilter.mode(sahaaColor.withOpacity(0.8), BlendMode.srcATop),
      ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black54, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            SizedBox(height: 20,),
            Text('Request a Call', style: TextStyle(fontSize: 24, color: sahaaColor),),
            SizedBox(height: 20,),
            Text('Please fill the form below and we will call you back!', style: TextStyle(color: Colors.black87, fontSize: 14),),
            SizedBox(height: 20,),
            Text('Name:', style: TextStyle(color: Colors.black, fontSize: 14),),
            SizedBox(height: 20,),
            TextFormField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                focusColor: sahaaColor
              ),
            ),
            SizedBox(height: 20,),
            Text('Phone No:', style: TextStyle(color: Colors.black, fontSize: 14),),
            SizedBox(height: 20,),
            TextFormField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Type a phone',
                focusColor: sahaaColor
              ),
            ),
            SizedBox(height: 20,),
            DropdownSelectTime(),
            SizedBox(height: 20,),
            Text('Comment:', style: TextStyle(color: Colors.black, fontSize: 14),),
            SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              minLines: 1,
              maxLines: 5,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                print("SHah ooo");
              },
              style: ElevatedButton.styleFrom(

                  side: BorderSide.none,
                  foregroundColor: Colors.white,
                  backgroundColor: sahaaColor // foreground
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Send",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
