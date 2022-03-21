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
                    heightBox(context, 0.1),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text(
                        context,
                        "Choose Flavour.",
                        .09,
                        myBlack,
                        bold: true,
                      ),
                    ),
                    heightBox(context, 0.04),
                    coloredButton1(
                      context,
                      "Vanilla",
                      flavourIndex == 1 ? myPink : myLightPink1,
                      width: dynamicWidth(context, 0.55),
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
                      width: dynamicWidth(context, 0.55),
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
                      "Strawberry",
                      flavourIndex == 3 ? myPink : myLightPink1,
                      width: dynamicWidth(context, 0.55),
                      selectedTick: flavourIndex == 3 ? true : false,
                      function: () {
                        setState(() {
                          if (flavourIndex == 3) {
                            flavourIndex = 3;
                          } else if (flavourIndex != 3) {
                            flavourIndex = 3;
                          }
                        });
                      },
                    ),
                    coloredButton1(
                      context,
                      "Pink",
                      flavourIndex == 4 ? myPink : myLightPink1,
                      width: dynamicWidth(context, 0.55),
                      selectedTick: flavourIndex == 4 ? true : false,
                      function: () {
                        setState(() {
                          if (flavourIndex == 4) {
                            flavourIndex = 4;
                          } else if (flavourIndex != 4) {
                            flavourIndex = 4;
                          }
                        });
                      },
                    ),
                    heightBox(context, .02),
                    SizedBox(
                      width: dynamicWidth(context, .9),
                      height: dynamicHeight(context, .15),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          cakeSize(context),
                          flavours(context),
                        ],
                      ),
                    ),
                    downBar(
                      context,
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget flavours(context) {
  return flavourIndex == 1
      ? Positioned(
          bottom: dynamicHeight(context, 0.029),
          child: Image.asset(
            "assets/Custom_Cakes/1/8.png",
            // width: dynamicWidth(context, 0.54),
            scale: sizeIndex == 1
                ? 3.5
                : sizeIndex == 2
                    ? 3
                    : sizeIndex == 3
                        ? 2
                        : sizeIndex == 4
                            ? 1.7
                            : 0,
            color: myVanilla,
          ),
        )
      : flavourIndex == 2
          ? Positioned(
              bottom: dynamicHeight(context, 0.029),
              child: Image.asset(
                "assets/Custom_Cakes/1/8.png",
                scale: sizeIndex == 1
                    ? 3.5
                    : sizeIndex == 2
                        ? 3
                        : sizeIndex == 3
                            ? 2
                            : sizeIndex == 4
                                ? 1.7
                                : 0,
              ),
            )
          : flavourIndex == 3
              ? Positioned(
                  bottom: dynamicHeight(context, 0.029),
                  child: Image.asset(
                    "assets/Custom_Cakes/1/8.png",
                    scale: sizeIndex == 1
                        ? 3.5
                        : sizeIndex == 2
                            ? 3
                            : sizeIndex == 3
                                ? 2
                                : sizeIndex == 4
                                    ? 1.7
                                    : 0,
                    color: myBrown,
                  ),
                )
              : flavourIndex == 4
                  ? Positioned(
                      bottom: dynamicHeight(context, 0.029),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        scale: sizeIndex == 1
                            ? 3.5
                            : sizeIndex == 2
                                ? 3
                                : sizeIndex == 3
                                    ? 2
                                    : sizeIndex == 4
                                        ? 1.7
                                        : 0,
                        color: myPink,
                      ),
                    )
                  : const SizedBox();
}
