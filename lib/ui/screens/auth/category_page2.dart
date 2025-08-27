import 'package:first_app/core/constants/auth_decoration.dart';
import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/core/constants/strings.dart';
import 'package:flutter/material.dart';

class CategoryPage2 extends StatelessWidget {
  const CategoryPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 👆 Fixed Stack (Header part)
          Stack(
            children: [
              Image.asset(
                "$iconsAssets/frame.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    Image.asset("$staticAssets/app_logo.png", scale: 10),
                    SizedBox(width: 10),
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

          // 👇 GridView wrapped in Expanded
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // 2 columns
              crossAxisSpacing: 20,
              mainAxisSpacing: 30,
              childAspectRatio: 0.9,
              padding: const EdgeInsets.all(16),
              children: List.generate(8, (index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white54,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(5, 5),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image.asset(
                          "$dynamicAssets/image.png",
                          height: 170,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Sardar Ji Cottrelle Blvd",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "20 % OFF",
                            style: TextStyle(color: Color(0xff4CAD73)),
                          ),
                          Text(
                            "1975 Cottrelle Blvd, Brampton, ON L6P 2Z8 -",
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
