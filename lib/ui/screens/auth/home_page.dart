import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/core/constants/strings.dart';
import 'package:first_app/core/constants/text_style.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primeryColor,
          flexibleSpace: SafeArea(
            child: Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                ///
                /// Top Header
                ///
                _header(),

                _offer(),
              ],
            ),
          ),
        ),
      ),
      body: Column(),
    );
  }
}

_header() {
  return Column(
    children: [
      SizedBox(height: 20),
      Image.asset("$staticAssets/app_logo.png", scale: 8),
      SizedBox(height: 20),
      Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.message, color: Colors.white),
            ),
            SizedBox(width: 8),
            Icon(Icons.notifications, color: Colors.white),
          ],
        ),
      ),
      Row(
        children: [
          Icon(Icons.location_city, color: Colors.white),
          Text("Pamulang Barat Residence No.5, RT 05/ ..."),
        ],
      ),
    ],
  );
}

_offer() {
  return Positioned(
    bottom: -140,
    child: Container(
      height: 163,
      width: 307,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [Color(0xffDE6060), Color(0xffB10E0E)],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Discount\n25%",
                  style: style32.copyWith(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 9),
                        blurRadius: 10,

                        color: blackColor,
                      ),
                    ],
                  ),
                ),
                Text(
                  "Non-veg Platter",
                  style: style16.copyWith(color: whiteColor),
                ),
                ElevatedButton(onPressed: () {}, child: Text("See Details")),
              ],
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: Image.asset("$dynamicAssets/img.png", height: 163),
          ),
        ],
      ),
    ),
  );
}
