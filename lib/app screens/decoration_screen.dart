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
import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/app%20screens/flavour_screen.dart';
import 'package:build_own_cake/app%20screens/color_screen.dart';

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
        body: Padding(
           padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, .04),
            vertical: dynamicHeight(context, .01),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appBar(context),
              heightBox(context, .1),
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Choose Decoration.",
                  .09,
                  myBlack,
                  bold: true,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Select decoration of cake then proceed.",
                  .044,
                  myGrey.withOpacity(0.7),
                ),
              ),
              heightBox(context, 0.04),
              coloredButton(
                context,
                "Chocolate Bar",
                decorationIndex == 1 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (decorationIndex == 1) {
                      decorationIndex = 0;
                    } else if (decorationIndex != 1) {
                      decorationIndex = 1;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Pineapple",
                decorationIndex == 2 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (decorationIndex == 2) {
                      decorationIndex = 0;
                    } else if (decorationIndex != 2) {
                      decorationIndex = 2;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Cream Icing",
                decorationIndex == 3 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (decorationIndex == 3) {
                      decorationIndex = 0;
                    } else if (decorationIndex != 3) {
                      decorationIndex = 3;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Bounty",
                decorationIndex == 4 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (decorationIndex == 4) {
                      decorationIndex = 0;
                    } else if (decorationIndex != 4) {
                      decorationIndex = 4;
                    }
                  });
                },
              ),
               SizedBox(
                width: dynamicWidth(context, .9),
                height: dynamicHeight(context, .15),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    sizeIndex == 4
                        ? Image.asset(
                            "assets/9.png",
                            width: dynamicWidth(context, 0.5),
                            color: colorIndex == 1
                                ? myBlack
                                : colorIndex == 2
                                    ? myChocolate
                                    : colorIndex == 3
                                        ? myPink
                                        : colorIndex == 4
                                            ? myLightPink
                                            : myChocolate,
                          )
                        : sizeIndex == 3
                            ? Image.asset("assets/9.png",
                                width: dynamicWidth(context, 0.45))
                            : sizeIndex == 2
                                ? Image.asset("assets/9.png",
                                    width: dynamicWidth(context, 0.4))
                                : sizeIndex == 1
                                    ? Image.asset("assets/9.png",
                                        width: dynamicWidth(context, 0.35))
                                    : sizeIndex == 0
                                        ? const SizedBox()
                                        : const SizedBox(),
                    flavourIndex == 2
                        ? Positioned(
                            bottom: dynamicHeight(context, 0.025),
                            child: Image.asset("assets/8.png",
                                width: dynamicWidth(context, 0.52)),
                          )
                        : const SizedBox(),
                      decorationIndex == 3
                        ? Positioned(
                            bottom: dynamicHeight(context, 0.07),
                            child: Image.asset("assets/7.png",
                                width: dynamicWidth(context, 0.52)),
                          )
                        : const SizedBox(),   
                  ],
                ),
              ),
              downBar(
                context,
                nextPage: decorationIndex == 0
                    ? () {
                  MotionToast.warning(
                    title: const Text("Warning"),

                    description: const Text("Select decoration to proceed!!"),
                    animationCurve: Curves.ease,
                    borderRadius: 0,
                    animationDuration: const Duration(milliseconds: 400),
                  ).show(context);
                }
                    : () {
                  push(context, const TierScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
