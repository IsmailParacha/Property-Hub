import 'package:flutter/material.dart';
import 'package:property/Login/login.dart';

import '../DashBoard/Dashboard.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  State createState() => _NewAccountState();
}

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(57, 65, 96, 1.0),
      body: Stack(
        children: [
          ListView(
            children: [
              Form(
                key: _formkey,
                child: Column(
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
                          validator: (value) {
                            if (value != null && value != "") {
                              if (value.length < 6) {
                                return "Username length should be atleast 6";
                              } else {
                                return null;
                              }
                            } else {
                              return "Username cannot be empty";
                            }
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
                        validator: (value) {
                          if (value != null && value != "") {
                            if (!regExp.hasMatch(value)) {
                              return "Email is invalid";
                            } else {
                              return null;
                            }
                          } else {
                            return "Email cannot be empty";
                          }
                        },
                        style: TextStyle(color: Colors.white),
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
                      child: TextFormField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
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
                      child: TextFormField(
                          style: TextStyle(color: Colors.white),
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
                          SizedBox(
                            height: 5,
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
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashBoard()));
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
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
