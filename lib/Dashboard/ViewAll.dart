import 'package:flutter/material.dart';
import 'package:property/widgets/projectsScreenWidgets/Projects.dart';

import '../Seller/Construction.dart';
import '../screen/new_project.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
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
              height: MediaQuery.of(context).size.height / 1.21,
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
}
