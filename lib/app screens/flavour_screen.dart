import 'package:build_own_cake/app%20screens/color_screen.dart';
import 'package:build_own_cake/app%20screens/size_screen.dart';
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

class _FlavourScreenState extends State<FlavourScreen> {
  dynamic flavourIndex = 0;

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
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Choose flavour of your taste to proceed.",
                  0.044,
                  myGrey.withOpacity(0.7),
                ),
              ),
              heightBox(context, 0.04),
              coloredButton(
                context,
                "Vanilla",
                flavourIndex == 1 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (flavourIndex == 1) {
                      flavourIndex = 0;
                    } else if (flavourIndex != 1) {
                      flavourIndex = 1;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Chocolate",
                flavourIndex == 2 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (flavourIndex == 2) {
                      flavourIndex = 0;
                    } else if (flavourIndex != 2) {
                      flavourIndex = 2;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Strawberry",
                flavourIndex == 3 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (flavourIndex == 3) {
                      flavourIndex = 0;
                    } else if (flavourIndex != 3) {
                      flavourIndex = 3;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Another",
                flavourIndex == 4 ?  myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (flavourIndex == 4) {
                      flavourIndex = 0;
                    } else if (flavourIndex != 4) {
                      flavourIndex = 4;
                    }
                  });
                },
              ),
             SizedBox(
                width: dynamicWidth(context, .9),
                height: dynamicHeight(context, .15),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: sizeIndex == 4
                      ? Image.asset(
                          "assets/9.png",
                          width: dynamicWidth(context, 0.5),
                          color : myVanilla
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
                ),
              ),
              downBar(
                context,
                nextPage: flavourIndex == 0
                    ? () {
                  MotionToast.warning(
                    title: Text("Warning"),

                    description: Text("Select flavour to proceed!!"),
                    animationCurve: Curves.ease,
                    borderRadius: 0,
                    animationDuration: const Duration(milliseconds: 400),
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
    );
  }
}
