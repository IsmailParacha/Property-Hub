import 'package:flutter/material.dart';

class LatestNewsSection extends StatelessWidget {
  final String imagelink;
  final String title;
  final String date;
  LatestNewsSection(this.imagelink, this.title, this.date);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 200,
        width: 150,
        child: Column(
          children: [
            Container(
              height: 100.0,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('$imagelink'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('$title',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70, top: 10, left: 8.0),
              child: Text('$date',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
