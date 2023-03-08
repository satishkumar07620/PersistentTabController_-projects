// ignore_for_file: prefer_const_constructors, unnecessary_new, avoid_unnecessary_containers

// import 'dart:html';

import 'package:flutter/material.dart';

class Other_Code extends StatefulWidget {
  const Other_Code({super.key});

  @override
  State<Other_Code> createState() => _Other_CodeState();
}

class _Other_CodeState extends State<Other_Code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('a'),
      ),
      body: 
      
      // Column(
      //   children: [
      //     Container(
      //       child: Text('b'),
      //     ),
      //     Container(
      //       child: Text('b'),
      //     ),
      //     Row(
      //       children: [
      //         Container(
      //           child: Text('data'),
      //         ),
      //         Container(
      //           child: Text('data'),
      //         ),
      //       ],
      //     ),
      //     Container(
      //       child: Text('data'),
      //     ),
          ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sofa.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Image(
                      image: AssetImage('assets/sofa.png'),
                    ),
                    Image(
                      image: AssetImage('assets/sofa.png'),
                    ),
                    Image(
                      image: AssetImage('assets/sofa.png'),
                    ),
                    Image(
                      image: AssetImage('assets/sofa.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
    //    ],
    //  ),
    );
  }
}
