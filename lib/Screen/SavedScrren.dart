import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:property/Screen/Search.dart';
import 'package:property/Seller/NavigationDrawer.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            Text(
              "Saved Searches",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.network(
                      'https://assets4.lottiefiles.com/packages/lf20_xbf1be8x.json'),
                  Text(
                    "No Saved Searches!",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(57, 65, 96, 1.0),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Looks Like you haven't search any ads.\nYou can search add by tapping on search\nbutton & also from search icons & Search bar in home page.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search())),
                      child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(57, 65, 96, 1.0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: const Text(
                              'Search Property',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )),
                    ),
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
