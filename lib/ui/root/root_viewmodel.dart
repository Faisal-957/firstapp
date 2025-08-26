import 'package:first_app/ui/screens/auth/category_page.dart';
import 'package:first_app/ui/screens/auth/login_screen.dart';
import 'package:first_app/ui/screens/auth/singup.dart';
import 'package:flutter/material.dart';

class RootViewmodel extends ChangeNotifier {
  int currentIndex = 0;
  void selectedindex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  List<Widget> allScreen = [LoginScreen(), Singup(), Category()];
}
