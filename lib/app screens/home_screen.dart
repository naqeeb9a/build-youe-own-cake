import 'package:build_own_cake/app%20screens/see_all.dart';
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
List cake = [
  {
    "name": "Anniversary Cake",
    "images" :[
      
        "assets/4K8A7063.JPG",
        "assets/4K8A7108.JPG",
        "assets/4K8A7119.JPG",
        "assets/4K8A7112.JPG",
      
    ],
    
  },
  {
    "name" : "Elephant Cake",
    "images": [
      
         "assets/4K8A7354.JPG",
         "assets/4K8A7369.JPG",
         "assets/4K8A7374.JPG",
         "assets/4K8A7376.JPG",
      
    ]
  },
  {
    "name" : "Floral Dream",
    "images": [
      
         "assets/4K8A7261.JPG",
         "assets/4K8A7286.JPG",
      
    ]
  },
  {
    "name": "Sweet Swan",
    "images": [
      
        "assets/4K8A7393.JPG",
         "assets/4K8A7395.JPG",
        "assets/4K8A7410.JPG",
      
    ] 
  },
  {
    "name": "Party In Pink",
    "images": [
       "assets/4K8A7147.JPG",
      
    ] 
  },
  {
    "name": "Lilac Love",
    "images": [
       "assets/4K8A7601.JPG",
         "assets/4K8A75616.JPG",
         "assets/4K8A7617.JPG",
      
    ] 
  },
  {
    "name": "Sunflower Cake",
    "images": [
       "assets/4K8A7456.JPG",
         "assets/4K8A75491.JPG",
      
    ] 
  },
  {
    "name": "Bird Song",
    "images": [
       "assets/4K8A7215.JPG",
       "assets/4K8A75229.JPG",
      
    ]
  },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // {
  //   "image": "assets/4K8A7063.JPG",
  // },
  // { 
  //   "image": "assets/4K8A7063.JPG",
  // },
];
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: dynamicWidth(context, 1),
            height: dynamicHeight(context, 1),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    myWhite,
                    myLightPink,
                  ],
                ),
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
                      InkWell(
                        onTap: () => push(context, const SeeAll()),
                        child: text(
                          context,
                          "See All",
                          0.035,
                          myBlack,
                        ),
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
                              "assets/4K8A7063.JPG",
                              "Classic Vanilla Cake",
                              "1200/-"),
                          cakeShow(
                              context,
                              "assets/4K8A7108.JPG",
                              "Triple Chocolate Peanut Butter Layer Cake",
                              "1800/-"),
                          cakeShow(
                              context,
                              "assets/4K8A7119.JPG",
                              "Vanilla Cake With Buttercream",
                              "1500/-"),
                          cakeShow(
                              context,
                              "assets/4K8A7122.JPG",
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
