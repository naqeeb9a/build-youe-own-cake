import 'package:build_own_cake/app%20screens/decoration_screen.dart';
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

class ColorScreen extends StatefulWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  _ColorScreenState createState() => _ColorScreenState();
}

int colorIndex = 0;

class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            pageDecoration(context),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: dynamicHeight(context, .01),
                ),
                width: dynamicWidth(context, .88),
                height: dynamicHeight(context, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    appBar(context),
                    heightBox(context, .07),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text(
                        context,
                        "Choose Color.",
                        .09,
                        myBlack,
                        bold: true,
                      ),
                    ),
                    heightBox(context, 0.02),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          coloredButton1(
                            context,
                            "Pastel blue",
                            colorIndex == 1 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 1 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 1) {
                                  colorIndex = 1;
                                } else if (colorIndex != 1) {
                                  colorIndex = 1;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "pink",
                            colorIndex == 2 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 2 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 2) {
                                  colorIndex = 2;
                                } else if (colorIndex != 2) {
                                  colorIndex = 2;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "Lilac",
                            colorIndex == 3 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 3 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 3) {
                                  colorIndex = 3;
                                } else if (colorIndex != 3) {
                                  colorIndex = 3;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "White",
                            colorIndex == 4 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 4 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 4) {
                                  colorIndex = 4;
                                } else if (colorIndex != 4) {
                                  colorIndex = 4;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "Black",
                            colorIndex == 5 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 5 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 5) {
                                  colorIndex = 5;
                                } else if (colorIndex != 5) {
                                  colorIndex = 5;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "Yellow",
                            colorIndex == 6 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 6 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 6) {
                                  colorIndex = 6;
                                } else if (colorIndex != 6) {
                                  colorIndex = 6;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "Pastel pink",
                            colorIndex == 7 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 7 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 7) {
                                  colorIndex = 7;
                                } else if (colorIndex != 7) {
                                  colorIndex = 7;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "Shaded navy and white",
                            colorIndex == 8 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 8 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 8) {
                                  colorIndex = 8;
                                } else if (colorIndex != 8) {
                                  colorIndex = 8;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "Shaded pink and white",
                            colorIndex == 9 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 9 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 9) {
                                  colorIndex = 9;
                                } else if (colorIndex != 9) {
                                  colorIndex = 9;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "Stencil",
                            colorIndex == 10 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 10 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 10) {
                                  colorIndex = 10;
                                } else if (colorIndex != 10) {
                                  colorIndex = 10;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "Semi-naked (white)",
                            colorIndex == 11 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: colorIndex == 11 ? true : false,
                            function: () {
                              setState(() {
                                if (colorIndex == 11) {
                                  colorIndex = 11;
                                } else if (colorIndex != 11) {
                                  colorIndex = 11;
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
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          cakeSize(context),
                          colorsSelection(),
                        ],
                      ),
                    ),
                    downBar(context,
                        nextPage: colorIndex == 0
                            ? () {
                                MotionToast.warning(
                                  title: const Text("Warning"),
                                  description:
                                      const Text("Select color to proceed!!"),
                                  animationCurve: Curves.ease,
                                  borderRadius: 0,
                                  animationDuration:
                                      const Duration(milliseconds: 400),
                                ).show(context);
                              }
                            : () {
                                push(context, const DecorationScreen());
                              },
                        price: sizeIndex == 1 ? 4000 : 6000),
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

Widget colorsSelection() {
  return AnimatedScale(
    scale: sizeIndex == 1 ? 0.4 : 0.7,
    duration: const Duration(milliseconds: 600),
    curve: Curves.bounceOut,
    child: sizeIndex == 0
        ? const SizedBox()
        : Image.asset(
            "assets/Custom_Cakes/1/9.png",
            color: colorIndex == 1
                ? myPastelBlue
                : colorIndex == 2
                    ? myPink
                    : colorIndex == 3
                        ? myLilac
                        : colorIndex == 4
                            ? myWhite
                            : colorIndex == 5
                                ? myBlack
                                : colorIndex == 6
                                    ? myYellow
                                    : colorIndex == 7
                                        ? myPastelPink
                                        : colorIndex == 8
                                            ? myBlue
                                            : noColor,
          ),
  );
}
