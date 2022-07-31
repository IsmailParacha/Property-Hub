import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:property/Dashboard/Dashboard.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: FirebaseOptions(
      //   apiKey: "AIzaSyDR6I9UKhN7n0z3jtTsUrCoGhXf6klfc60", // Your apiKey
      //   appId: "1:994634378279:android:e95b37bcf91efd1a557202", // Your appId
      //   messagingSenderId: "XXX", // Your messagingSenderId
      //   projectId: "jhjhj-99c05", // Your projectId
      // ),
      );
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();
final messengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
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
      ),
    );
  }
}
