import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlatinumSection extends StatelessWidget {
  const PlatinumSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 10),
      height: 120,
      width: 120,
      child: Column(
        children: [
          Image.asset('images/twitter.png', height: 50, width: 60),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'Lahore builders',
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
