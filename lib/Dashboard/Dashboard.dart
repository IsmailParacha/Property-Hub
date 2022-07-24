import 'package:flutter/material.dart';
import 'package:property/Screen/Search.dart';

import 'fav.dart';
import 'home.dart';
import 'Profile.dart';
import 'Projects.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int currentTab = 0;
  final List<Widget> screens = [Home(), Projects(), Fav(), Profile()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Search()));
          },
          child: Image.asset(
            "images/Logo1.jpeg",
            height: 40,
            width: 40,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40.0,
                    onPressed: () {
                      setState(() {
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: currentTab == 0
                              ? Color.fromRGBO(57, 65, 96, 1.0)
                              : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 0
                                ? Color.fromRGBO(57, 65, 96, 1.0)
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40.0,
                    onPressed: () {
                      setState(() {
                        currentScreen = Projects();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_work_outlined,
                          color: currentTab == 1
                              ? Color.fromRGBO(57, 65, 96, 1.0)
                              : Colors.grey,
                        ),
                        Text(
                          'Projects',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 1
                                ? Color.fromRGBO(57, 65, 96, 1.0)
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //right tab bar view
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40.0,
                    onPressed: () {
                      setState(() {
                        currentScreen = Fav();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: currentTab == 2
                              ? Color.fromRGBO(57, 65, 96, 1.0)
                              : Colors.grey,
                        ),
                        Text(
                          'Favourites',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 2
                                ? Color.fromRGBO(57, 65, 96, 1.0)
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40.0,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: currentTab == 3
                              ? Color.fromRGBO(57, 65, 96, 1.0)
                              : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 3
                                ? Color.fromRGBO(57, 65, 96, 1.0)
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
