import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}
class _SearchState extends State<Search> {
  int currentTab=0;
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Color.fromRGBO(57, 65, 96, 1.0);
    }
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names, unused_local_variable
    var door_back_outlined;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 24, right: 20),
              child: Text(
                'Done', style: TextStyle(color: Colors.black45, fontSize: 16),),
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('Filters', style: TextStyle(color: Colors.black),),
          iconTheme: IconThemeData.fallback(),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(

                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                            color: Color.fromRGBO(57, 65, 96, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            padding: EdgeInsets.only(left: 30,right: 30,),
                            child: TextField(

                                style: TextStyle(color: Colors.black),
                                decoration:InputDecoration(

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(57, 65, 96, 1.0)),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(255, 182, 0, 1.0)),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)
                                    ),
                                  ),

                                  labelText: 'Search for Construction',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  prefixIcon: Icon(Icons.search,color:Color.fromRGBO(57, 65, 96, 1.0)),
                                  hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                                  hintText: 'Property Developer',



                                )
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(57, 65, 96, 1.0),
                              border: Border.all(
                                color: Color.fromRGBO(57, 65, 96, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('Search',style: TextStyle( color: Colors.white,),)),
                          )
                        ],
                      )
                    ),
                    Divider(),
                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 114,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.where_to_vote,
                                  color: Color.fromRGBO(57, 65, 96, 1.0),),
                                SizedBox(width: 20,),
                                Text('I want to', style: TextStyle(fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade400
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: TextButton(onPressed: () {},
                                      child: Text("Buy",
                                        style:
                                        TextStyle(fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),)),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),
                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                ),
                                TextButton(onPressed: () {},
                                  child: Text("Rent",
                                    style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),),),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(

                      leading: Icon(Icons.location_on_outlined,
                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                      title: Text('City',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                      subtitle: Text('Lahore'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16,),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.assessment_outlined,
                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                      title: Text('Selection Location',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),

                      trailing: Icon(Icons.arrow_forward_ios, size: 16,),
                    ),
                    Divider(),
                    Container(
                      color: Colors.grey.shade400,
                      child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(57, 65, 96, 1.0),
                          ),
                          tabs: [
                            Tab(text: 'Homes',),
                            Tab(text: 'Plots',),
                            Tab(text: 'Commercial',),
                          ]),
                    ),

                    SizedBox(
                      height: 60,
                      child: TabBarView(children: [
                        Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 60,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.assignment_turned_in_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('All', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 80,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.home_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('House', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 70,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.home_work_rounded,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Flate', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 120,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.apartment_sharp,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Upper Portion', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 120,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.apartment_sharp,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Lower Portion', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 110,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.water_damage_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Farm House', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 80,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.door_back_door_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Room', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 110,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.account_balance_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Penthouse', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 60,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.assignment_turned_in_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('All', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 140,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.home_work_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Residential Plot', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 140,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.home_work_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Commercial Plot', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 140,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.home_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Agricultural Land', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 100,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.file_copy_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Plot File', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 100,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.upload_file,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Plot Form', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),

                                ],
                              ),
                            )
                        ),
                        Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 60,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.assignment_turned_in_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('All', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 80,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.home_work_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Office', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 70,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.shopping_bag_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Shop', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 120,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.account_balance_outlined,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Warehouse', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 100,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.apartment,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Factory', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 110,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.apartment_sharp,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Farm House', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),
                                  TextButton(onPressed: () {}, child: Container(
                                    width: 80,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(57, 65, 96, 0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.add,
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),
                                        Text('Room', style: TextStyle(
                                          color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                      ],
                                    ),
                                  ),
                                  ),


                                ],
                              ),
                            )
                        ),
                      ],),
                    ),
                    SizedBox(height: 10,),

                    Divider(),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.attach_money, color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  Text('Price Range',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(57, 65, 96, 1.0),)
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              width: 90,
                              height: 20,
                              child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(255, 182, 0, 1.0)),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)
                                      ),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                        Text('To',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text('PKR',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(57, 65, 96, 1.0),)),
                                  InkWell(
                                      onTap: () {
                                        showDialog(context: context, builder: (context) {
                                          return AlertDialog(
                                            title: Text('Change Currency'),

                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            actions: [
                                              ListTile(
                                                leading: Icon(Icons.arrow_right, color: Color.fromRGBO(255, 182, 0, 1.0)),
                                                title: Text('Pakistan'),
                                                subtitle: Text('(PKR)'),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.arrow_right, color: Color.fromRGBO(255, 182, 0, 1.0)),
                                                title: Text('Canada'),
                                                subtitle: Text('(CAD)'),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.arrow_right, color: Color.fromRGBO(255, 182, 0, 1.0)),
                                                title: Text('Saudi Arabia'),
                                                subtitle: Text('(SAR)'),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.arrow_right, color: Color.fromRGBO(255, 182, 0, 1.0)),
                                                title: Text('United Arab Emirates'),
                                                subtitle: Text('(AED)'),
                                              ),

                                            ],
                                          );
                                        }
                                        );
                                      },
                                      child: Icon(Icons.arrow_drop_down,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),)),
                                ],
                              ),
                            ),

                            Container(
                              width: 70,
                              height: 20,
                              child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  decoration:InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color:Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(255, 182, 0, 1.0)),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)
                                      ),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(),
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.architecture,color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  Text('Area Range',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              width: 90,
                              height: 20,
                              child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  decoration:InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color:Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(255, 182, 0, 1.0)),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)
                                      ),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                        Text('To',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text('Marla',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(57, 65, 96, 1.0),)),
                                  InkWell(
                                      onTap: () {
                                        showDialog(context: context, builder: (context) {
                                          return AlertDialog(

                                            title: Text('Change Area Unit'),

                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            actions: [
                                              ListTile(
                                                leading: Icon(Icons.arrow_right, color: Color.fromRGBO(255, 182, 0, 1.0)),
                                                title: Text('Square Feet'),
                                                subtitle: Text('(sq.ft.)'),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.arrow_right, color: Color.fromRGBO(255, 182, 0, 1.0)),
                                                title: Text('Square Meters'),
                                                subtitle: Text('(sq.m.)'),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.arrow_right, color: Color.fromRGBO(255, 182, 0, 1.0)),
                                                title: Text('Square Yards'),
                                                subtitle: Text('(sq.yd)'),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.arrow_right, color: Color.fromRGBO(255, 182, 0, 1.0)),
                                                title: Text('Marla'),

                                              ),
                                              ListTile(
                                                leading: Icon(Icons.arrow_right, color: Color.fromRGBO(255, 182, 0, 1.0)),
                                                title: Text('Kanal'),

                                              ),

                                            ],
                                          );
                                        }
                                        );
                                      },
                                      child: Icon(Icons.arrow_drop_down,
                                        color: Color.fromRGBO(57, 65, 96, 1.0),)),
                                ],
                              ),
                            ),

                            Container(
                              width: 70,
                              height: 20,
                              child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  decoration:InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color:Color.fromRGBO(57, 65, 96, 1.0),),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(255, 182, 0, 1.0)),
                                      borderRadius: BorderRadius.all(Radius.circular(5.0)
                                      ),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 35),
                                child: Text('Show Verified Ads',
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(57, 65, 96, 1.0),)),
                              ),
                              Container(
                                width: 150,
                                child: Text('Property Hub Verifies the location size and advertiser information of these listings.',
                                    style: TextStyle(fontSize: 10,color: Colors.grey)),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 60,),
                        Checkbox(
                          activeColor: Colors.white,
                          checkColor: Color.fromRGBO(57, 65, 96, 1.0),
                          fillColor: MaterialStateProperty.resolveWith(getColor),

                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });

                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.king_bed_outlined,color: Color.fromRGBO(57, 65, 96, 1.0),),
                          SizedBox(width: 10,),
                          Text('Bedrooms',style: TextStyle(color: Color.fromRGBO(57, 65, 96, 1.0,),fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 85,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(57, 65, 96, 1.0),),
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(57, 65, 96, 0.2),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.meeting_room_outlined,
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  Text('Studio', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                ],
                              ),
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('1', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('2', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('3', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('4', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(57, 65, 96, 1.0),),
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(57, 65, 96, 0.2),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('5', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                ],
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                        margin: EdgeInsets.only(right: 100),
                        width: 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(57, 65, 96, 1.0),),
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(57, 65, 96, 0.2),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('6', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                ],
                              ),
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('7', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('8', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('9', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('+10', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 10,),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.bathtub_outlined,color: Color.fromRGBO(57, 65, 96, 1.0),),
                          SizedBox(width: 10,),
                          Text('Bathrooms',style: TextStyle(color: Color.fromRGBO(57, 65, 96, 1.0,),fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(57, 65, 96, 1.0),),
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(57, 65, 96, 0.2),
                              ),
                              child: Center(
                                child: Text('1', style: TextStyle(
                                  color: Color.fromRGBO(57, 65, 96, 1.0),),),
                              ),
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('2', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('3', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('4', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(57, 65, 96, 0.2),
                                ),
                                child: Center(
                                  child: Text('5', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),),
                                )
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(57, 65, 96, 1.0),),
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(57, 65, 96, 0.2),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('+6', style: TextStyle(
                                    color: Color.fromRGBO(57, 65, 96, 1.0),),)
                                ],
                              ),
                            ),
                          ],
                        )
                    ),

                    SizedBox(height: 10,),
                    Divider(),
                    SizedBox(height: 10,),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(57, 65, 96, 1.0),
                      ),
                      child: Center(
                          child: Text('Show Ads',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                    SizedBox(height: 30,),

                  ],
                )
              ],
            ),
          ]
          ,
        ),
    ));
  }
}

// ignore: camel_case_types
class door_back_outline{
}
