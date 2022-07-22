import 'package:flutter/material.dart';
import 'package:property/widgets/LatestNews.dart';
import 'package:property/widgets/PostAnAdd.dart';
import 'package:property/widgets/Property.dart';
import 'package:property/widgets/Recommended.dart';
import 'package:property/widgets/platinum.dart';
import '../../screen/new_project.dart';
import '../Seller/Construction.dart';
import '../Seller/NavigationDrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: NavigationDrawer(),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0.0,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () =>
                                _scaffoldKey.currentState!.openDrawer(),
                            icon: Icon(
                              Icons.view_headline,
                              color: Color.fromRGBO(57, 65, 96, 1.0),
                            ),
                          ),
                          Image.asset(
                            'images/logo2.png',
                            height: 40,
                            width: 40,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 50,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white60),
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
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 20),
                        height: 40,
                        width: 260,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Search()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.search),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Search')
                              ],
                            )),
                      ),
                    ]),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/home.jpeg'),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Positioned(
                top: 245,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                        )),
                    child: TabBarView(
                      children: [
                        ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Column(
                              children: [
                                PostAdd(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15.0,
                                    left: 15.0,
                                    right: 15.0,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "New Project",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "View All",
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.blue),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Propertysection(),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Propertysection(),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Propertysection()
                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Platinum Agencies",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              PlatinumSection(),
                                              PlatinumSection(),
                                              PlatinumSection(),
                                              PlatinumSection()
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Recommended Properties',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'View All',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            RecommendedSection(),
                                            SizedBox(
                                              width: 9,
                                            ),
                                            RecommendedSection(),
                                            SizedBox(
                                              width: 9,
                                            ),
                                            RecommendedSection(),
                                            SizedBox(
                                              width: 9,
                                            ),
                                            RecommendedSection(),
                                            SizedBox(
                                              width: 9,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //latestNews
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Latest News',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'View All',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.blue),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                3.9,
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children: [
                                                  LatestNewsSection(),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  LatestNewsSection(),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  LatestNewsSection()
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                // Material(
                                //   elevation: 0.9,
                                //   borderRadius: BorderRadius.circular(20),
                                //   child: Container(
                                //     height: 324,
                                //     width: 340,
                                //     decoration: BoxDecoration(
                                //       color: Colors.white38,
                                //       borderRadius: BorderRadius.circular(20),
                                //     ),
                                //     child: Column(
                                //       children: [
                                //         SizedBox(
                                //           height: 10,
                                //         ),
                                //         Row(
                                //           mainAxisAlignment:
                                //               MainAxisAlignment.spaceBetween,
                                //           children: [
                                //             Padding(
                                //               padding: const EdgeInsets.only(
                                //                   left: 8.0),
                                //               child: Text(
                                //                 'New Project',
                                //                 style: TextStyle(
                                //                     fontSize: 14,
                                //                     fontWeight:
                                //                         FontWeight.bold),
                                //               ),
                                //             ),
                                //             // SizedBox(
                                //             //   width: 80,
                                //             // ),
                                //             Padding(
                                //               padding: const EdgeInsets.only(
                                //                   right: 8.0),
                                //               child: Text(
                                //                 'View All',
                                //                 style: TextStyle(
                                //                     fontSize: 14,
                                //                     color: Colors.blue),
                                //               ),
                                //             )
                                //           ],
                                //         ),
                                //         Container(
                                //           height: MediaQuery.of(context)
                                //                   .size
                                //                   .height /
                                //               2.7,
                                //           child: ListView.builder(
                                //               scrollDirection: Axis.horizontal,
                                //               itemCount: 4,
                                //               itemBuilder: (
                                //                 BuildContext context,
                                //                 int f,
                                //               ) {
                                //                 return Property(img[f]);
                                //               }),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: 20,
                                // ),
                                //
                                //~~~~socail Icons Section~~~~
                                // Material(
                                //   elevation: 0.9,
                                //   borderRadius: BorderRadius.circular(20),
                                //   child: Container(
                                //     height: 173,
                                //     width: 330,
                                //     decoration: BoxDecoration(
                                //       color: Colors.white38,
                                //       borderRadius: BorderRadius.circular(20),
                                //     ),
                                //     child: Padding(
                                //       padding: const EdgeInsets.only(top: 8.0),
                                //       child: Column(
                                //         children: [
                                //           Text(
                                //             'Platinum Agencies',
                                //             style: TextStyle(
                                //                 fontSize: 18,
                                //                 fontWeight: FontWeight.bold),
                                //           ),
                                //           Container(
                                //             height: MediaQuery.of(context)
                                //                     .size
                                //                     .height /
                                //                 6.3,
                                //             child: ListView.builder(
                                //                 scrollDirection:
                                //                     Axis.horizontal,
                                //                 itemCount: 5,
                                //                 itemBuilder: (
                                //                   BuildContext context,
                                //                   int p,
                                //                 ) {
                                //                   return Platinum(
                                //                       (name6[p]), (img6[p]));
                                //                 }),
                                //           ),
                                //         ],
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: 20,
                                // ),
                                //~~~Recommended section~~~~
                                // Material(
                                //   elevation: 0.9,
                                //   borderRadius: BorderRadius.circular(20),
                                //   child: Container(
                                //     height: 278,
                                //     width: 330,
                                //     decoration: BoxDecoration(
                                //       color: Colors.white38,
                                //       borderRadius: BorderRadius.circular(20),
                                //     ),
                                //     child: Column(
                                //       children: [
                                //         SizedBox(
                                //           height: 10,
                                //         ),
                                //         //recommended in buy
                                //         Row(
                                //           mainAxisAlignment:
                                //               MainAxisAlignment.spaceAround,
                                //           children: [
                                //             Text(
                                //               'Recommended Properties',
                                //               style: TextStyle(
                                //                   fontSize: 14,
                                //                   fontWeight: FontWeight.bold),
                                //             ),
                                //             SizedBox(
                                //               width: 80,
                                //             ),
                                //             Text(
                                //               'View All',
                                //               style: TextStyle(
                                //                   fontSize: 14,
                                //                   color: Colors.blue),
                                //             )
                                //           ],
                                //         ),
                                //         Container(
                                //           height: MediaQuery.of(context)
                                //                   .size
                                //                   .height /
                                //               3.2,
                                //           child: ListView.builder(
                                //               scrollDirection: Axis.horizontal,
                                //               itemCount: 4,
                                //               itemBuilder: (
                                //                 BuildContext context,
                                //                 int r,
                                //               ) {
                                //                 return Recomanded(img3[r]);
                                //               }),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: 20,
                                // ),

                                //~~~Latest New Section ~~~~
                                // Material(
                                //   elevation: 0.9,
                                //   borderRadius: BorderRadius.circular(20),
                                //   child: Container(
                                //     height: 233,
                                //     width: 330,
                                //     decoration: BoxDecoration(
                                //       color: Colors.white38,
                                //       borderRadius: BorderRadius.circular(20),
                                //     ),
                                //     child: Column(
                                //       children: [
                                //         SizedBox(
                                //           height: 10,
                                //         ),
                                //         Row(
                                //           mainAxisAlignment:
                                //               MainAxisAlignment.spaceAround,
                                //           children: [
                                //             Text(
                                //               'Latest News',
                                //               style: TextStyle(
                                //                   fontSize: 14,
                                //                   fontWeight: FontWeight.bold),
                                //             ),
                                //             SizedBox(
                                //               width: 80,
                                //             ),
                                //             Text(
                                //               'View All',
                                //               style: TextStyle(
                                //                   fontSize: 14,
                                //                   color: Colors.blue),
                                //             )
                                //           ],
                                //         ),
                                //         Container(
                                //           height: MediaQuery.of(context)
                                //                   .size
                                //                   .height /
                                //               3.9,
                                //           child: ListView.builder(
                                //               scrollDirection: Axis.horizontal,
                                //               itemCount: 4,
                                //               itemBuilder: (
                                //                 BuildContext context,
                                //                 int a,
                                //               ) {
                                //                 return News(img2[a]);
                                //               }),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                SizedBox(
                                  height: 300,
                                )
                              ],
                            )
                          ],
                        ),

                        //Rent view
                        ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Column(
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 0.9,
                                  child: Container(
                                    height: 130,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset(
                                              'images/home.png',
                                              height: 90,
                                              width: 90,
                                            ),
                                            Container(
                                              width: 200,
                                              child: Text(
                                                'Looking to sell or rent out your property?',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 30,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Post an Ad',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Material(
                                  elevation: 0.9,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 345,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                'New Project',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'View All',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.blue),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              2.7,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 4,
                                              itemBuilder: (
                                                BuildContext context,
                                                int f,
                                              ) {
                                                return Property(img[f]);
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Material(
                                  elevation: 0.9,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 150,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Platinum Agencies',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              6.3,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 5,
                                              itemBuilder: (
                                                BuildContext context,
                                                int p,
                                              ) {
                                                return Platinum(
                                                    (name6[p]), (img6[p]));
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Material(
                                  elevation: 0.9,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 250,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Recommended Properties',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text(
                                              'View All',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3.7,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 4,
                                              itemBuilder: (
                                                BuildContext context,
                                                int r,
                                              ) {
                                                return Recomanded(img3[r]);
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Material(
                                  elevation: 0.9,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 210,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Latest News',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text(
                                              'View All',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4.4,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 4,
                                              itemBuilder: (
                                                BuildContext context,
                                                int a,
                                              ) {
                                                return News(img2[a]);
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 400,
                                )
                              ],
                            )
                          ],
                        ),
                        //Construction View
                        ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Material(
                                  elevation: 0.9,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 294,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Exclusives',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text(
                                              'View All',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3.0,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 4,
                                              itemBuilder: (
                                                BuildContext context,
                                                int e,
                                              ) {
                                                return Exclusives(img4[e]);
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Material(
                                  elevation: 0.9,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 270,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Construction',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text(
                                              'View All',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3.3,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 4,
                                              itemBuilder: (
                                                BuildContext context,
                                                int c,
                                              ) {
                                                return Construction(
                                                  img5[c],
                                                );
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Material(
                                  elevation: 0.9,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 173,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Platinum Agencies',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              5.3,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 5,
                                              itemBuilder: (
                                                BuildContext context,
                                                int p,
                                              ) {
                                                return Platinum(
                                                    (name6[p]), (img6[p]));
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  indent: 20,
                                  endIndent: 20,
                                  thickness: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Material(
                                  elevation: 0.9,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 278,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Recommended Properties',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text(
                                              'View All',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3.2,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 4,
                                              itemBuilder: (
                                                BuildContext context,
                                                int r,
                                              ) {
                                                return Recomanded(img3[r]);
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Material(
                                  elevation: 0.9,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 233,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Latest News',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text(
                                              'View All',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blue),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3.9,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 4,
                                              itemBuilder: (
                                                BuildContext context,
                                                int a,
                                              ) {
                                                return News(img2[a]);
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 400,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Platinum(var name6, var img6) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 120,
      width: 120,
      child: Column(
        children: [
          Image.asset(img6, height: 50, width: 60),
          SizedBox(
            height: 5.0,
          ),
          Text(
            name6,
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
          SizedBox(
            height: 5.0,
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

  var name6 = [
    'Mian International Karachi',
    'Lahore builders',
    'Pakistan State Builders',
    'Shah International states',
    'Mian International Karachi',
  ];
  var img6 = [
    'images/twitter.png',
    'images/instagram.png',
    'images/twitter.png',
    'images/instagram.png',
    'images/twitter.png',
  ];
  // ignore: non_constant_identifier_names
  Widget Property(var img) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        height: 270,
        width: 200,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewProject()));
              },
              child: Container(
                  height: 90,
                  width: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('PKR',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '60.6Lac to 5.5 Crore',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 135, top: 5),
              child: Text('Zamaan Opal',
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text('Land Breeze Housing Society, Lahore',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 110, top: 10),
              child: Text('Penthouse, Flate',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.wb_shade),
                SizedBox(
                  width: 10,
                ),
                Text('1.82 - 15.79 Marla',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }

  var img = [
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
  ];
  // ignore: non_constant_identifier_names
  Widget Recomanded(var img3) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        height: 260,
        width: 220,
        child: Column(
          children: [
            Container(
                height: 100.0,
                width: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img3), fit: BoxFit.cover),
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
                Text('PKR',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '75 Thousands',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 39, top: 5),
              child: Text('DHA 9 Town, Defence Lahore',
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120, top: 10),
              child: Text('House For Rent',
                  style: TextStyle(
                      color: Color.fromRGBO(57, 65, 96, 1.0),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  child: Row(
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
                SizedBox(
                  width: 10,
                ),
                Container(
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
                SizedBox(
                  width: 10,
                ),
                Container(
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  var img3 = [
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
  ];
  // ignore: non_constant_identifier_names
  Widget News(var img2) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        height: 200,
        width: 150,
        child: Column(
          children: [
            Container(
              height: 100.0,
              width: 150,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(img2), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text('Property Hub Organizes Independence Day Celebration',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80, top: 10),
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

  var img2 = [
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
  ];
  // ignore: non_constant_identifier_names
  Widget Exclusives(
    var img4,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        height: 260,
        width: 220,
        child: Column(
          children: [
            Container(
                height: 100.0,
                width: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img4), fit: BoxFit.cover),
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
                Text('Ahmad Constructions',
                    style: TextStyle(
                        color: Color.fromRGBO(57, 65, 96, 1.0), fontSize: 14)),
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
                      'Suppliers',
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
    );
  }

  var img4 = [
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
  ];
  // ignore: non_constant_identifier_names
  Widget Construction(
    var img5,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
          height: 260,
          width: 220,
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Constructions()));
            },
            child: Column(
              children: [
                Container(
                    height: 100.0,
                    width: 220,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(img5), fit: BoxFit.cover),
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
                    Text('Ahmad Constructions',
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
          )),
    );
  }

  var img5 = [
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
    'images/home.jpeg',
  ];
}
