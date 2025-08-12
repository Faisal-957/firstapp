import 'package:first_app/core/constants/auth_decoration.dart';
import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/core/constants/strings.dart';
import 'package:first_app/core/constants/text_style.dart';
import 'package:first_app/ui/customs_widgets/buttons.dart';
import 'package:flutter/material.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
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
      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
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
              SizedBox(height: 18),

              TextFormField(
                decoration: authDecoration.copyWith(
                  hintText: "Input username",

                  prefixIcon: Image.asset("$iconsAssets/icon.png", scale: 3),
                ),
              ),
              SizedBox(height: 18),

              TextFormField(
                decoration: authDecoration.copyWith(
                  hintText: "Email",

                  prefixIcon: Icon(Icons.email, color: gryColor),
                ),
              ),
              SizedBox(height: 18),

              TextFormField(
                obscureText: isSelect ? false : true,
                decoration: authDecoration.copyWith(
                  hintText: "Input Pasword",
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
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset("$iconsAssets/Group.png", scale: 4),
                  SizedBox(width: 5),
                  Text("I agree to the Terms & Conditions and Privacy Policy"),
                ],
              ),

              SizedBox(height: 10),
              Center(child: CustomButtons(text: "Register")),
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
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
                      'Login',
                      style: style16.copyWith(color: forColor),
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
