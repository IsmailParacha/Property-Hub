import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:property/Screen/Agents.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:share/share.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/home.jpeg'), fit: BoxFit.cover)),
            child: DrawerHeader(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Ismail Paracha",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "Introduction",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: Icon(Icons.announcement_outlined,
                size: 30.0, color: Color.fromRGBO(57, 65, 96, 1.0)),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Our Goals",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: Icon(Icons.assistant_photo_rounded,
                size: 30.0, color: Color.fromRGBO(57, 65, 96, 1.0)),
            onTap: () {},
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Agents()));
            },
            child: ListTile(
              title: Text(
                "Agents",
                style: TextStyle(fontSize: 18.0),
              ),
              leading: Icon(Icons.support_agent_outlined,
                  size: 30.0, color: Color.fromRGBO(57, 65, 96, 1.0)),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Agents()));
              },
            ),
          ),
          ListTile(
            title: Text(
              "About",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: Icon(Icons.info,
                size: 30.0, color: Color.fromRGBO(57, 65, 96, 1.0)),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Abouts()));
            },
          ),
          ListTile(
            title: Text(
              "Share",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: Icon(Icons.share,
                size: 30.0, color: Color.fromRGBO(57, 65, 96, 1.0)),
            onTap: () {
              final String url = "https://web.whatsapp.com/";
              // ignore: unused_local_variable
              final RenderObject? box = context.findRenderObject();
              Share.share(url);
            },
          ),
          ListTile(
            title: Text(
              "Log Out",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: Icon(Icons.settings_power_outlined,
                size: 30.0, color: Color.fromRGBO(57, 65, 96, 1.0)),
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
          ),
          SizedBox(
            height: 45,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Powered By'),
                Text(
                  'PropertyHub',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(57, 65, 96, 1.0)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 20,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/facebook.png'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/instagram.png'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/twitter.png'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
