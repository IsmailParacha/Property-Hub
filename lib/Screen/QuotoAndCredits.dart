import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
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
            Row(
              children: [
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
              ],
            ),
            Divider(
              height: 5,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Listing Quota",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Learn More",
                  style: TextStyle(color: Colors.blueAccent),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 1.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Available",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Icons.circle,
                          size: 15,
                          color: Color.fromRGBO(255, 182, 0, 1.0),
                        )
                      ],
                    ),
                    Icon(
                      Icons.circle_outlined,
                      size: 100,
                      color: Color.fromRGBO(255, 182, 0, 1.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "0",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Used",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Icons.circle,
                          size: 15,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.perm_device_information_rounded,
                  size: 20,
                  color: Colors.grey,
                ),
                Text(
                  "4 free ads are for 'Rent' & 1 free ad is for 'Sale'",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(height: 20),
            Divider(
              color: Color.fromARGB(255, 195, 195, 195),
            ),
          ],
        ),
      ),
    );
  }
}
