import 'package:flutter/material.dart';
import 'package:property/widgets/projectsScreenWidgets/Projects.dart';

import '../Seller/Construction.dart';
import '../screen/new_project.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'New Projects',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData.fallback(),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width / 1.08,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade400,
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(57, 65, 96, 1.0),
                  ),
                  tabs: [
                    Tab(
                      text: 'Buy',
                    ),
                    Tab(
                      text: 'Rent',
                    ),
                    Tab(
                      text: 'Construction',
                    ),
                  ],
                )),
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                children: [
                  ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property2.jpg",
                          'Twenty One Smart City',
                          'DHA Block 8,Lahore',
                          '10Lac to 50 Lac',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property1.jpg",
                          'Shayan Iconic Palace',
                          'Karachi Cooperative  Socaity,Karachi',
                          '1.2 Crore to 3.1 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property3.jpg",
                          'Al Karim Residence',
                          'H-13,Islamabad',
                          '44 Lac to 1.13 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property2.jpg",
                          'Twenty One Smart City',
                          'DHA Block 8,Lahore',
                          '10Lac to 50 Lac',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property1.jpg",
                          'Shayan Iconic Palace',
                          'Karachi Cooperative  Socaity,Karachi',
                          '1.2 Crore to 3.1 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property3.jpg",
                          'Al Karim Residence',
                          'H-13,Islamabad',
                          '44 Lac to 1.13 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property2.jpg",
                          'Twenty One Smart City',
                          'DHA Block 8,Lahore',
                          '10Lac to 50 Lac',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property1.jpg",
                          'Shayan Iconic Palace',
                          'Karachi Cooperative  Socaity,Karachi',
                          '1.2 Crore to 3.1 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property3.jpg",
                          'Al Karim Residence',
                          'H-13,Islamabad',
                          '44 Lac to 1.13 Crore',
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property2.jpg",
                          'Twenty One Smart City',
                          'DHA Block 8,Lahore',
                          '10Lac to 50 Lac',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property1.jpg",
                          'Shayan Iconic Palace',
                          'Karachi Cooperative  Socaity,Karachi',
                          '1.2 Crore to 3.1 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property3.jpg",
                          'Al Karim Residence',
                          'H-13,Islamabad',
                          '44 Lac to 1.13 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property2.jpg",
                          'Twenty One Smart City',
                          'DHA Block 8,Lahore',
                          '10Lac to 50 Lac',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property1.jpg",
                          'Shayan Iconic Palace',
                          'Karachi Cooperative  Socaity,Karachi',
                          '1.2 Crore to 3.1 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property3.jpg",
                          'Al Karim Residence',
                          'H-13,Islamabad',
                          '44 Lac to 1.13 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property2.jpg",
                          'Twenty One Smart City',
                          'DHA Block 8,Lahore',
                          '10Lac to 50 Lac',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewProject()));
                        },
                        child: ProjectsWidget(
                          "images/property1.jpg",
                          'Shayan Iconic Palace',
                          'Karachi Cooperative  Socaity,Karachi',
                          '1.2 Crore to 3.1 Crore',
                        ),
                      ),
                      InkWell(
                        child: ProjectsWidget(
                          "images/property3.jpg",
                          'Al Karim Residence',
                          'H-13,Islamabad',
                          '44 Lac to 1.13 Crore',
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Constructions()));
                        },
                        child: ProjectsWidget(
                          "images/property2.jpg",
                          'Twenty One Smart City',
                          'DHA Block 8,Lahore',
                          '10Lac to 50 Lac',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Constructions()));
                        },
                        child: ProjectsWidget(
                          "images/property1.jpg",
                          'Shayan Iconic Palace',
                          'Karachi Cooperative  Socaity,Karachi',
                          '1.2 Crore to 3.1 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Constructions()));
                        },
                        child: ProjectsWidget(
                          "images/property3.jpg",
                          'Al Karim Residence',
                          'H-13,Islamabad',
                          '44 Lac to 1.13 Crore',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Constructions()));
                        },
                        child: ProjectsWidget(
                          "images/property2.jpg",
                          'Twenty One Smart City',
                          'DHA Block 8,Lahore',
                          '10Lac to 50 Lac',
                        ),
                      ),
                      InkWell(
                        child: ProjectsWidget(
                          "images/property1.jpg",
                          'Shayan Iconic Palace',
                          'Karachi Cooperative  Socaity,Karachi',
                          '1.2 Crore to 3.1 Crore',
                        ),
                      ),
                      InkWell(
                        child: ProjectsWidget(
                          "images/property3.jpg",
                          'Al Karim Residence',
                          'H-13,Islamabad',
                          '44 Lac to 1.13 Crore',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Construction(var name5, var name6, var img4) {
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
                  MaterialPageRoute(builder: (context) => Constructions()));
            },
            child: Container(
              height: 120,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1.0,
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
                            image: AssetImage(img4), fit: BoxFit.cover)),
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
                            name5,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            name6,
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

  var name5 = [
    'DHA Lahore',
    'Behria Karachi',
    'Defence Kashmir',
    'Park View',
    'Lake City',
    'DHA Lahore',
    'Behria Karachi',
  ];
  var name6 = [
    'DHA Defence, Lahore',
    'Behria Nasheman, Karachi',
    'Defence Society, Kashmir',
    'Lahore Park View',
    'Lake City Socity, Karachi',
    'DHA Defence, Lahore',
    'Behria Nasheman, Karachi',
  ];
  var img4 = [
    'images/home.jpeg',
    'images/home.png',
    'images/home.jpeg',
    'images/home.png',
    'images/home.jpeg',
    'images/home.png',
    'images/home.jpeg',
  ];

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
