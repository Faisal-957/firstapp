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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150),

            Text(textAlign: TextAlign.start, "Categoris", style: style32),
            SizedBox(
              height: 200,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      height: 110,
                      width: 100,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("$dynamicAssets/pizza.png"),
                          ),
                          Text("pizza"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Text("Top rated for you", style: style32),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "beauty",
                    style: style18.copyWith(color: blackColor),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "jewlary",
                    style: style18.copyWith(color: blackColor),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "pizza",
                    style: style18.copyWith(color: blackColor),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Resturent",
                    style: style18.copyWith(color: blackColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
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
