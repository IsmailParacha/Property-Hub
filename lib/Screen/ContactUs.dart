import 'package:flutter/material.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Us",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "ASK US ANYTHING",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  height: 2,
                  wordSpacing: 2),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "We at PropertyHub.com are open to any and all inquiries and suggestions you may have.The occasional Hilarious joke wouldn't be entirely amiss either",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your Message',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "All Fields are required.",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(57, 65, 96, 1.0)),
                    child: Center(
                      child: Text(
                        "Send",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
