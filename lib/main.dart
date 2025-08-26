import "package:first_app/ui/root/root_screen.dart";
import "package:first_app/ui/screens/auth/category_page.dart";
import "package:first_app/ui/screens/auth/category_page2.dart";
import "package:first_app/ui/screens/auth/category_page3.dart";

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RootScreen());
  }
}
