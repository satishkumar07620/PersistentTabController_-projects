import 'package:flutter/material.dart';
import 'package:march1task/Per_Bottom_Nav.dart';
import 'package:march1task/Profile_Screen.dart';
import 'package:march1task/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Other_Code(),
      home: const Pres_Bottom_Nav_Bar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
