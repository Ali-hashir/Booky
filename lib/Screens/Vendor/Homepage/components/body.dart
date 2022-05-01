import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Vendor/New_Service/NewAd.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  Body({
    Key key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.01),
            SvgPicture.asset(
              "assets/icons/logo-train.svg",
              height: size.height * 0.25,
            ),
            SizedBox(height: size.height * 0.01),
            Text("Hello! Vendor",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            RoundedButton(
              text: "New Service",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NewAd();
                    },
                  ),
                );
              },
            ),
            Text("Current Services:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),            
            Text("Offer 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Offer 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Offer 3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );  }
}