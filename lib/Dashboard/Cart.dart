import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int i) {
            return design(name[i], 'images/add.jpg');
          }),
    );
  }

  Widget design(var name, var img) {
    return Column(
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(90)),
          ),
        ),
        Center(
          child: Text(name),
        )
      ],
    );
  }

  var name = [
    'azam',
    'ali',
  ];
}
