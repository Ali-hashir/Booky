import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Vendor/New_Service/Newad.dart';
import 'package:flutter_auth/Screens/passenger/Passenger_homepage/Passhomepage.dart';
import 'package:flutter_auth/Screens/Vendor/Homepage/VendorHome.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  Body({
    Key key,
  }) : super(key: key);
  //boolean to check if the user is service provider or passenger
  bool passenger,vendor = false;
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
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            // RoundedInputField(
            //   hintText: "Vendor or Passenger",
            //   onChanged: (value) {},
            // ),
            ListTile(  
          title: const Text('Passenger'),  
          leading: Radio(  
            value: true,  
            groupValue: passenger,  
            onChanged: (bool value) {   
              setState(() {  
                passenger = value;  
              });  
            },  
          ),  
        ),  
        ListTile(  
          title: const Text('Vendor'),  
          leading: Radio(  
            value: true,  
            groupValue: vendor,  
            onChanged: (bool value) {   
              setState(() {  
                vendor = value;  
              });  
            },  
          ),  
        ),  
            // Radio(
            //     value: "Passenger",
            //     groupValue: "passen",
            //     onChanged: (value) {
            //         SP = true;
            //     }),
            RoundedButton(
              text: "As a Passenger",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Passhomepage();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "As A Vendor",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VendorHome();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
