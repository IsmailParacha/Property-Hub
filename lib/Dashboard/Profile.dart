import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:property/Dashboard/Dashboard.dart';
import 'package:property/Login/login.dart';
import 'package:property/Login/login_signup.dart';
import 'package:property/Screen/userprofile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return userprofile();
          } else if (Snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (Snapshot.hasError) {
            return Center(
              child: Text("Error"),
            );
          } else {
            return loginsignup();
          }
        },
      ),
    );
  }
}
