// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  List<ModelofGrid> list = [
    ModelofGrid(
      image: "assets/by.jfif",
    ),
    ModelofGrid(
      image: "assets/study.jfif",
    ),
    ModelofGrid(
      image: "assets/table.jfif",
    ),
    ModelofGrid(
      image: "assets/ch.jfif",
    ),
    ModelofGrid(
      image: "assets/book.jfif",
    ),
    ModelofGrid(
      image: "assets/lap.jfif",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 370,
              width: 500,
              // color: Colors.blue,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        // width: 1,
                        // margin: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          'University of State College',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis, //$80
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Icon(Icons.share_outlined, size: 30),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 20),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/logo.jfif',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              // margin: EdgeInsets.only(
                              //   right: 10,
                              // ),
                              padding: EdgeInsets.all(10),
                              height: 60,
                              decoration: BoxDecoration(),
                              child: Row(
                                children: [
                                  Text(
                                    '3,143',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis, //$80
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Members',
                                    style: TextStyle(fontSize: 18),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis, //$80
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 20, top: 10),
                            child: Text(
                              'Private',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 85, 213, 242),
                                  fontSize: 18),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis, //$80
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'University of State College',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis, //$80
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Founder:',
                              style: TextStyle(fontSize: 17),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis, //$80
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'Samuel Smith',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis, //$80
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'USC is a proud academic instution right in the heart of Boston, MA. We are proud to be a part of this dynamic  learning environment and welcome all students to join  our TagHawk buying and selling network!',
                          style: TextStyle(fontSize: 12),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis, //$80
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //second container
            Container(
              height: 400,
              width: 500,
              // color: Colors.amber,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'Shelf',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis, //$80
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        margin: EdgeInsets.only(
                          right: 20,
                        ),
                        child: Center(
                          child: Text(
                            "View All",
                            style: TextStyle(
                                color: Color.fromARGB(255, 54, 206, 244),
                                fontSize: 16),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis, //$80
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      // crossAxisSpacing: 5,
                      // mainAxisSpacing: 5,
                      // childAspectRatio: .5
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(5),
                        // height: MediaQuery.of(context).size.height * 0.18,
                        // width: MediaQuery.of(context).size.width * 0.35,
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                list[index].image!,
                              ),
                              fit: BoxFit.fill),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 123, 234, 234),
                            Color.fromARGB(255, 55, 204, 234),
                          ],
                        ),
                        // color: Color(0xFF42ddfc),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Chat',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis, //$80
                        ),
                      ),
                    ),
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

class ModelofGrid {
  String? image;

  ModelofGrid({
    required this.image,
  });
}
