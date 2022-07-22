import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LatestNewsSection extends StatelessWidget {
  const LatestNewsSection({Key? key}) : super(key: key);

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
                    image: AssetImage('images/home.jpeg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Property Hub Organizes Independence Day Celebration',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70, top: 10, left: 8.0),
              child: Text('August 17,2021',
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
