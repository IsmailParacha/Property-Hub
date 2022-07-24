import 'package:flutter/cupertino.dart';

class PlatinumSection extends StatelessWidget {
  final String imagelink;
  final String name;
  PlatinumSection(
    this.imagelink,
    this.name,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 10),
      height: 120,
      width: 120,
      child: Column(
        children: [
          Image.asset('$imagelink', height: 50, width: 60),
          SizedBox(
            height: 5.0,
          ),
          Text(
            '$name',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            '126 Property For Sale',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          Text(
            '25 Property to Rent',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
