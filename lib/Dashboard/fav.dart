import 'package:flutter/material.dart';
import 'package:property/widgets/FavoriteWidget.dart';
import '../screen/new_project.dart';

class Fav extends StatefulWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  _FavState createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: ListView(
        children: [
          FavoriteWidget(
            "images/property2.jpg",
            'Twenty One Smart City',
            'DHA Block 8,Lahore',
            '10Lac to 50 Lac',
          ),
          FavoriteWidget(
            "images/property1.jpg",
            'Shayan Iconic Palace',
            'Karachi Cooperative  Socaity,Karachi',
            '1.2 Crore to 3.1 Crore',
          ),
          FavoriteWidget(
            "images/property3.jpg",
            'Al Karim Residence',
            'H-13,Islamabad',
            '44 Lac to 1.13 Crore',
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Projects(var name3, var name4, var img3) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 5,
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewProject()));
            },
            child: Container(
              height: 120,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2.0,
                    color: Color.fromRGBO(57, 65, 96, 1.0),
                  )),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 3.0),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(img3), fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.red,
                          height: 15,
                          width: 40,
                          child: Center(
                              child: Text(
                            'Classic',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 290),
                          color: Colors.red,
                          height: 15,
                          width: 40,
                          child: Center(
                              child: Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            name3,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            name4,
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Contact',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Color.fromRGBO(57, 65, 96, 1.0),
                              )),
                              child: Center(
                                  child: Text(
                                'Email',
                                style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 30,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(57, 65, 96, 1.0),
                                  border: Border.all()),
                              child: Center(
                                  child: Text(
                                'Call',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Color.fromRGBO(57, 65, 96, 1.0),
                              )),
                              child: Center(
                                  child: Text(
                                'SMS',
                                style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  var name3 = [
    'DHA Lahore',
    'Behria Karachi',
    'Defence Kashmir',
    'Park View',
    'Lake City',
    'DHA Lahore',
    'Behria Karachi',
  ];
  var name4 = [
    'DHA Defence, Lahore',
    'Behria Nasheman, Karachi',
    'Defence Society, Kashmir',
    'Lahore Park View',
    'Lake City Socity, Karachi',
    'DHA Defence, Lahore',
    'Behria Nasheman, Karachi',
  ];
  var img3 = [
    'images/home.jpeg',
    'images/home.png',
    'images/home.jpeg',
    'images/home.png',
    'images/home.jpeg',
    'images/home.png',
    'images/home.jpeg',
  ];
}
