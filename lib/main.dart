import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:property/Dashboard/Dashboard.dart';

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
              duration: 4000,
              splashTransition: SplashTransition.slideTransition,
              splashIconSize: 150,
              splash: Container(
                height: 400,
                width: 400,
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
