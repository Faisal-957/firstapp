import 'package:first_app/core/constants/auth_decoration.dart';
import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/core/constants/strings.dart';
import 'package:first_app/core/constants/text_style.dart';
import 'package:first_app/ui/screens/auth/category_page2.dart';
import 'package:first_app/ui/screens/auth/login_screen.dart';

import 'package:first_app/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int currentindexvalue = 0;

  List screenlist = [SplashScreen(), CategoryPage2(), LoginScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // Background image
              Image.asset(
                "$iconsAssets/frame.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // Row with icon + textfield
              Positioned(
                top: 40, // 👈 adjust position
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    Image.asset("$staticAssets/app_logo.png", scale: 10),

                    SizedBox(width: 10),

                    // Expanded so TextField gets width
                    Expanded(
                      child: TextFormField(
                        decoration: authDecoration.copyWith(
                          fillColor: whiteColor,
                          filled: true,
                          hintText: "search resturent for",
                          hintStyle: TextStyle(color: gryColor),
                          prefixIcon: Icon(Icons.search, color: gryColor),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Container(
                    height: 180,
                    width: 378,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffDE6060), Color(0xffB10E0E)],
                      ),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(width: 0.75, color: blackColor),

                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          color: blackColor.withOpacity(0.19),
                          blurRadius: 20,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "All The Restaurants",
                                style: style16.copyWith(color: whiteColor),
                              ),
                              Text(
                                "Discount",
                                style: style16.copyWith(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Offers",
                                style: style32.copyWith(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.yellowAccent,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text("See Details"),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            "$dynamicAssets/img.png",
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            currentindexvalue, // 👈 yahan selected tab ka index aata hai
        onTap: (index) {
          // 👈 user ne kaunsa tab click kiya
          setState(() {
            currentindexvalue = index; // 👈 update kar dete hain
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ), // index = 0
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ), // index = 1
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ), // index = 2
        ],
      ),
    );
  }
}
