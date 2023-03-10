import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Testing_Screen extends StatefulWidget {
  const Testing_Screen({super.key});

  @override
  State<Testing_Screen> createState() => _Testing_ScreenState();
}

class _Testing_ScreenState extends State<Testing_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
       decoration: BoxDecoration(color: Colors.white),
       child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 350.0),
            child: GradientAppBar(" "),
          ),
          Positioned(
            bottom: 150.0,
            height: 260.0,
            left: 10.0,
            right: 10.0,
            child: Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: const Text(
                        'LOGIN',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16.50,
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          letterSpacing: 1.00,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: TextField(
                        controller: _user1,
                        decoration: InputDecoration(
                            labelText: '     Enter a username'),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.person_pin),
                      title: TextField(
                        controller: _pass1,
                        decoration: InputDecoration(
                            labelText: '     Enter a password'),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70.0,
            left: 15.0,
            right: 05.0,
            child: ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.only(right: 13.0),
                    child: Text(
                      'REGISTER HERE',
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Helvetica",
                          fontSize: 15.00,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/facebook');
                    },
                  ),
                  FlatButton(
                    padding: EdgeInsets.only(right: 22.0),
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Helvetica",
                          fontSize: 15.00,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Forgot');
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 73.0,
            height: 180.0,
            left: 20.0,
            right: 52.0,
            child: Padding(
              padding: EdgeInsets.all(0.00),
              child: ButtonTheme(
                minWidth: 10.0,
                height: 20.0,
                padding: EdgeInsets.only(right: 37.0),
                child: ButtonBar(children: <Widget>[
                  CupertinoButton(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(36.0)),
                      padding: EdgeInsets.only(left: 70.0),
                      color: const Color(0xFF426DB7),
                      child: Text(
                        "     LOGIN                            ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.50,
                            fontFamily: "Handwriting",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.00),
                      ),
                      onPressed: () {})
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}