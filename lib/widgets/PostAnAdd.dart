import 'package:flutter/material.dart';

class PostAdd extends StatelessWidget {
  const PostAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) =>
        //             DashBoardSeller()));
      },
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 0.9,
        child: Container(
          height: 130,
          width: 350,
          //  width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'images/home.png',
                    height: 90,
                    width: 90,
                  ),
                  Container(
                    width: 210,
                    child: Text(
                      'Looking to sell or rent out your property?',
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(57, 65, 96, 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Post an Ad',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
