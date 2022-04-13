import 'package:build_own_cake/app%20screens/color_screen.dart';
import 'package:build_own_cake/app%20screens/flavour_screen.dart';
import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/app%20screens/special_wishes_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class Toppings extends StatefulWidget {
  const Toppings({Key? key}) : super(key: key);

  @override
  _ToppingsState createState() => _ToppingsState();
}

int toppingIndex = 0;

class _ToppingsState extends State<Toppings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          pageDecoration(context),
          Center(
            child: Container(
              width: dynamicWidth(context, .88),
              height: dynamicHeight(context, 1),
              padding: EdgeInsets.symmetric(
                vertical: dynamicHeight(context, .01),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appBar(context),
                  heightBox(context, .1),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: text(context, "Choose Toppings.", .09, myBlack,
                        bold: true, font: true),
                  ),
                  heightBox(context, 0.04),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      coloredButton1(
                        context,
                        "Happy birthday",
                        toppingIndex == 1 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: toppingIndex == 1 ? true : false,
                        function: () {
                          setState(() {
                            if (toppingIndex == 1) {
                              toppingIndex = 1;
                            } else if (toppingIndex != 1) {
                              toppingIndex = 1;
                            }
                          });
                        },
                      ),
                      coloredButton1(
                        context,
                        "Happy anniversary",
                        toppingIndex == 2 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: toppingIndex == 2 ? true : false,
                        function: () {
                          setState(() {
                            if (toppingIndex == 2) {
                              toppingIndex = 2;
                            } else if (toppingIndex != 2) {
                              toppingIndex = 2;
                            }
                          });
                        },
                      ),
                      coloredButton1(
                        context,
                        "Congratulations",
                        toppingIndex == 3 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: toppingIndex == 3 ? true : false,
                        function: () {
                          setState(() {
                            if (toppingIndex == 3) {
                              toppingIndex = 3;
                            } else if (toppingIndex != 3) {
                              toppingIndex = 3;
                            }
                          });
                        },
                      ),
                      coloredButton1(
                        context,
                        "Bride to be",
                        toppingIndex == 4 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: toppingIndex == 4 ? true : false,
                        function: () {
                          setState(() {
                            if (toppingIndex == 4) {
                              toppingIndex = 4;
                            } else if (toppingIndex != 4) {
                              toppingIndex = 4;
                            }
                          });
                        },
                      ),
                      coloredButton1(
                        context,
                        "Age numbers (with fondant)",
                        toppingIndex == 5 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: toppingIndex == 5 ? true : false,
                        function: () {
                          setState(() {
                            if (toppingIndex == 5) {
                              toppingIndex = 5;
                            } else if (toppingIndex != 5) {
                              toppingIndex = 5;
                            }
                          });
                        },
                      ),
                    ]),
                  ),
                  heightBox(context, .02),
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        cakeSize(context),
                        colorsSelection(),
                        flavours(context),
                        decorationSelection(context),
                      ],
                    ),
                  ),
                  downBar(
                    context,
                    nextPage: toppingIndex == 0
                        ? () {
                            MotionToast.warning(
                              title: const Text("Warning"),
                              description:
                                  const Text("Select decoration to proceed!!"),
                              animationCurve: Curves.ease,
                              borderRadius: 0,
                              animationDuration:
                                  const Duration(milliseconds: 400),
                            ).show(context);
                          }
                        : () {
                            push(context, const SpecialWishesScreen());
                          },
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

Widget decorationSelection(context) {
  selection(double p1, double p2, double p3, double p4, double s1, double s2,
      double s3, double s4) {
    return Positioned(
      bottom: toppingIndex == 1 ? p1 : p4,
      child: Image.asset(
        toppingIndex == 1
            ? "assets/Cakes/toppers/1.png"
            : toppingIndex == 2
                ? "assets/Cakes/toppers/3.png"
                : toppingIndex == 3
                    ? "assets/Cakes/toppers/2.png"
                    : toppingIndex == 4
                        ? "assets/Cakes/toppers/3.png"
                        : "assets/Cakes/toppers/1.png",
        scale: toppingIndex == 1 ? s1 : s4,
      ),
    );
  }

  return sizeIndex == 1
      ? selection(110, 110, 100, 105, 50, 20, 2.5, 40)
      : selection(140, 120, 115, 130, 30, 10, 1.4, 40);
}

