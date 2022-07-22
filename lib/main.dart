import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:property/Dashboard/Dashboard.dart';
import 'package:property/widgets/Property.dart';

import 'Dashboard/home.dart';
import 'Screen/firstscreen.dart';

void main() async {
  runApp(new MaterialApp(
    // theme: ThemeData(fontFamily: 'Roboto-Regular'),
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // body: Property(),
      body: Center(
          child: AnimatedSplashScreen(
              duration: 3000,
              splashTransition: SplashTransition.fadeTransition,
              splash: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/logo2.png'),
                )),
              ),
              nextScreen: DashBoard()
              // nextScreen: Home(),
              )),
    );
  }
}
