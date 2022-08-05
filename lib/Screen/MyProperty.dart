import 'package:flutter/material.dart';

import '../widgets/MypropertyWidget.dart';

class MyProperties extends StatelessWidget {
  const MyProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Your Property ADs",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            SizedBox(
              height: 10,
            ),
            MyPropertyWidget(
              "images/property1.jpg",
              'Shayan Iconic Palace',
              'Karachi Cooperative  Socaity,Karachi',
              '1.2 Crore to 3.1 Crore',
            ),
            SizedBox(
              height: 5,
            ),
            MyPropertyWidget(
              "images/property2.jpg",
              'Imran Lux Palace',
              'Scheme 33,Karachi',
              '1.2 Crore to 3.1 Crore',
            ),
            SizedBox(
              height: 5,
            ),
            MyPropertyWidget(
              "images/property3.jpg",
              'Light House Residency',
              'Light House Socaity,Karachi',
              '1.2 Crore to 3.1 Crore',
            ),
            SizedBox(
              height: 5,
            ),
            MyPropertyWidget(
              "images/property1.jpg",
              'Shameer Residency',
              'Karachi Cooperative  Socaity,Karachi',
              '1.2 Crore to 3.1 Crore',
            ),
          ],
        ),
      ),
    );
  }
}
