import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:property/Screen/ContactUs.dart';
import 'package:property/widgets/PostAnAdd.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:share/share.dart';
import '../DashBoard/fav.dart';
import '../Seller/NavigationDrawer.dart';
import 'package:rating_dialog/rating_dialog.dart';

class userprofile extends StatefulWidget {
  const userprofile({Key? key}) : super(key: key);

  @override
  State<userprofile> createState() => _userprofileState();
}

class _userprofileState extends State<userprofile> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  user.email!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Individual",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 204, 215, 255).withOpacity(0.5),
                  ),
                  child: Center(
                    child: Text(
                      "BASIC",
                      style: TextStyle(
                          color: Color.fromRGBO(57, 65, 96, 1.0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          userdetail(
                              'Profile\nSetting',
                              Icon(
                                Icons.settings,
                                size: 27,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          userdetail(
                              'My Saved\nSearches',
                              Icon(
                                Icons.search,
                                size: 27,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Fav())),
                            child: userdetail(
                                'My\nFavorites',
                                Icon(
                                  Icons.favorite_border_outlined,
                                  size: 27,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          userdetail(
                              'My\nProperties',
                              Icon(
                                Icons.house_siding_outlined,
                                size: 27,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          userdetail(
                              'Draft',
                              Icon(
                                Icons.add_home_outlined,
                                size: 27,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          userdetail(
                              'Quota and\nCredits',
                              Icon(
                                Icons.bar_chart_outlined,
                                size: 27,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PostAdd(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 55,
                  child: ListTile(
                    leading: Icon(
                      Icons.language,
                      size: 28,
                    ),
                    title: Text("Language"),
                    subtitle: Text("English"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactUS()));
                  },
                  child: Container(
                    height: 40,
                    child: ListTile(
                      leading: Icon(
                        Icons.contact_mail,
                        size: 25,
                      ),
                      title: Text("Contact Us"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: _showRatingAppDialog,
                  child: Container(
                    height: 40,
                    child: ListTile(
                      leading: Icon(
                        Icons.feedback_outlined,
                        size: 28,
                      ),
                      title: Text("Feedback"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    final String url = "https://web.whatsapp.com/";
                    // ignore: unused_local_variable
                    final RenderObject? box = context.findRenderObject();
                    Share.share(url);
                  },
                  child: Container(
                    height: 40,
                    child: ListTile(
                      leading: Icon(
                        Icons.insert_invitation,
                        size: 28,
                      ),
                      title: Text("Invitation"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  child: ListTile(
                    leading: Icon(
                      Icons.notes_rounded,
                      size: 28,
                    ),
                    title: Text("Terms and Privacy Policy"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                ),
                Container(
                  height: 55,
                  child: ListTile(
                    leading: Icon(
                      Icons.logout_outlined,
                      size: 28,
                      color: Colors.red,
                    ),
                    title: Text(
                      "Log Out",
                      style: TextStyle(color: Colors.red),
                    ),
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showRatingAppDialog() {
    final _ratingDialog = RatingDialog(
      starColor: Colors.amber,
      title: Text('How is Your experience with Property Hub app?'),
      // message: Text(''),
      // image: Image.asset(
      //   "images/logo3.jpeg",
      //   height: 100,
      // ),
      submitButtonText: 'Submit',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        print('rating: ${response.rating}, '
            'comment: ${response.comment}');

        if (response.rating < 3.0) {
          print('response.rating: ${response.rating}');
        } else {
          Container();
        }
      },
    );

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => _ratingDialog,
    );
  }
}

Widget userdetail(var name, var iconname) {
  return Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(10),
    child: Container(
      width: 110,
      height: 100,
      // decoration: BoxDecoration(
      //     color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            iconname,
            Text(
              "$name",
              style: TextStyle(fontSize: 15, height: 1.0),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
  );
}
