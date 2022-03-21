import 'package:build_own_cake/app%20screens/color_screen.dart';
import 'package:build_own_cake/app%20screens/flavour_screen.dart';
import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/app%20screens/special_wishes_screen.dart';
import 'package:build_own_cake/app%20screens/tier_screen.dart';
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
                  coloredButton1(
                    context,
                    "Chocolate Bar",
                    decorationIndex == 1 ? myPink : myLightPink1,
                    width: dynamicWidth(context, 0.55),
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
                    "Pineapple",
                    decorationIndex == 2 ? myPink : myLightPink1,
                    width: dynamicWidth(context, 0.55),
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
                    "Cream Icing",
                    decorationIndex == 3 ? myPink : myLightPink1,
                    width: dynamicWidth(context, 0.55),
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
                    "Bounty",
                    decorationIndex == 4 ? myPink : myLightPink1,
                    width: dynamicWidth(context, 0.55),
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
                  heightBox(context, .02),
                  SizedBox(
                    width: dynamicWidth(context, .9),
                    height: dynamicHeight(context, .15),
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
                    nextPage: decorationIndex == 0
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
  return decorationIndex == 1
      ? Positioned(
          bottom: sizeIndex == 3
              ? dynamicHeight(context, 0.1)
              : sizeIndex == 4
                  ? dynamicHeight(context, 0.12)
                  : dynamicHeight(context, 0.07),
          child: Image.asset(
            "assets/Custom_Cakes/1/10.png",
            scale: sizeIndex == 1
                ? 70
                : sizeIndex == 2
                    ? 50
                    : sizeIndex == 3
                        ? 40
                        : sizeIndex == 4
                            ? 40
                            : 0,
          ),
        )
      : decorationIndex == 2
          ? Positioned(
              bottom: sizeIndex == 3
                  ? dynamicHeight(context, 0.1)
                  : sizeIndex == 4
                      ? dynamicHeight(context, 0.105)
                      : dynamicHeight(context, 0.07),
              // bottom  : sizeIndex==3 ?dynamicHeight(context, 0.1) : sizeIndex == 4 ? dynamicHeight(context, 0.105):dynamicHeight(context, 0.07),
              left: sizeIndex == 3
                  ? dynamicHeight(context, 0.11)
                  : sizeIndex == 4
                      ? dynamicHeight(context, 0.1)
                      : dynamicHeight(context, .155),
              child: Image.asset(
                "assets/Custom_Cakes/1/11.png",
                scale: sizeIndex == 1
                    ? 40
                    : sizeIndex == 2
                        ? 30
                        : sizeIndex == 3
                            ? 20
                            : sizeIndex == 4
                                ? 20
                                : 0,
              ),
            )
          : decorationIndex == 3
              ? Positioned(
                  bottom: sizeIndex == 3
                      ? dynamicHeight(context, 0.08)
                      : sizeIndex == 4
                          ? dynamicHeight(context, 0.09)
                          : dynamicHeight(context, 0.06),
                  child: Image.asset(
                    "assets/Custom_Cakes/1/7.png",
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
              : decorationIndex == 4
                  ? Positioned(
                      bottom: sizeIndex == 3
                          ? dynamicHeight(context, 0.09)
                          : sizeIndex == 4
                              ? dynamicHeight(context, 0.09)
                              : dynamicHeight(context, 0.06),
                      right: sizeIndex == 3
                          ? dynamicHeight(context, 0.1)
                          : sizeIndex == 4
                              ? dynamicHeight(context, 0.07)
                              : dynamicHeight(context, 0.14),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/12.png",
                        scale: sizeIndex == 1
                            ? 50
                            : sizeIndex == 2
                                ? 40
                                : sizeIndex == 3
                                    ? 30
                                    : sizeIndex == 4
                                        ? 25
                                        : 0,
                      ),
                    )
                  : const SizedBox();
}
