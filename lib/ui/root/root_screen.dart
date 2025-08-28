import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/core/constants/strings.dart';
import 'package:first_app/ui/screens/auth/category_page.dart';
import 'package:first_app/ui/screens/auth/category_page2.dart';
import 'package:first_app/ui/screens/auth/category_page3.dart';
import 'package:first_app/ui/screens/auth/home_page.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int selectIndex = 0;

  onClick(value) {
    selectIndex = value;
  }

  List<Widget> screens = [
    HomePage(),
    Category(),
    CategoryPage2(),
    CategoryPage3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectIndex],

      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.25),
              offset: Offset(0, 3),
              blurRadius: 4,
              spreadRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  onClick(0);
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: selectIndex == 0
                    ? primeryColor
                    : Colors.transparent,
                child: Image.asset(
                  "$iconsAssets/menu.png",
                  scale: 3,
                  color: selectIndex == 0 ? whiteColor : gryColor,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  onClick(1);
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: selectIndex == 1
                    ? primeryColor
                    : Colors.transparent,
                child: Image.asset(
                  "$iconsAssets/menu.png",
                  scale: 3,
                  color: selectIndex == 1 ? whiteColor : gryColor,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  onClick(2);
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: selectIndex == 2
                    ? primeryColor
                    : Colors.transparent,
                child: Image.asset(
                  "$iconsAssets/bag.png",
                  scale: 3,
                  color: selectIndex == 2 ? whiteColor : gryColor,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  onClick(3);
                });
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: selectIndex == 3
                    ? primeryColor
                    : Colors.transparent,
                child: Image.asset(
                  "$iconsAssets/menu1.png",
                  color: selectIndex == 3 ? whiteColor : gryColor,
                  scale: 3,
                ),
              ),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: selectIndex,
      //   // selectedItemColor: Colors.blue,
      //   // unselectedItemColor: blackColor,
      //   onTap: (value) {
      //     setState(() {
      //       selectIndex = value;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Image.asset("$iconsAssets/menu3.png", height: 54, width: 54),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset("$iconsAssets/menu.png", height: 54, width: 54),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset("$iconsAssets/bag.png", height: 24, width: 24),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset("$iconsAssets/menu1.png", height: 24, width: 24),
      //       label: "",
      //     ),
      //   ],
      // ),
    );
  }
}
