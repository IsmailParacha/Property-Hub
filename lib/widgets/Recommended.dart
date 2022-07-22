import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 210,
          width: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0, top: 2),
                child: Container(
                    height: 100.0,
                    width: 210,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/home.jpeg'),
                          fit: BoxFit.cover),
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
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('PKR ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                    Text(
                      '75 Thousands',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Text('House For Rent',
                          style: TextStyle(
                              color: Color.fromRGBO(57, 65, 96, 1.0),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text('DHA 9 Town, Defence Lahore',
                        style: TextStyle(color: Colors.grey, fontSize: 14)),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.architecture_outlined),
                              Text('5 Marla',
                                  style: TextStyle(
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Icon(Icons.bed_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('3',
                                    style: TextStyle(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Icon(Icons.bathtub_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('3',
                                    style: TextStyle(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
