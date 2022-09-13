import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';
import '../../../model/mini_profile/company_overview.dart';
import '../../../responsive.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width:
          Responsive.isDesktop(context) ? size.width / 1.2 : size.width / 1.04  ,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black26, spreadRadius: 2, blurRadius: 5),
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Company Overview',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
         Responsive.isMobile(context)?
         Center(
           child: Container(
             width: size.width / 1.3,
             height: size.width / 2,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(color: sahaaColor, width: 1)),
             child: Center(
               child: IconButton(
                 color: sahaaColor,
                 onPressed: () {},
                 icon: Icon(
                   Icons.play_arrow_outlined,
                   size: 20,
                 ),
               ),
             ),
           ),
         ):
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width / 7.5,
                height: size.width / 7.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: sahaaColor, width: 1)),
                child: Center(
                  child: IconButton(
                    color: sahaaColor,
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow_outlined,
                      size: 20,
                    ),
                  ),
                ),
              ),
              CompanyOverviewTile(overviewImage: 'bridge',),
              CompanyOverviewTile(overviewImage: 'person-3',),
              CompanyOverviewTile(overviewImage: 'person-5',),
              CompanyOverviewTile(overviewImage: 'person-7',),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        Responsive.isDesktop(context)?
        IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///basic info
                Column(
                 children: [
                   Text(
                     'Company Overview',
                     style: TextStyle(
                         fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                   ),
                   SizedBox(height: 20,),
                   Text('N/A', style: TextStyle(fontSize: 13, color: Colors.black),),
                 ], 
                ),
                /// business hours
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width/7.5,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                          color: sahaaLightColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '4.9/',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: sahaaColor),
                                ),
                                TextSpan(
                                  text: '5',
                                  style: TextStyle(fontSize: 13, color: sahaaColor),
                                ),
                              ],
                            ),),
                            Text('0', style: TextStyle(fontSize: 13, color: sahaaColor),),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: sahaaColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text('Supplier Rank',style: TextStyle(fontSize: 13, color: Colors.white),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/image/star.png', height: 25,),
                                Image.asset('assets/image/star.png', height: 35,),
                                Image.asset('assets/image/star.png', height: 25,),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Business Hours',
                            style: TextStyle(
                                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Table(
                            defaultColumnWidth: FixedColumnWidth(size.width/7),
                            children: [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('Monday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                ]
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('Tuesday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                ]
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('Wednesday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                ]
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('Thursday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                ]
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('Friday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                ]
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('Saturday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                ]
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('Sunday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                                  ),
                                ]
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ):
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///basic info
            Text(
              'Company Overview',
              style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            SizedBox(
                height: 200,
                child: SingleChildScrollView(child: Text('N/A', style: TextStyle(fontSize: 13, color: Colors.black),))),
            /// business hours
             SizedBox(height: 30,),
            Container(
              width: size.width/1.2,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: sahaaLightColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: '4.9/',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: sahaaColor),
                      ),
                      TextSpan(
                        text: '5',
                        style: TextStyle(fontSize: 13, color: sahaaColor),
                      ),
                    ],
                  ),),
                  Text('0', style: TextStyle(fontSize: 13, color: sahaaColor),),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: sahaaColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text('Supplier Rank',style: TextStyle(fontSize: 13, color: Colors.white),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/image/star.png', height: 25,),
                      Image.asset('assets/image/star.png', height: 35,),
                      Image.asset('assets/image/star.png', height: 25,),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 10,),
            Text(
              'Business Hours',
              style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Table(
              defaultColumnWidth: FixedColumnWidth(size.width/3),
              children: [
                TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Monday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Tuesday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Wednesday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Thursday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Friday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Saturday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Sunday',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('9:00 am - 5:00 pm',style: TextStyle(fontSize: 12, color: Colors.black87),),
                      ),
                    ]
                ),
              ],
            ),
          ],
        ),
        ],
      ),
    );
  }
}
