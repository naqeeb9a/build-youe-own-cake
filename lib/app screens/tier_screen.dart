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
import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/app%20screens/flavour_screen.dart';
import 'package:build_own_cake/app%20screens/color_screen.dart';
import 'package:build_own_cake/app%20screens/decoration_screen.dart';

class TierScreen extends StatefulWidget {
  const TierScreen({Key? key}) : super(key: key);

  @override
  _TierScreenState createState() => _TierScreenState();
}

int tierIndex = 0;

class _TierScreenState extends State<TierScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            pageDecoration(context),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: dynamicWidth(context, .04),
                vertical: dynamicHeight(context, .01),
              ),
              width: dynamicWidth(context, 1),
              height: dynamicHeight(context, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appBar(context),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: text(
                      context,
                      "Choose tier.",
                      .09,
                      myBlack,
                      bold: true,
                    ),
                  ),
                  coloredButton1(
                    context,
                    "2 tier",
                    tierIndex == 1 ? myPink : myLightPink1,
                    width: dynamicWidth(context, 0.55),
                    function: () {
                      setState(() {
                        if (tierIndex == 1) {
                          tierIndex = 1;
                        } else if (tierIndex != 1) {
                          tierIndex = 1;
                        }
                      });
                    },
                  ),
                  coloredButton1(
                    context,
                    "3 tier",
                    tierIndex == 2 ? myPink : myLightPink1,
                    width: dynamicWidth(context, 0.55),
                    function: () {
                      setState(() {
                        if (tierIndex == 2) {
                          tierIndex = 2;
                        } else if (tierIndex != 2) {
                          tierIndex = 2;
                        }
                      });
                    },
                  ),
                  coloredButton1(
                    context,
                    "4 tier",
                    tierIndex == 3 ? myPink : myLightPink1,
                    width: dynamicWidth(context, 0.55),
                    function: () {
                      setState(() {
                        if (tierIndex == 3) {
                          tierIndex = 3;
                        } else if (tierIndex != 3) {
                          tierIndex = 3;
                        }
                      });
                    },
                  ),
                  coloredButton1(
                    context,
                    "5 tier",
                    tierIndex == 4 ? myPink : myLightPink1,
                    width: dynamicWidth(context, 0.55),
                    function: () {
                      setState(() {
                        if (tierIndex == 4) {
                          tierIndex = 4;
                        } else if (tierIndex != 4) {
                          tierIndex = 4;
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
                        cakeSize(context),
                        colorsSelection(),
                        flavours(context),
                        decorationSelection(context),
                      ],
                    ),
                  ),
                  downBar(
                    context,
                    nextPage: tierIndex == 0
                        ? () {
                      MotionToast.warning(
                        title: const Text("Warning"),
                        description: const Text("Select tier to proceed!!"),
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
          ],
        )
      ),
    );
  }
}
