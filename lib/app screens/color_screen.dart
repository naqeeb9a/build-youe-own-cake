import 'package:build_own_cake/app%20screens/decoration_screen.dart';
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

class ColorScreen extends StatefulWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  _ColorScreenState createState() => _ColorScreenState();
}
int  colorIndex = 0;
class _ColorScreenState extends State<ColorScreen> {
  dynamic colorIndex = 0;
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
                  "Choose Color.",
                  .09,
                  myBlack,
                  bold: true,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Choose color of your cake to then proceed.",
                  .044,
                  myGrey.withOpacity(0.7),
                ),
              ),
              heightBox(context, 0.04),
              coloredButton(
                context,
                "Black",
                colorIndex == 1 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (colorIndex == 1) {
                      colorIndex = 0;
                    } else if (colorIndex != 1) {
                      colorIndex = 1;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Chocolate",
                colorIndex == 2 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (colorIndex == 2) {
                      colorIndex = 0;
                    } else if (colorIndex != 2) {
                      colorIndex = 2;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Pink",
                colorIndex == 3 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (colorIndex == 3) {
                      colorIndex = 0;
                    } else if (colorIndex != 3) {
                      colorIndex = 3;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Light Pink",
                colorIndex == 4 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (colorIndex == 4) {
                      colorIndex = 0;
                    } else if (colorIndex != 4) {
                      colorIndex = 4;
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
                              color : colorIndex ==1 ? myBlack : colorIndex == 2 ?myChocolate :colorIndex == 3 ?myPink:colorIndex ==4 ?myLightPink : myChocolate,
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
                                        ? SizedBox()
                                        : SizedBox(),
                    flavourIndex == 2
                        ? Positioned(
                          bottom : dynamicHeight(context, 0.025),
                          child: Image.asset("assets/8.png",
                              width: dynamicWidth(context, 0.52)),
                        )
                        : SizedBox(),
                  ],
                ),
              ),
              downBar(
                context,
                nextPage: colorIndex == 0
                    ? () {
                  MotionToast.warning(
                    title: Text("Warning"),

                    description: Text("Select color to proceed!!"),
                    animationCurve: Curves.ease,
                    borderRadius: 0,
                    animationDuration: const Duration(milliseconds: 400),
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
    );
  }
}
