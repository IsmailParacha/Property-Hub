import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class FavoriteWidget extends StatelessWidget {
  final String imagelink;
  final String title;
  final String location;
  final String Prize;
  FavoriteWidget(this.imagelink, this.title, this.location, this.Prize);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(7),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height * 0.17,
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('$imagelink'),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
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
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width / 1.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "$title",
                                  style: TextStyle(
                                      color: Color.fromRGBO(57, 65, 96, 1.0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "PKR $Prize",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              '$location',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
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
                                  UrlLauncher.launch("tel://03160923455");
                                },
                                child: Container(
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
          ),
        ],
      ),
    );
  }
}
