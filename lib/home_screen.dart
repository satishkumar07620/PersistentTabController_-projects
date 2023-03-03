// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Home_Screen_Page extends StatefulWidget {
  const Home_Screen_Page({super.key});

  @override
  State<Home_Screen_Page> createState() => _Home_Screen_PageState();
}

class _Home_Screen_PageState extends State<Home_Screen_Page> {
  List<TypeList> list = [
    TypeList(
      image: "assets/sofa.png",
      title: "Furniture",
      color: Color(0xFFeaf2fd),
    ),
    TypeList(
      image: "assets/iron.png",
      title: "Household",
      color: Color(0xFFfff3e7),
    ),
    TypeList(
      image: "assets/ear.png",
      title: "Electronics",
      color: Color(0xFFecf6de),
    ),
    TypeList(
      image: "assets/abc.jpg",
      title: "Clothes",
      color: Color(0xFFfdedee),
    ),
    TypeList(
      image: "assets/abc.jpg",
      title: ".",
      color: Color(0xFF6cebf1),
    ),
  ];
  List<Model> list1 = [
    Model(
      image: "assets/haed1.jfif",
      title1: "\$80",
      title2: "Firm",
      title3: "Beats headphones",
      title4: "Boston,MA",
    ),
    Model(
      image: "assets/chair.jfif",
      title1: "\$50",
      title2: "Firm",
      title3: "Fabric arm chair",
      title4: "Boston,MA",
    ),
    Model(
      image: "assets/lamp.jpg",
      title1: "\$60",
      title2: "Firm",
      title3: "Lamp",
      title4: "Boston,MA",
    ),
    Model(
      image: "assets/by.jfif",
      title1: "\$50",
      title2: "Firm",
      title3: "Bicycle",
      title4: "Boston,MA",
    ),
  ];
  String dropdownvalue = 'Newest';

  var items = [
    'Newest',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Icon(
                  Icons.wallet_giftcard_outlined,
                  color: Colors.blue,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                  left: 20,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.blue,
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search In All',
                      style: TextStyle(fontSize: 16, color: Colors.black38),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: EdgeInsets.only(top: 50, right: 20),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: MediaQuery.of(context).size.height * 0.065,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Icon(Icons.apps_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Tab(
                        text: 'Items',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 5,
                      ),
                      Tab(text: 'Tags'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amber,
                      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 138, 232, 239),
                                  radius: 35,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor:
                                        Color.fromARGB(255, 138, 232, 239),
                                    backgroundImage: AssetImage(
                                      "assets/22.png",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 15),
                                child: Text('All'),
                              ),
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: list.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: CircleAvatar(
                                          backgroundColor: list[index].color,
                                          radius: 40,
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundColor: list[index].color,
                                            backgroundImage: AssetImage(
                                              list[index].image!,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Text(
                                          list[index].title!,
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                child: DropdownButton(
                                  value: dropdownvalue,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                  ),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.display_settings,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Expanded(child: Container()),
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Icon(
                            Icons.display_settings,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: list1.length,
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 0,
                                childAspectRatio: .64),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height * 0.26,
                                width:
                                    MediaQuery.of(context).size.width * 0.50,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(list1[index].image!),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      list1[index].title1!, //$80
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      list1[index].title2!, //Firm
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 18),
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      margin: EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: Icon(
                                        Icons.favorite_border,
                                        size: 30,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  list1[index]
                                      .title3!, //  'Beats Headphones',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  list1[index].title4!, //  'Boston,MA',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 16),
                                ),
                              ),
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TypeList {
  String? image;
  String? title;
  Color? color;

  TypeList({
    required this.image,
    required this.title,
    required this.color,
  });
}

class Model {
  String? image;
  String? title1;
  String? title2;
  String? title3;
  String? title4;

  Model({
    required this.image,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });
}
