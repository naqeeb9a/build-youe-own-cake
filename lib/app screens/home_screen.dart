import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/carousel_widget.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: dynamicWidth(context, 1),
            height: dynamicHeight(context, 1),
            decoration: BoxDecoration(
              color: myGrey.withOpacity(0.2),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, .04),
                    vertical: dynamicHeight(context, .01),
                  ),
                  child: appBar(context),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, .04),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      text(
                        context,
                        "See All",
                        0.035,
                        myBlack,
                      ),
                    ],
                  ),
                ),
                heightBox(context, 0.01),
                SizedBox(
                  height: dynamicHeight(context, 0.55),
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          cakeShow(
                              context,
                              "https://i.ytimg.com/vi/qtlhdIfojmc/maxresdefault.jpg",
                              "Classic Vanilla Cake",
                              "1200/-"),
                          cakeShow(
                              context,
                              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/triple-chocolate-peanut-butter-layer-cake-2-06eee24.jpg",
                              "Triple Chocolate Peanut Butter Layer Cake",
                              "1800/-"),
                          cakeShow(
                              context,
                              "https://thecaketown.com/wp-content/uploads/2020/11/Vanilla-Cake-with-Buttercream.jpg",
                              "Vanilla Cake With Buttercream",
                              "1500/-"),
                          cakeShow(
                              context,
                              "https://www.hersheyland.com/content/dam/hersheyland/en-us/recipes/recipe-images/2_Hersheys_Perfectly_Chocolate_Cake_11-18.jpeg?im=Resize=(412)",
                              "Hershey Perfect Chocolate Cake",
                              "1400/-"),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          height: dynamicHeight(context, 0.55),
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: .7,
                        ),
                      ),
                    ],
                  ),
                ),
                heightBox(context, 0.05),
                coloredButton(
                  context,
                  "Build Your Cake",
                  myBlack,
                  width: dynamicWidth(context, 0.5),
                  function: () {
                    push(
                      context,
                      const SizeScreen(),
                    );
                  },
                ),
                heightBox(context, 0.01),
                text(context, "OR", 0.04, myGrey),
                heightBox(context, 0.01),
                Container(
                  width: dynamicWidth(context, 0.4),
                  height: dynamicWidth(context, .2),
                  decoration: BoxDecoration(
                    color: myBlack,
                    borderRadius: BorderRadius.circular(
                      dynamicWidth(
                        context,
                        0.03,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt,
                          size: dynamicHeight(context, 0.04), color: myWhite),
                      Text(
                        "Upload Image",
                        style: TextStyle(
                          color: myWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: dynamicWidth(context, 0.04),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
