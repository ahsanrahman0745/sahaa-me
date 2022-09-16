import 'package:flutter/material.dart';
import 'package:sahaame/responsive.dart';

import '../../../utils/constants.dart';
import 'dropdown_select_business.dart';
import 'form_field.dart';

class ListingBody extends StatelessWidget {
  const ListingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List grow = [
      'Add your business to the 3 million.',
      'Listings already available on sahaa.me.',
      'The top leading online business directory.'
    ];
    List enhance = [
      'Update your FREE business profile',
      'Page with photos, contact details, opening times, payment methods.',
      'Customer reviews and more.'
    ];

    List visible = [
      'Get your business details distributed across the Sahaa network.',
      'Which includes Apple, Microsoft (Bing, Yahoo & AOL) and Amazon Alexa3'
    ];

    return Container(
      width:
          Responsive.isMobile(context) ? size.width / 1.04 : size.width / 1.2,
      padding: EdgeInsets.only(top: 80),
      child: Center(
        child: Responsive.isDesktop(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// why sahaa
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Why Sahaa?',
                        style: MyTextStyles.headingSmallSahaa,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Grow your customers',
                          style: MyTextStyles.headingxSmallBoldBlack,
                        ),
                      ),
                      SizedBox(
                        // height: 150,
                        width: size.width / 5,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: grow.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (c, i) {
                              return Text(
                                '•  ${grow[i]}',
                                style: MyTextStyles.regularBlack,
                              );
                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Enhance your listing',
                          style: MyTextStyles.headingxSmallBoldBlack,
                        ),
                      ),
                      SizedBox(
                        // height: 150,
                        width: size.width / 5,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: enhance.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (c, i) {
                              return Text(
                                '•  ${enhance[i]}',
                                style: MyTextStyles.regularBlack,
                              );
                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Be visible Online!',
                          style: MyTextStyles.headingxSmallBoldBlack,
                        ),
                      ),
                      SizedBox(
                        // height: 150,
                        width: size.width / 5,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: visible.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (c, i) {
                              return Text(
                                '•  ${visible[i]}',
                                style: MyTextStyles.regularBlack,
                              );
                            }),
                      ),
                    ],
                  ),

                  ///Add your free business listing
                  SizedBox(
                    width: size.width / 1.95,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Add your free business listing to Sahaa.me',
                              style: MyTextStyles.sectionTitleSmallSahaa,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                FormTextField(
                                  hintText: 'First Name',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FormTextField(
                                  hintText: 'Last Name',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FormTextField(
                                  hintText: 'Email Address',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FormTextField(
                                  hintText: 'Business Phone Number',
                                  icon: Icon(Icons.flag),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FormTextField(
                                  hintText: 'Business Name',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                    width: size.width / 4,
                                    child: DropdownSelectBusiness()),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                constraints: BoxConstraints(
                                  maxWidth: size.width / 1.97,
                                  maxHeight: 40,
                                ),
                                hintText: 'Business Location',
                                hintStyle: MyTextStyles.regularGrey,
                                fillColor: sahaaLightColor,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.black12,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: sahaaColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'By populating these fields you are: i) consenting for this information to be published; and ii) sharing your contact details with Sahaa Limited. We may contact you in accordance with our Privacy Policy.',
                              style: MyTextStyles.regularBlack,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print("SHah ooo");
                          },
                          style: ElevatedButton.styleFrom(
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 25),
                            foregroundColor: Colors.white,
                            backgroundColor: sahaaColor, // foreground
                          ),
                          child: const Text("Continue"),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add your free business listing to Sahaa.me',
                        style: MyTextStyles.sectionTitleSmallSahaa,
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Why Sahaa?',
                        style: MyTextStyles.headingSmallSahaa,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Grow your customers',
                          style: MyTextStyles.headingxSmallBoldBlack,
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: grow.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (c, i) {
                            return Text(
                              '•  ${grow[i]}',
                              style: MyTextStyles.regularBlack,
                            );
                          }),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Enhance your listing',
                          style: MyTextStyles.headingxSmallBoldBlack,
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: enhance.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (c, i) {
                            return Text(
                              '•  ${enhance[i]}',
                              style: MyTextStyles.regularBlack,
                            );
                          }),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Be visible Online!',
                          style: MyTextStyles.headingxSmallBoldBlack,
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: visible.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (c, i) {
                            return Text(
                              '•  ${visible[i]}',
                              style: MyTextStyles.regularBlack,
                            );
                          }),
                      SizedBox(
                        height: 60,
                      ),

                    ],
                  ),
                  FormTextField(
                    hintText: 'First Name',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormTextField(
                    hintText: 'Last Name',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormTextField(
                    hintText: 'Email Address',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormTextField(
                    hintText: 'Business Phone Number',
                    icon: Icon(Icons.flag),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormTextField(
                    hintText: 'Business Name',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: size.width / 1.2,
                      child: DropdownSelectBusiness()),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      constraints: BoxConstraints(
                        maxWidth: size.width / 1.2,
                        maxHeight: 40,
                      ),
                      hintText: 'Business Location',
                      hintStyle: MyTextStyles.regularGrey,
                      fillColor: sahaaLightColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.black12,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: sahaaColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width/1.2,
                    child: Text(
                      'By populating these fields you are: i) consenting for this information to be published; and ii) sharing your contact details with Sahaa Limited. We may contact you in accordance with our Privacy Policy.',
                      style: MyTextStyles.regularBlack,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    width: size.width/1.2,
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        ElevatedButton(
                          onPressed: () {
                            print("SHah ooo");
                          },
                          style: ElevatedButton.styleFrom(
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 25),
                            foregroundColor: Colors.white,
                            backgroundColor: sahaaColor, // foreground
                          ),
                          child: const Text("Continue"),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
      ),
    );
  }
}
