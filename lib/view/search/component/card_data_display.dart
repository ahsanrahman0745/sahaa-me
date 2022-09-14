import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/blog_data.dart';

class CardDisplay extends StatelessWidget {
  final CardData blog;

  const CardDisplay({
    Key? key,
    required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(


          crossAxisAlignment: CrossAxisAlignment.start,
          children:
            ///=======================
            ///========================================
          [
            Card(
              elevation: 8,
              shadowColor: Colors.black,
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///==================first column
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.black,
                            child: Image.asset(
                              blog.image.toString(),
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            blog.text.toString(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),

                    ///====== second column
                    Expanded(
                      flex: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///============first line
                          Row(
                            children: [

                              Flexible(
                                child: Text(
                                  blog.heading.toString().toUpperCase(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  // softWrap: false,
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),


                                 Image.asset(
                                  blog.icon.toString(), width: 65,
                                  height: 20,

                              ),
                            ],
                          ),

                          ///=======second line
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    blog.subheadting.toString(),
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),

                                Container(
                                  width: 1,
                                  color: Colors.black,
                                  height: 12,
                                ),
                                // This is divider
                                const SizedBox(
                                  width: 30,
                                ),
                                Flexible(
                                  child: Text(
                                    blog.phonenumber.toString(),
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///===============third line
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                blog.socialicon.toString(),
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                blog.socialicon1.toString(),
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                blog.socialicon2.toString(),
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                blog.socialicon3.toString(),
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                blog.socialicon4.toString(),
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),

                          ///=============four line
                          const SizedBox(
                            height: 15,
                          ),
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Icon(
                                  blog.iconloction,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  blog.distance.toString(),
                                  style: const TextStyle(color: Colors.blue),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 1,
                                  color: Colors.blue,
                                  height: 13,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Flexible(
                                  child: Text(
                                    blog.address.toString(),
                                    style: const TextStyle(color: Colors.blue),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///=============five line
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                blog.clock,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                blog.status.toString(),
                                style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text(
                                  blog.time.toString(),
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
                          ),

                          ///=============six line
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              ///=================inner one
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(blog.info.toString(),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  Flexible(
                                      child: Text(blog.info1.toString(),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),

                              ///===================inner two
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(blog.info2.toString(),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  Flexible(
                                      child: Text(blog.info3.toString(),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),

                              ///===================inner three
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(blog.info4.toString(),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  Flexible(
                                      child: Text(blog.info5.toString(),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),

                          ///=============seven line
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            thickness: 2,
                            color: Colors.orange,
                            endIndent: 1,
                            height: 3,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            height: 30,
                            color: const Color(0XFFFBEEDE),
                            child: Row(
                              children: [
                              Flexible( // Constrains AutoSizeText to the width of the Row
                                    child: InkWell(
                                      onTap: (){print("ok hai");},
                                      child: AutoSizeText(
                                        blog.actiontext.toString(),style: const TextStyle(fontSize: 10),

                                      ),
                                    )
                                ),

                                const Spacer(),

                                InkWell(
                                  onTap: (){print("g asa he hai");},
                                  child: AutoSizeText(
                                        blog.actiontext1.toString(),
                                        style: const TextStyle(fontSize: 10),
                                      ),
                                ),


                                  InkWell(
                                    onTap: (){print("icon");},
                                    child: Icon(
                                      blog.actionicon,
                                      size: 15,
                                    ),
                                  ),

                                Spacer(),

                                  InkWell(
                                    onTap: (){print("Last one");},
                                    child: Text(
                                      blog.actiontext2.toString(),
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///===================================third column
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                       height: 265,
                        //  width: 260,
                        color: Colors.pink,
                        child: Image.asset(blog.imagelast.toString(),fit: BoxFit.fill,),
                      ),
                    ),



                  ],
                ),
              ),
            ),

    ///===================================
    ///===================================
    ///===================================

            ///===================================pagination


]
        ),
      ),
    );
  }
}
