import 'package:build_own_cake/app%20screens/decoration_screen.dart';
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
                    coloredButton1(
                      context,
                      "Black",
                      colorIndex == 1 ? myPink : myLightPink1,
                      width: dynamicWidth(context, 0.55),
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
                      "Chocolate",
                      colorIndex == 2 ? myPink : myLightPink1,
                      width: dynamicWidth(context, 0.55),
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
                      "Pink",
                      colorIndex == 3 ? myPink : myLightPink1,
                      width: dynamicWidth(context, 0.55),
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
                      "Light Pink",
                      colorIndex == 4 ? myPink : myLightPink1,
                      width: dynamicWidth(context, 0.55),
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
                    heightBox(context, .02),
                    SizedBox(
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          cakeSize(context),
                          colorsSelection(),
                          flavours(context),
                        ],
                      ),
                    ),
                    downBar(
                      context,
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

Widget colorsSelection() {
  return AnimatedScale(
      scale: sizeIndex == 1
          ? 0.4
          : sizeIndex == 2
              ? .5
              : sizeIndex == 3
                  ? 0.6
                  : 0.7,
      duration: const Duration(milliseconds: 600),
      curve: Curves.bounceOut,
      child: sizeIndex == 0
          ? const SizedBox()
          : Image.asset(
              "assets/Custom_Cakes/1/9.png",
              color: colorIndex == 1
                  ? myBlack
                  : colorIndex == 2
                      ? noColor
                      : colorIndex == 3
                          ? myPink
                          : colorIndex == 4
                              ? myLightPink1
                              : noColor,
            ));
  //  sizeIndex == 4
  //     ? Image.asset(
  //         "assets/Custom_Cakes/1/9.png",
  //         scale: 1,
  //         color: colorIndex == 1
  //             ? myBlack
  //             : colorIndex == 2
  //                 ? noColor
  //                 : colorIndex == 3
  //                     ? myPink
  //                     : colorIndex == 4
  //                         ? myLightPink1
  //                         : noColor,
  //       )
  //     : sizeIndex == 3
  //         ? Image.asset(
  //             "assets/Custom_Cakes/1/9.png",
  //             scale: 2,
  //             color: colorIndex == 1
  //                 ? myBlack
  //                 : colorIndex == 2
  //                     ? noColor
  //                     : colorIndex == 3
  //                         ? myPink
  //                         : colorIndex == 4
  //                             ? myLightPink1
  //                             : noColor,
  //           )
  //         : sizeIndex == 2
  //             ? Image.asset(
  //                 "assets/Custom_Cakes/1/9.png",
  //                 scale: 3,
  //                 color: colorIndex == 1
  //                     ? myBlack
  //                     : colorIndex == 2
  //                         ? noColor
  //                         : colorIndex == 3
  //                             ? myPink
  //                             : colorIndex == 4
  //                                 ? myLightPink1
  //                                 : noColor,
  //               )
  //             : sizeIndex == 1
  //                 ? Image.asset(
  //                     "assets/Custom_Cakes/1/9.png",
  //                     scale: 3.5,
  //                     color: colorIndex == 1
  //                         ? myBlack
  //                         : colorIndex == 2
  //                             ? noColor
  //                             : colorIndex == 3
  //                                 ? myPink
  //                                 : colorIndex == 4
  //                                     ? myLightPink1
  //                                     : noColor,
  //                   )
  //                 : sizeIndex == 0
  //                     ? const SizedBox()
  //                     : const SizedBox();
}
