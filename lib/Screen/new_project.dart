import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class NewProject extends StatefulWidget {
  const NewProject({Key? key}) : super(key: key);

  @override
  _NewProjectState createState() => _NewProjectState();
}

class _NewProjectState extends State<NewProject> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'New Projects',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData.fallback(),
      ),
      body: DefaultTabController(
        length: 4,
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 250,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/DHA.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                  elevation: 2,
                  child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width / 9,
                      child: Row(
                        children: [
                          Text(
                            '   PKR',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            ' 10 Thousands to 40 Thousands',
                            style: TextStyle(
                                fontSize: 22,
                                color: Color.fromRGBO(57, 65, 96, 1.0),
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'DHA Bahawalpur',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Center(
                  child: Text(
                    'DHA Defence, Bahawalpur',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Color.fromRGBO(57, 65, 96, 1.2),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.email,
                              color: Color.fromRGBO(57, 65, 96, 1.0),
                              size: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'EMAIL',
                          style: TextStyle(
                            color: Color.fromRGBO(57, 65, 96, 1.0),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: Color.fromRGBO(57, 65, 96, 1.2),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.message,
                              color: Color.fromRGBO(57, 65, 96, 1.0),
                              size: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'SMS',
                          style: TextStyle(
                            color: Color.fromRGBO(57, 65, 96, 1.0),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () async {
                            // ignore: deprecated_member_use
                            UrlLauncher.launch("tel://03160923455");
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: Color.fromRGBO(57, 65, 96, 1.2),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.call,
                                color: Color.fromRGBO(57, 65, 96, 1.0),
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'CALL',
                          style: TextStyle(
                            color: Color.fromRGBO(57, 65, 96, 1.0),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: TabBar(
                      indicatorColor: Color.fromRGBO(57, 65, 96, 1.0),
                      labelColor: Color.fromRGBO(57, 65, 96, 1.0),
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.widgets,
                            size: 22,
                          ),
                          child: Text(
                            'Overview',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.apartment_outlined,
                            size: 22,
                          ),
                          child: Text(
                            'Features',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.location_on_outlined,
                            size: 22,
                          ),
                          child: Text(
                            'Map',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.widgets,
                            size: 22,
                          ),
                          child: Text(
                            'Property',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.7,
                  child: TabBarView(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Container(
                                  height: 30,
                                  child: Text(
                                    "Overview",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  )),
                              Text('Detail & Description'),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'DHA Bahawalpur',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 320,
                                height: 30,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Property  ID',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      '768',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 320,
                                height: 30,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'City',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 46),
                                      child: Text(
                                        'DHA Defence, Bahawalpur',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 320,
                                height: 30,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Locality',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18),
                                      child: Text(
                                        'DHA Defence',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 320,
                                height: 30,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Types',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Text(
                                        'Houses',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 320,
                                height: 30,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Developer',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Text(
                                        'DHA Bahawalpur',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 320,
                                child: ReadMoreText(
                                  'Defence Housing Authority, Bahawalpur is a real-estate development '
                                  'company that governs housing and municipal services for '
                                  'Defence neighbourhoods across Pakistan. It is the second '
                                  'largest gated community in Pakistan, after Bahria Town. '
                                  'It has a number of gated communities in many cities of Pakistan.',
                                  style: TextStyle(color: Colors.black),
                                  trimLines: 3,
                                  colorClickableText:
                                      Color.fromRGBO(57, 65, 96, 1.0),
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: '...Show more',
                                  trimExpandedText: ' show less',
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 40,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(57, 65, 96, 1.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'View Locations',
                                  style: TextStyle(color: Colors.white),
                                )),
                              )
                            ],
                          )),
                      ListView(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Project Features",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: 320,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Main Features",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.local_parking_rounded,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Text("Parking Space:"),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.people_alt_rounded,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Text("Parking Space:"),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: 320,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Plot Features",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.nature_people_outlined,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Text("Possesion:"),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .sports_handball_outlined,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Text("Balloted:"),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.waves_sharp,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Text("Sewerage:"),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: 320,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Business & Communication",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.vpn_lock_rounded,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Text(" Broadband Internet:"),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.tv,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Text("Satellite or TV"),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: 320,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Nearby Locations and Other Facilities",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.school_outlined,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Container(
                                                    width: 60,
                                                    child: Text(
                                                      "Nearby Schools:",
                                                      textAlign:
                                                          TextAlign.center,
                                                    )),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.local_hospital_outlined,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Container(
                                                    width: 65,
                                                    child: Text(
                                                      "Nearby Hospitals:",
                                                      textAlign:
                                                          TextAlign.center,
                                                    )),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.shopping_cart_outlined,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Container(
                                                    width: 60,
                                                    child: Text(
                                                      "Shopping Malls:",
                                                      textAlign:
                                                          TextAlign.center,
                                                    )),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: 320,
                                    height: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        )),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Other Facilities",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.security,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Container(
                                                    width: 60,
                                                    child: Text(
                                                      "Security Staff:",
                                                      textAlign:
                                                          TextAlign.center,
                                                    )),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.photo_camera_front,
                                                  color: Color.fromRGBO(
                                                      57, 65, 96, 1.0),
                                                ),
                                                Container(
                                                    width: 65,
                                                    child: Text(
                                                      "CCTV Security:",
                                                      textAlign:
                                                          TextAlign.center,
                                                    )),
                                                Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 40,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'View Locations',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Text(
                              "Location & Nearby",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(57, 65, 96, 1.0),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Material(
                              elevation: 0.9,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 60,
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    )),
                                child: ListTile(
                                  leading: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orange),
                                    child: Icon(
                                      Icons.school,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  title: Text(
                                    'SCHOOLS',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'View Schools, Colleges, Universities Nearby',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              elevation: 0.9,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 60,
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    )),
                                child: ListTile(
                                  leading: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.green),
                                    child: Icon(
                                      Icons.restaurant_sharp,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  title: Text(
                                    'RESTAURANTS',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'View eateries, restaurant and cafe Nearby',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              elevation: 0.9,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 60,
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    )),
                                child: ListTile(
                                  leading: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red),
                                    child: Icon(
                                      Icons.local_hospital,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  title: Text(
                                    'HOSPITALS',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'View hospitals, Clinics and Health Centres Nearby',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              elevation: 0.9,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 60,
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    )),
                                child: ListTile(
                                  leading: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.purple),
                                    child: Icon(
                                      Icons.nature_people,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  title: Text(
                                    'PARKS',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'View parks, joy lands and playing area nearby',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(57, 65, 96, 1.0),
                              ),
                              child: Center(
                                  child: Text(
                                'View Locations',
                                style: TextStyle(color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      ),
                      ListView(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Property Type",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "1 BEDS FLATS (APARTMENT FOR RENT)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.compare_arrows_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Area',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      "800Sq.Ft",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.price_change_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Text(
                                      "PKR 10,000",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.bed_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Bed',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.bathtub_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Bath',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Text(
                                  "2 BEDS FLATS (APARTMENT FOR RENT)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.compare_arrows_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Area',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      "1,100Sq.Ft",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.price_change_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Text(
                                      "PKR 15,000",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.bed_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Bed',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.bathtub_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Bath',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Text(
                                  "2 BEDS FLATS (COTTAGES FOR RENT)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.compare_arrows_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Area',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      "1,400Sq.Ft",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.price_change_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Text(
                                      "PKR 20,000",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.bed_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Bed',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Icon(
                                          Icons.bathtub_outlined,
                                          color:
                                              Color.fromRGBO(57, 65, 96, 1.0),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Bath',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(57, 65, 96, 1.0),
                                          ),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(),
                                Text(
                                  'Payment Plan',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                  ),
                                ),
                                Image.asset(
                                  'images/DHA.jpg',
                                  height: 220,
                                  width: 250,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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
}
