// ignore_for_file: deprecated_member_use

import 'package:first_app/core/constants/auth_decoration.dart';
import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/core/constants/strings.dart';
import 'package:first_app/core/constants/text_style.dart';

import 'package:first_app/ui/customs_widgets/buttons.dart';
import 'package:first_app/ui/screens/auth/singup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSelect = false;
  // ignore: non_constant_identifier_names
  OnClick() {
    setState(() {
      isSelect = !isSelect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar start
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 5,
                spreadRadius: -1,
                color: Color(0xff000000),
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              "$iconsAssets/arrow_back.png",
              width: 8.4375,
              height: 16.875,
            ),
          ),
        ),
      ),

      // body:
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),

              Center(
                child: Image.asset(
                  "$staticAssets/app_logo.png",
                  width: 243,
                  height: 62,
                  color: primeryColor,
                ),
              ),

              SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("Welcome Back 👋", style: styleheading),
              ),
              SizedBox(height: 20),
              Text("Username ", style: TextStyle(color: blackColor)),

              TextFormField(
                decoration: authDecoration.copyWith(
                  hintText: "Email",

                  prefixIcon: Image.asset("$iconsAssets/icon.png", scale: 3),
                ),
              ),
              SizedBox(height: 10),
              Text("Password", style: TextStyle(color: blackColor)),

              TextFormField(
                obscureText: isSelect ? false : true,
                decoration: authDecoration.copyWith(
                  hintText: "Pasword",
                  prefixIcon: Image.asset("$iconsAssets/iconkey.png", scale: 3),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      OnClick();
                    },
                    child: isSelect
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot pasword ?",
                  style: style16.copyWith(color: forColor),
                ),
              ),
              SizedBox(height: 10),
              Center(child: CustomButtons(text: "Login")),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Image.asset("$iconsAssets/Line1.png", scale: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Continue with"),
                  ),

                  Expanded(
                    child: Image.asset("$iconsAssets/Line2.png", scale: 1),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 319,
                  height: 45,
                  decoration: BoxDecoration(
                    border: BoxBorder.all(color: gryColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: Row(
                      children: [
                        Image.asset("$iconsAssets/google.png", scale: 3),
                        Text("Continue with Google"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account",
                    style: style16.copyWith(color: blackColor),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Singup()),
                      );
                    },
                    child: Text(
                      'Registerd',
                      style: style16.copyWith(color: Colors.pink),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
