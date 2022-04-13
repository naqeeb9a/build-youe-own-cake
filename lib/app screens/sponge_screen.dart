import 'package:build_own_cake/app%20screens/color_screen.dart';
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

class FlavourScreen extends StatefulWidget {
  const FlavourScreen({Key? key}) : super(key: key);

  @override
  _FlavourScreenState createState() => _FlavourScreenState();
}

int flavourIndex = 0;

class _FlavourScreenState extends State<FlavourScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            pageDecoration(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appBar(context),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: text(
                      context,
                      "Choose	Sponge.",
                      .09,
                      myBlack,
                      bold: true,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        coloredButton1(
                          context,
                          "Vanilla",
                          flavourIndex == 1 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: flavourIndex == 1 ? true : false,
                          function: () {
                            setState(() {
                              if (flavourIndex == 1) {
                                flavourIndex = 1;
                              } else if (flavourIndex != 1) {
                                flavourIndex = 1;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Chocolate",
                          flavourIndex == 2 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: flavourIndex == 2 ? true : false,
                          function: () {
                            setState(() {
                              if (flavourIndex == 2) {
                                flavourIndex = 2;
                              } else if (flavourIndex != 2) {
                                flavourIndex = 2;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: text(
                      context,
                      "Choose	Filling.",
                      .09,
                      myBlack,
                      bold: true,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        coloredButton1(
                          context,
                          "Chocolate Fudge",
                          flavourIndex == 1 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: flavourIndex == 1 ? true : false,
                          function: () {
                            setState(() {
                              if (flavourIndex == 1) {
                                flavourIndex = 1;
                              } else if (flavourIndex != 1) {
                                flavourIndex = 1;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Salted Caramel",
                          flavourIndex == 2 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: flavourIndex == 2 ? true : false,
                          function: () {
                            setState(() {
                              if (flavourIndex == 2) {
                                flavourIndex = 2;
                              } else if (flavourIndex != 2) {
                                flavourIndex = 2;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Vanilla Buttercream",
                          flavourIndex == 2 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: flavourIndex == 2 ? true : false,
                          function: () {
                            setState(() {
                              if (flavourIndex == 2) {
                                flavourIndex = 2;
                              } else if (flavourIndex != 2) {
                                flavourIndex = 2;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Coffee Buttercream",
                          flavourIndex == 2 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: flavourIndex == 2 ? true : false,
                          function: () {
                            setState(() {
                              if (flavourIndex == 2) {
                                flavourIndex = 2;
                              } else if (flavourIndex != 2) {
                                flavourIndex = 2;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Maple Buttercream",
                          flavourIndex == 2 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: flavourIndex == 2 ? true : false,
                          function: () {
                            setState(() {
                              if (flavourIndex == 2) {
                                flavourIndex = 2;
                              } else if (flavourIndex != 2) {
                                flavourIndex = 2;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Lemon Curd",
                          flavourIndex == 2 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: flavourIndex == 2 ? true : false,
                          function: () {
                            setState(() {
                              if (flavourIndex == 2) {
                                flavourIndex = 2;
                              } else if (flavourIndex != 2) {
                                flavourIndex = 2;
                              }
                            });
                          },
                        ),
                        coloredButton1(
                          context,
                          "Mix Fruit",
                          flavourIndex == 2 ? myPink : myLightPink1,
                          width: dynamicWidth(context, 0.3),
                          selectedTick: flavourIndex == 2 ? true : false,
                          function: () {
                            setState(() {
                              if (flavourIndex == 2) {
                                flavourIndex = 2;
                              } else if (flavourIndex != 2) {
                                flavourIndex = 2;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  downBar(context,
                      nextPage: flavourIndex == 0
                          ? () {
                              MotionToast.warning(
                                title: const Text("Warning"),
                                description:
                                    const Text("Select flavour to proceed!!"),
                                animationCurve: Curves.ease,
                                borderRadius: 0,
                                animationDuration:
                                    const Duration(milliseconds: 400),
                              ).show(context);
                            }
                          : () {
                              push(context, const ColorScreen());
                            },
                      price: sizeIndex == 1 ? 4000 : 6000),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget flavours(context) {
  return Positioned(
    bottom: sizeIndex == 1 ? 70 : 50,
    child: Image.asset(
      "assets/Custom_Cakes/1/8.png",
      scale: sizeIndex == 1 ? 2.7 : 1.55,
      color: flavourIndex == 1 ? myVanilla : null,
    ),
  );
}
