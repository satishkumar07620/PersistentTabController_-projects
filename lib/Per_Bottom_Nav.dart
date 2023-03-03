// ignore_for_file: camel_case_types, prefer_const_constructors, file_names, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:march1task/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Pres_Bottom_Nav_Bar extends StatefulWidget {
  const Pres_Bottom_Nav_Bar({super.key});

  @override
  State<Pres_Bottom_Nav_Bar> createState() => _Pres_Bottom_Nav_BarState();
}

class _Pres_Bottom_Nav_BarState extends State<Pres_Bottom_Nav_Bar> {
  late PersistentTabController controller;

  final _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen() {
    return [
      Home_Screen_Page(),
      Text(
        '',
      ),
      Text(
        '',
      ),
      Text(
        "",
      ),
      Text(
        '',
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home
            // Image.asset(
            //   "assets/abc.jpg",
            //  alignment: Alignment.bottomCenter,
            //  fit: BoxFit.fill,
            ),
        title: ("HOME"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wallet
            // Image.asset(
            //   "assets/services.png",
            //   alignment: Alignment.bottomCenter,
            //   fit: BoxFit.fill,
            ),
        title: ("Wallet"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.camera_alt
           ),
        title: ("Sell"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorSecondary: Colors.white,
      
        activeColorPrimary: Colors.blue, //inside color
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat
             ),
        title: ("Chat"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add_reaction_sharp
             ),
        title: ("Profile"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreen(),
      items: _navBarItem(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,    //white
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
     navBarStyle: NavBarStyle.style15,
    );
  }
}
