import 'package:flutter/material.dart';

class RecommendedSection extends StatelessWidget {
  final String imagelink;
  final String location;
  final String type;

  final String prize;
  RecommendedSection(this.imagelink, this.location, this.prize, this.type);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
        ),
        height: 220,
        width: 220,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('PKR ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                    Text(
                      '$prize',
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
                      child: Text('$type',
                          style: TextStyle(
                              color: Color.fromRGBO(57, 65, 96, 1.0),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text('$location',
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
