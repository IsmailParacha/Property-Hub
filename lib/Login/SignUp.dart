import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'login.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return Colors.white;
  }

  bool _isObscure = true;
  bool value = false;

  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final namecontroller = TextEditingController();
  final phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(57, 65, 96, 1.0),
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      child: TextFormField(
                          controller: namecontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter some text User Can't be empthy";
                            }
                            return null;
                          },
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              errorStyle: TextStyle(
                                  color: Color.fromARGB(255, 248, 152, 145)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 182, 0, 1.0)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(Icons.mail,
                                  color: Color.fromRGBO(255, 182, 0, 1.0)),
                              hintStyle: TextStyle(color: Colors.white60),
                              hintText: 'Enter Your Name')),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      child: TextFormField(
                        controller: emailcontroller,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 182, 0, 1.0)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.mail,
                                color: Color.fromRGBO(255, 182, 0, 1.0)),
                            hintStyle: TextStyle(color: Colors.white60),
                            hintText: 'Enter Your Email'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      child: TextField(
                          controller: passwordcontroller,
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 182, 0, 1.0)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                            prefixIcon: Icon(Icons.lock,
                                color: Color.fromRGBO(255, 182, 0, 1.0)),
                            hintStyle: TextStyle(color: Colors.white60),
                            hintText: 'Enter Your Password',
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      child: TextField(
                          controller: phonecontroller,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 182, 0, 1.0)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              labelText: 'Phone No',
                              labelStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(Icons.phone,
                                  color: Color.fromRGBO(255, 182, 0, 1.0)),
                              hintStyle: TextStyle(color: Colors.white60),
                              hintText: 'Enter Your Phone Number')),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Checkbox(
                          activeColor: Colors.black,
                          checkColor: Colors.black,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(color: Colors.white60),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'All fields are required.',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Container(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    height: 1.6,
                                    color: Colors.white,
                                    fontSize: 12),
                                children: [
                                  TextSpan(
                                      text: 'By Pressing "SUBMIT" I declare  '),
                                  TextSpan(
                                      text:
                                          'that I have read and I agree to the PropertyHub.com'),
                                  TextSpan(
                                      text: " Terms & Conditions.",
                                      style: TextStyle(color: Colors.blue)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 182, 0, 1.0),
                            borderRadius: BorderRadius.circular(70)),
                        child: Center(
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                          signup();
                        }
                      },
                    ),
                    SizedBox(height: 5),
                    Text(
                      '- OR -',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Sign in with',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(90)),
                          child: Center(
                            child: Text(
                              'f',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 40),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/google.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(90)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          " Sign In",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                      ),
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future signup() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailcontroller.text.trim(),
          password: passwordcontroller.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
