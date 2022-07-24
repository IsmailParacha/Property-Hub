import 'package:flutter/material.dart';

import '../Seller/Construction.dart';

class ConstructionSection extends StatelessWidget {
  final String imagelink;
  final String title;

  ConstructionSection(
    this.imagelink,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(10.0)),
        height: 235,
        width: 220,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Constructions()));
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Container(
                    height: 100.0,
                    width: 220,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('$imagelink'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          height: 20,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.red.shade600,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Text(
                              'New',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('$title',
                        style: TextStyle(
                            color: Color.fromRGBO(57, 65, 96, 1.0),
                            fontSize: 14)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'One Solution For Your New Project.',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Color.fromRGBO(57, 65, 96, 1.0),
                      size: 12,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '0321-7896546',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(57, 65, 96, 1.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color.fromRGBO(57, 65, 96, 1.0),
                      size: 12,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('DHA Phase V, Lahore',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(57, 65, 96, 1.0),
                        )),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(57, 65, 96, 1.0),
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: Icon(
                            Icons.playlist_add_check,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Contractors',
                          style: TextStyle(
                              color: Color.fromRGBO(57, 65, 96, 1.0),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
