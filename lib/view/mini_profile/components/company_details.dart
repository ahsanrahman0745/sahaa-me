import 'package:flutter/material.dart';
import 'package:sahaame/utils/constants.dart';
import 'package:sahaame/view/mini_profile/components/services_item.dart';
import 'package:sahaame/view/mini_profile/components/table_detail.dart';
import 'package:sahaame/view/mini_profile/components/table_heading.dart';
import 'company_overview.dart';
import '../../../responsive.dart';
import 'day.dart';
import 'office_hours.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width:
          Responsive.isDesktop(context) ? size.width / 1.2 : size.width / 1.04,
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
          Responsive.isMobile(context)
              ? Center(
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
                )
              : Row(
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
                    CompanyOverviewTile(
                      overviewImage: 'bridge',
                    ),
                    CompanyOverviewTile(
                      overviewImage: 'person-3',
                    ),
                    CompanyOverviewTile(
                      overviewImage: 'person-5',
                    ),
                    CompanyOverviewTile(
                      overviewImage: 'person-7',
                    ),
                  ],
                ),
          SizedBox(
            height: 40,
          ),
          ///basic info / bussiness hours
          Responsive.isDesktop(context)
              ? IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ///basic info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Company Overview',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'N/A',
                              style: TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ],
                        ),
                      ),

                      /// business hours
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              decoration: BoxDecoration(
                                color: sahaaLightColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '4.9/',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: sahaaColor),
                                        ),
                                        TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                              fontSize: 13, color: sahaaColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: 13, color: sahaaColor),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: sahaaColor,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text(
                                      'Supplier Rank',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/image/star.png',
                                        height: 25,
                                      ),
                                      Image.asset(
                                        'assets/image/star.png',
                                        height: 35,
                                      ),
                                      Image.asset(
                                        'assets/image/star.png',
                                        height: 25,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Business Hours',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Table(
                                  defaultColumnWidth: FixedColumnWidth(size.width / 9),
                                  children: [
                                    TableRow(children: [
                                      Day(day: 'Monday',),
                                      OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                                    ]),
                                    TableRow(children: [
                                      Day(day: 'Tuesday',),
                                      OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                                    ]),
                                    TableRow(children: [
                                      Day(day: 'Wednesday',),
                                      OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                                    ]),
                                    TableRow(children: [
                                      Day(day: 'Thursday',),
                                      OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                                    ]),
                                    TableRow(children: [
                                      Day(day: 'Friday',),
                                      OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                                    ]),
                                    TableRow(children: [
                                      Day(day: 'Satruday',),
                                      OfficeHours(officeHours: '12:00 am - 12:00 am',),
                                    ]),
                                    TableRow(children: [
                                      Day(day: 'Sunday',),
                                      OfficeHours(officeHours: '12:00 am - 12:00 am',),
                                    ]),

                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///basic info
                    Text(
                      'Company Overview',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 200,
                        child: SingleChildScrollView(
                            child: Text(
                          'N/A',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ))),

                    /// business hours
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: size.width / 1.1,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        color: sahaaLightColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '4.9/',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: sahaaColor),
                                ),
                                TextSpan(
                                  text: '5',
                                  style: TextStyle(
                                      fontSize: 13, color: sahaaColor),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '0',
                            style: TextStyle(fontSize: 13, color: sahaaColor),
                          ),
                          Container(
                            width: Responsive.isDesktop(context)
                                ? null
                                : size.width / 1.1,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: sahaaColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              'Supplier Rank',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/image/star.png',
                                height: 25,
                              ),
                              Image.asset(
                                'assets/image/star.png',
                                height: 35,
                              ),
                              Image.asset(
                                'assets/image/star.png',
                                height: 25,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Business Hours',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Table(
                      defaultColumnWidth: FixedColumnWidth(size.width / 2.2),
                      children: [
                        TableRow(children: [
                          Day(day: 'Monday',),
                          OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                        ]),
                        TableRow(children: [
                          Day(day: 'Tuesday',),
                          OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                        ]),
                        TableRow(children: [
                          Day(day: 'Wednesday',),
                          OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                        ]),
                        TableRow(children: [
                          Day(day: 'Thursday',),
                          OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                        ]),
                        TableRow(children: [
                          Day(day: 'Friday',),
                          OfficeHours(officeHours: '9:00 am - 5:00 pm',),
                        ]),
                        TableRow(children: [
                          Day(day: 'Satruday',),
                          OfficeHours(officeHours: '12:00 am - 12:00 am',),
                        ]),
                        TableRow(children: [
                          Day(day: 'Sunday',),
                          OfficeHours(officeHours: '12:00 am - 12:00 am',),
                        ]),

                      ],
                    ),
                  ],
                ),
          SizedBox(
            height: 40,
          ),
          ///big info table
         Responsive.isDesktop(context)?
         Row(
            children: [
              Expanded(
                // width: size.width/2.65,
                child: Table(
                  border: TableBorder.symmetric(inside: BorderSide(width: 2, color: sahaaLightColor), outside: BorderSide(color: sahaaLightColor, width: 2)),
                  columnWidths: {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(2.5),
                  },
                  children: [
                    TableRow(
                        children: [
                          TableHeading(tableheading: 'Business Type',),
                          TableDetail(tableDetail: 'Management Consultancy',),
                        ]
                    ),
                    TableRow(
                        children: [
                          TableHeading(tableheading: 'Business Type',),
                          TableDetail(tableDetail: 'Management Consultancy',),
                        ]
                    ),
                    TableRow(
                        children: [
                          TableHeading(tableheading: 'Business Type',),
                          TableDetail(tableDetail: 'Management Consultancy',),
                        ]
                    ),
                    TableRow(
                        children: [
                          TableHeading(tableheading: 'Business Type',),
                          TableDetail(tableDetail: 'Management Consultancy',),
                        ]
                    ),
                    TableRow(
                        children: [
                          TableHeading(tableheading: 'Leadership',),
                          TableDetail(tableDetail: 'Patrick Mensah',),
                        ]
                    ),
                  ],
                ),
              ),
              Expanded(
                // width: size.width/2.65,
                child: Table(
                  border: TableBorder.symmetric(inside: BorderSide(width: 2, color: sahaaLightColor), outside: BorderSide(color: sahaaLightColor, width: 2)),
                  columnWidths: {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(2.5),
                  },
                  children: [
                    TableRow(
                      children: [
                       TableHeading(tableheading: 'Business Type',),
                        TableDetail(tableDetail: 'Management Consultancy',),
                      ]
                    ),
                    TableRow(
                      children: [
                       TableHeading(tableheading: 'Business Type',),
                        TableDetail(tableDetail: 'Management Consultancy',),
                      ]
                    ),
                    TableRow(
                      children: [
                       TableHeading(tableheading: 'Business Type',),
                        TableDetail(tableDetail: 'Management Consultancy',),
                      ]
                    ),
                    TableRow(
                      children: [
                       TableHeading(tableheading: 'Business Type',),
                        TableDetail(tableDetail: 'Management Consultancy',),
                      ]
                    ),
                    TableRow(
                      children: [
                       TableHeading(tableheading: 'Leadership',),
                        TableDetail(tableDetail: 'Patrick Mensah',),
                      ]
                    ),
                  ],
                ),
              ),
            ],
          ) :
         Column(
           children: [
             Table(
               border: TableBorder.symmetric(inside: BorderSide(width: 2, color: sahaaLightColor), outside: BorderSide(color: sahaaLightColor, width: 2)),
               columnWidths: {
                 0: FlexColumnWidth(1),
                 1: FlexColumnWidth(2.5),
               },
               children: [
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Business Type',),
                       TableDetail(tableDetail: 'Management Consultancy',),
                     ]
                 ),
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Business Type',),
                       TableDetail(tableDetail: 'Management Consultancy',),
                     ]
                 ),
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Business Type',),
                       TableDetail(tableDetail: 'Management Consultancy',),
                     ]
                 ),
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Business Type',),
                       TableDetail(tableDetail: 'Management Consultancy',),
                     ]
                 ),
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Leadership',),
                       TableDetail(tableDetail: 'Patrick Mensah',),
                     ]
                 ),
               ],
             ),
             Table(
               border: TableBorder.symmetric(inside: BorderSide(width: 2, color: sahaaLightColor), outside: BorderSide(color: sahaaLightColor, width: 2)),
               columnWidths: {
                 0: FlexColumnWidth(1),
                 1: FlexColumnWidth(2.5),
               },
               children: [
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Business Type',),
                       TableDetail(tableDetail: 'Management Consultancy',),
                     ]
                 ),
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Business Type',),
                       TableDetail(tableDetail: 'Management Consultancy',),
                     ]
                 ),
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Business Type',),
                       TableDetail(tableDetail: 'Management Consultancy',),
                     ]
                 ),
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Business Type',),
                       TableDetail(tableDetail: 'Management Consultancy',),
                     ]
                 ),
                 TableRow(
                     children: [
                       TableHeading(tableheading: 'Leadership',),
                       TableDetail(tableDetail: 'Patrick Mensah',),
                     ]
                 ),
               ],
             ),
           ],
         ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Company Services',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 40,
            runSpacing: 20,
            children: [
              ServicesItem(item: 'Immigration Services',),
              ServicesItem(item: 'Immigration Services',),
              ServicesItem(item: 'Account and Tax Services',),
              ServicesItem(item: 'Business Management and Consultancy Services',),
              ServicesItem(item: 'Banking services',),
              ServicesItem(item: 'Metaverse Services',),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
