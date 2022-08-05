import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:property/Seller/NavigationDrawer.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: ListView(
          children: [
            Text(
              "Saved Searches",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.network(
                      'https://assets4.lottiefiles.com/packages/lf20_xbf1be8x.json'),
                  Text(
                    "No Saved Searches!",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(""),
                  Expanded(
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(57, 65, 96, 1.0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: const Text(
                              'Submit Button',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
