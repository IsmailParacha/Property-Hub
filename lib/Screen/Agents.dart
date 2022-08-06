import 'package:flutter/material.dart';

class Agents extends StatelessWidget {
  const Agents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Agents",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.man_sharp),
            ),
            title: Text("Imran Shah"),
          )
        ],
      ),
    );
  }
}
