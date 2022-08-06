import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Seller/NavigationDrawer.dart';

class QuotoAndCredits extends StatefulWidget {
  const QuotoAndCredits({Key? key}) : super(key: key);

  @override
  State<QuotoAndCredits> createState() => _QuotoAndCreditsState();
}

class _QuotoAndCreditsState extends State<QuotoAndCredits> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: ListView(
          children: [
            Text(
              "Quoto & Credits",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              user.email!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Individual",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 70,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 204, 215, 255).withOpacity(0.5),
              ),
              child: Center(
                child: Text(
                  "BASIC",
                  style: TextStyle(
                      color: Color.fromRGBO(57, 65, 96, 1.0),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              height: 5,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Listing Quota",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Learn More",
                  style: TextStyle(color: Colors.blueAccent),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
