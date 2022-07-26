import 'package:flutter/material.dart';

import '../DashBoard/Dashboard.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(57, 65, 96, 1.0),
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: TextField(
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
                            hintText: 'Enter Your Email')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: TextField(
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
                          prefixIcon: Icon(Icons.lock,
                              color: Color.fromRGBO(255, 182, 0, 1.0)),
                          hintStyle: TextStyle(color: Colors.white60),
                          hintText: 'Enter Your Password',
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18,
                    ),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Checkbox(
                        activeColor: Colors.black,
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
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
                  SizedBox(
                    height: 20,
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
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DashBoard()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '- OR -',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sign in with',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          " Sign Up",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewAccount()));
                        },
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
