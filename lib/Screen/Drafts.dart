import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:property/Seller/NavigationDrawerLogin.dart';

class DraftProperty extends StatelessWidget {
  const DraftProperty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerLogin(),
      appBar: AppBar(
        title: Text(
          "Draft Properties",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            const SizedBox(height: 20),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.network(
                      'https://assets3.lottiefiles.com/private_files/lf30_gctc76jz.json'),
                  Text(
                    "No Saved Drafts",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(57, 65, 96, 1.0),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "It appears you have not draft amy properties yet.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                color: Color.fromRGBO(57, 65, 96, 1.0),
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ADD PROPERTY',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
