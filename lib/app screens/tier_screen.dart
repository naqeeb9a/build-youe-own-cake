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
        body: Padding(
           padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, .04),
            vertical: dynamicHeight(context, .01),
          ),
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
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Select tier of cake then proceed.",
                  .044,
                  myGrey.withOpacity(0.7),
                ),
              ),
             
              coloredButton(
                context,
                "2 tier",
                tierIndex == 1 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (tierIndex == 1) {
                      tierIndex = 0;
                    } else if (tierIndex != 1) {
                      tierIndex = 1;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "3 tier",
                tierIndex == 2 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (tierIndex == 2) {
                      tierIndex = 0;
                    } else if (tierIndex != 2) {
                      tierIndex = 2;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "4 tier",
                tierIndex == 3 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (tierIndex == 3) {
                      tierIndex = 0;
                    } else if (tierIndex != 3) {
                      tierIndex = 3;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "5 tier",
                tierIndex == 4 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (tierIndex == 4) {
                      tierIndex = 0;
                    } else if (tierIndex != 4) {
                      tierIndex = 4;
                    }
                  });
                },
              ),
               SizedBox(
                width: dynamicWidth(context, .9),
                height: dynamicHeight(context, .3),
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
                        
                    tierIndex == 2
                        ? Positioned(
                            bottom: dynamicHeight(context, 0.08),
                            child: Image.asset("assets/6.png",
                                width: dynamicWidth(context, 0.48)),
                          )
                        : const SizedBox(), 
                        decorationIndex == 3
                        ? Positioned(
                            bottom: dynamicHeight(context, 0.07),
                            child: Image.asset("assets/7.png",
                                width: dynamicWidth(context, 0.52)),
                          )
                        : const SizedBox(),  
                    tierIndex == 2
                        ? Positioned(
                            bottom: dynamicHeight(context, 0.09),
                            child: Image.asset("assets/8.png",
                                width: dynamicWidth(context, 0.48)),
                          )
                        : const SizedBox(),
                      tierIndex == 2
                        ? Positioned(
                            bottom: dynamicHeight(context, 0.14),
                            child: Image.asset("assets/6.png",
                                width: dynamicWidth(context, 0.42)),
                          )
                        : const SizedBox(), 
                       tierIndex == 2
                        ? Positioned(
                            bottom: dynamicHeight(context, 0.135),
                            child: Image.asset("assets/7.png",
                                width: dynamicWidth(context, 0.48)),
                          )
                        : const SizedBox(), 
                       tierIndex== 2
                        ? Positioned(
                            bottom: dynamicHeight(context, 0.15),
                            child: Image.asset("assets/8.png",
                                width: dynamicWidth(context, 0.42)),
                          )
                        : const SizedBox(), 
                      tierIndex == 2
                        ? Positioned(
                            bottom: dynamicHeight(context, 0.2),
                            child: Image.asset("assets/1.png",
                                width: dynamicWidth(context, 0.15)),
                          )
                        : const SizedBox(), 
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
      ),
    );
  }
}
