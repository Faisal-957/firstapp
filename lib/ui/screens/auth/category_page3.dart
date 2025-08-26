import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/core/constants/strings.dart';
import 'package:first_app/core/constants/text_style.dart';
import 'package:first_app/ui/customs_widgets/buttons.dart';
import 'package:flutter/material.dart';

class CategoryPage3 extends StatelessWidget {
  const CategoryPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        toolbarHeight: 100,
        backgroundColor: primeryColor,
        title: Text(
          "Details Resturent",
          style: style18.copyWith(color: whiteColor, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sardar Ji Cottrelle Blvd", style: style32),
              Text(
                "1975 Cottrelle Blvd, Brampton, ON L6P 2Z8 - Get directions",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 10),
              Image.asset("$dynamicAssets/sardar.png"),
              SizedBox(height: 10),
              Row(children: [Icon(Icons.lock_clock), Text("Open today")]),
              Text(
                "10:00 AM - 10:00 PM",
                style: style16.copyWith(color: Colors.black),
              ),
              SizedBox(height: 20),
              Text("Photos", style: style32),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal, // 👈 horizontal scroll
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "$dynamicAssets/pizza.png",

                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 8), // spacing
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "$dynamicAssets/pizza.png",

                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "$dynamicAssets/pizza.png",

                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "$dynamicAssets/pizza.png",

                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text("Details", style: style32),
              SizedBox(height: 10),
              Text(
                " The Sardar Ji Grill & Chill was established in 2020 in Brampton City. With more than 25 years of experience and base on traditional recipes, we understand how to best serve our customers through tried and true service principles.",
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 200,
                  width: 400,
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
                            ElevatedButton(
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
              ),
              SizedBox(height: 20),
              Center(
                child: CustomButtons(
                  boxColor: primeryColor,
                  text: "Reserve Table",
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: CustomButtons(
                  boxColor: const Color.fromARGB(255, 128, 122, 122),
                  text: "Call for Order",
                  textColor: primeryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
