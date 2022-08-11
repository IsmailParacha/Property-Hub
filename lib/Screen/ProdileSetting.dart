import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileSetting extends StatelessWidget {
  final List<String> currency = [
    'PKR',
    'IND',
    'IRN',
    'DLR',
  ];
  final List<String> Areaitems = [
    'Square Feet',
    'Marla',
    'Kanal',
  ];
  final List<String> Language = [
    'English',
    'Urdu',
    'Arbi',
    'Hondi',
  ];
  var curren = "";
  String? selectedValue;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Profile Setting",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData.fallback()),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(57, 65, 96, 1.0)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Name',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(57, 65, 96, 1.0)),
                  )),
              const SizedBox(height: 18),
              TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(57, 65, 96, 1.0)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Email Address',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(57, 65, 96, 1.0)),
                  )),
              const SizedBox(height: 18),
              Divider(
                height: 10.0,
                color: Colors.grey,
              ),
              const SizedBox(height: 18),
              TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(57, 65, 96, 1.0)),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    labelText: 'Phone Number 1',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(57, 65, 96, 1.0)),
                  )),
              const SizedBox(height: 30),
              TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(57, 65, 96, 1.0)),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    labelText: 'Phone Number 2',
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(57, 65, 96, 1.0)),
                  )),
              const SizedBox(height: 18),
              //Currency
              Divider(
                height: 10.0,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField2(
                decoration: InputDecoration(
                  //Add isDense true and zero Padding.
                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //Add more decoration as you want here
                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                ),
                isExpanded: true,
                hint: const Text(
                  'Currency',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(57, 65, 96, 1.0)),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding: const EdgeInsets.only(left: 18, right: 10),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                items: currency
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select gender.';
                  }
                  return null;
                },
                onChanged: (value) {
                  //Do something when changing the item if you want.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField2(
                decoration: InputDecoration(
                  //Add isDense true and zero Padding.
                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //Add more decoration as you want here
                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                ),
                isExpanded: true,
                hint: const Text(
                  'Area',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(57, 65, 96, 1.0)),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                items: Areaitems.map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    )).toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Area';
                  }
                  return null;
                },
                onChanged: (value) {
                  //Do something when changing the item if you want.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField2(
                decoration: InputDecoration(
                  //Add isDense true and zero Padding.
                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //Add more decoration as you want here
                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                ),
                isExpanded: true,
                hint: const Text(
                  'Language',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(57, 65, 96, 1.0)),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                items: Language.map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    )).toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Language';
                  }
                  return null;
                },
                onChanged: (value) {
                  //Do something when changing the item if you want.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: Expanded(
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(57, 65, 96, 1.0),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: const Text(
                            'Submit Button',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
