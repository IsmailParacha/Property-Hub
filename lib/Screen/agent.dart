import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class Agents extends StatefulWidget {
  const Agents({Key? key}) : super(key: key);

  @override
  _AgentsState createState() => _AgentsState();
}

class _AgentsState extends State<Agents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Agents',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.2,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (
                  BuildContext context,
                  int a,
                ) {
                  return Agents((name1[a]), (name2[a]), (img1[a]));
                }),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Agents(var name1, var name2, var img1) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 5,
          child: Container(
            height: 120,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 3.0),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(img1), fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      // Container(
                      //   color: Colors.red,
                      //   height: 15,
                      //   width: 40,
                      //   child: Center(
                      //       child: Text(
                      //     'Platinum',
                      //     style: TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 9,
                      //         fontWeight: FontWeight.bold),
                      //   )),
                      // )
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
                          name1,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          name2,
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
                          InkWell(
                            onTap: () async {
                              // ignore: deprecated_member_use
                              UrlLauncher.launch(
                                  "mailto:ismailjanparacha@gmail.com?"
                                  "subject=This mail is from PropertHub");
                            },
                            child: Container(
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
                          ),
                          InkWell(
                            onTap: () async {
                              // ignore: deprecated_member_use
                              UrlLauncher.launch("tel://0210000000");
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 30,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(57, 65, 96, 1.0),
                                border: Border.all(),
                              ),
                              child: Center(
                                  child: Text(
                                'Call',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              // ignore: deprecated_member_use
                              UrlLauncher.launch("sms:03160923455");
                            },
                            child: Container(
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
      ],
    );
  }

  var name1 = [
    'Lake Developers',
    'Mehar Developers',
    'Behria State',
  ];
  var name2 = [
    'DHA Defence, Lahore',
    'Behria Nasheman, Karachi',
    'Lahore Park View',
  ];
  var img1 = [
    'images/male.png',
    'images/male.png',
    'images/male.png',
  ];
}
