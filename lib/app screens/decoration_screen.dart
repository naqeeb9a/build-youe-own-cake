import 'package:build_own_cake/app%20screens/color_screen.dart';
import 'package:build_own_cake/app%20screens/flavour_screen.dart';
import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/app%20screens/special_wishes_screen.dart';
import 'package:build_own_cake/app%20screens/toppings.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class DecorationScreen extends StatefulWidget {
  const DecorationScreen({Key? key}) : super(key: key);

  @override
  _DecorationScreenState createState() => _DecorationScreenState();
}

int decorationIndex = 0;

class _DecorationScreenState extends State<DecorationScreen> {
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
                    child: text(context, "Choose Decoration.", .09, myBlack,
                        bold: true, font: true),
                  ),
                  heightBox(context, 0.04),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        coloredButton1(
                          context,
                          "Macarons",
                          decorationIndex == 1 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 1 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 1) {
                                decorationIndex = 1;
                              } else if (decorationIndex != 1) {
                                decorationIndex = 1;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Gold Foil at front",
                          decorationIndex == 2 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 2 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 2) {
                                decorationIndex = 2;
                              } else if (decorationIndex != 2) {
                                decorationIndex = 2;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Sprinkles",
                          decorationIndex == 3 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 3 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 3) {
                                decorationIndex = 3;
                              } else if (decorationIndex != 3) {
                                decorationIndex = 3;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Pearls",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Butterflies",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Chocolate shards ",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Drip",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Chocolate balls",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Edible bear",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Edible elephant",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Edible swan",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Fake flowers",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Fresh flowers arrangement ",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Rice sheet",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Meringue kisses",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Candies on top",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Heart cookies",
                          decorationIndex == 4 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: decorationIndex == 4 ? true : false,
                          function: () {
                            setState(() {
                              if (decorationIndex == 4) {
                                decorationIndex = 4;
                              } else if (decorationIndex != 4) {
                                decorationIndex = 4;
                              }
                            });
                          },
                        ),
                      ],
                    ),
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
                  downBar(context,
                      nextPage: decorationIndex == 0
                          ? () {
                              MotionToast.warning(
                                title: const Text("Warning"),
                                description:
                                    const Text("Select Toppings to proceed!!"),
                                animationCurve: Curves.ease,
                                borderRadius: 0,
                                animationDuration:
                                    const Duration(milliseconds: 400),
                              ).show(context);
                            }
                          : () {
                              push(context, const Toppings());
                            },
                      price: sizeIndex == 1
                          ? (4000 + (decorationIndex == 1 ? 100 : 300))
                          : (6000 + (decorationIndex == 1 ? 100 : 300))),
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
      bottom: decorationIndex == 1
          ? p1
          : decorationIndex == 2
              ? p2
              : decorationIndex == 3
                  ? p3
                  : p4,
      child: Image.asset(
        decorationIndex == 1
            ? "assets/Custom_Cakes/1/10.png"
            : decorationIndex == 2
                ? "assets/Custom_Cakes/1/11.png"
                : decorationIndex == 3
                    ? "assets/Custom_Cakes/1/7.png"
                    : "assets/Custom_Cakes/1/12.png",
        scale: decorationIndex == 1
            ? s1
            : decorationIndex == 2
                ? s2
                : decorationIndex == 3
                    ? s3
                    : s4,
      ),
    );
  }

  return sizeIndex == 1
      ? selection(110, 110, 100, 105, 50, 20, 2.5, 40)
      : sizeIndex == 2
          ? selection(110, 110, 100, 110, 45, 15, 2, 40)
          : sizeIndex == 3
              ? selection(120, 120, 105, 120, 30, 10, 1.7, 40)
              : selection(140, 120, 115, 130, 30, 10, 1.4, 40);
}
