import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/core/constants/strings.dart';
import 'package:first_app/ui/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: primeryColor,
        body: Center(
          child: Image.asset(
            "$staticAssets/app_logo.png",
            height: 77,
            width: 304,
          ),
        ),
      ),
    );
  }
}
