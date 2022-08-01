import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:property/Screen/Utils.dart';

class forgetscreen extends StatefulWidget {
  forgetscreen({Key? key}) : super(key: key);

  @override
  State<forgetscreen> createState() => _forgetscreenState();
}

class _forgetscreenState extends State<forgetscreen> {
  final emailcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Reset Password",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Receive an email to \n reset your password",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: emailcontroller,
              cursorColor: Colors.black,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Enter Email here",
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (email) =>
                  email != null && !EmailValidator.validate(email)
                      ? "enter a valid Email"
                      : null,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: resetpassword,
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
              icon: Icon(Icons.email_outlined),
              label: Text(
                "Reset Password",
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        )),
      ),
    );
  }

  Future resetpassword() async {
    // showDialog(
    //    context: context,
    //     barrierDismissible: false,
    //     builder: (context) => Center(
    //           child: CircularProgressIndicator(),
    //         ));
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailcontroller.text.trim());
      Utils.showSnackBar("Reset passwrod Link sent to Email");
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(e.message);
    }
  }
}
