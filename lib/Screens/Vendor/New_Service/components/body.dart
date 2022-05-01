import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  Body({
    Key key,
  }) : super(key: key);

  String dropdownvalue = 'Car';   
  
  // List of items in our dropdown menu
  var items = [    
    'Car',
    'Train',
    'Rental Car',
    'Bus'
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   "LOGIN",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            SizedBox(height: size.height * 0.01),
            SvgPicture.asset(
              "assets/icons/logo-train.svg",
              height: size.height * 0.25,
            ),
            SizedBox(height: size.height * 0.01),
            DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  dropdownvalue = value;
                });
              },
            ),
            RoundedInputField(
              hintText: "From",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "To",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Date",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Time",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Search",
              press: () {},
            ),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
