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

class DecorationScreen extends StatefulWidget {
  const DecorationScreen({Key? key}) : super(key: key);

  @override
  _DecorationScreenState createState() => _DecorationScreenState();
}

class _DecorationScreenState extends State<DecorationScreen> {
  @override
  dynamic decorationIndex = 0;

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
              heightBox(context, .14),
              downBar(
                context,
                nextPage: decorationIndex == 0
                    ? () {
                  MotionToast.warning(
                    title: Text("Warning"),

                    description: Text("Select decoration to proceed!!"),
                    animationCurve: Curves.ease,
                    borderRadius: 0,
                    animationDuration: const Duration(milliseconds: 400),
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
    );
  }
}
