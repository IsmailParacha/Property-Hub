import 'package:flutter/material.dart';

import 'login.dart';

class loginsignup extends StatelessWidget {
  const loginsignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                    width: 250,
                    height: 250,
                    child: Image.asset('images/logo2.png')),
                Center(
                  child: InkWell(
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
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
