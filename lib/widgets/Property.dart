import 'package:flutter/material.dart';

import '../Screen/new_project.dart';

class Propertysection extends StatelessWidget {
  final String imagelink;
  final String name;

  final String prize;
  Propertysection(this.imagelink, this.name, this.prize);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewProject()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          width: 225,
          height: 230,
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      height: 90,
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
                                'Hot',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('PKR ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                          Text(
                            '$prize',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text('Zamaan Opal',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                      Text('Land Breeze Housing Society, Lahore',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('$name',
                            style: TextStyle(
                                color: Color.fromRGBO(57, 65, 96, 1.0),
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          Icon(Icons.wb_shade),
                          SizedBox(
                            width: 10,
                          ),
                          Text('1.82 - 15.79 Marla',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
