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
                      decorationIndex = 1;
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
                      decorationIndex = 2;
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
                      decorationIndex = 3;
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
                      decorationIndex = 4;
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
                    cakeSize(context),
                    colorsSelection(),
                    flavours(context),
                    decorationSelection(context),
                    // //for size of cake
                    // sizeIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    // )
                    //     : sizeIndex == 3
                    //     ? Image.asset("assets/Custom_Cakes/1/9.png",
                    //     width: dynamicWidth(context, 0.45))
                    //     : sizeIndex == 2
                    //     ? Image.asset("assets/Custom_Cakes/1/9.png",
                    //     width: dynamicWidth(context, 0.4))
                    //     : sizeIndex == 1
                    //     ? Image.asset("assets/Custom_Cakes/1/9.png",
                    //     width: dynamicWidth(context, 0.35))
                    //     : sizeIndex == 0
                    //     ? const SizedBox()
                    //     : const SizedBox(),
                    //
                    //
                    // //for color of cake
                    // sizeIndex == 1 && flavourIndex == 1 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 1 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 1 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 1 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 2 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 2 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 2 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 2 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 4 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 4 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 4 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 4 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35), // ending size index 1
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 1 &&
                    //     colorIndex == 1 //starting of ssize Index 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 1 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 1 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 1 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 2 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 2 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 2 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 2 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 4 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 4 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 4 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 4 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   // ending of sizeIndex 2
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 1 &&
                    //     colorIndex == 1 //start of sizeIndex 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 1 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 1 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 1 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 2 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 2 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 2 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 2 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 4 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 4 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 4 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 4 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   //ending of sizeIndex 3
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 1 &&
                    //     colorIndex == 1 //starting of size Index 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 1 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 1 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 1 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 2 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 2 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 2 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 2 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 4 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 4 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 4 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 4 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   // ending of SizeIndex 4
                    //   color: myLightPink,
                    // )
                    //     : SizedBox(),
                    //
                    // //for flavour  of cake
                    // sizeIndex == 1 && flavourIndex == 1
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.025),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(context, 0.38),
                    //     color: myVanilla,
                    //   ),
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 2
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.025),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(context, 0.38),
                    //   ),
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 3
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.025),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(context, 0.38),
                    //     color: myBrown,
                    //   ),
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 4
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.025),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(context, 0.38),
                    //     color: myPink,
                    //   ),
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 1
                    //     ? Positioned(
                    //   bottom:
                    //   dynamicHeight(context, 0.025),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width:
                    //     dynamicWidth(context, 0.44),
                    //     color: myVanilla,
                    //   ),
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 2
                    //     ? Positioned(
                    //   bottom: dynamicHeight(
                    //       context, 0.025),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(
                    //         context, 0.44),
                    //   ),
                    // )
                    //     : sizeIndex == 2 &&
                    //     flavourIndex == 3
                    //     ? Positioned(
                    //   bottom: dynamicHeight(
                    //       context, 0.025),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(
                    //         context, 0.44),
                    //     color: myBrown,
                    //   ),
                    // )
                    //     : sizeIndex == 2 &&
                    //     flavourIndex == 4
                    //     ? Positioned(
                    //   bottom: dynamicHeight(
                    //       context, 0.025),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(
                    //         context, 0.44),
                    //     color: myPink,
                    //   ),
                    // )
                    //     : sizeIndex == 3 &&
                    //     flavourIndex == 1
                    //     ? Positioned(
                    //   bottom:
                    //   dynamicHeight(
                    //       context,
                    //       0.028),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width:
                    //     dynamicWidth(
                    //         context,
                    //         0.49),
                    //     color: myVanilla,
                    //   ),
                    // )
                    //     : sizeIndex == 3 &&
                    //     flavourIndex ==
                    //         2
                    //     ? Positioned(
                    //   bottom:
                    //   dynamicHeight(
                    //       context,
                    //       0.028),
                    //   child:
                    //   Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width:
                    //     dynamicWidth(
                    //         context,
                    //         0.49),
                    //   ),
                    // )
                    //     : sizeIndex == 3 &&
                    //     flavourIndex ==
                    //         3
                    //     ? Positioned(
                    //   bottom: dynamicHeight(
                    //       context,
                    //       0.028),
                    //   child: Image
                    //       .asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(
                    //         context,
                    //         0.49),
                    //     color:
                    //     myBrown,
                    //   ),
                    // )
                    //     : sizeIndex ==
                    //     3 &&
                    //     flavourIndex ==
                    //         4
                    //     ? Positioned(
                    //   bottom: dynamicHeight(
                    //       context,
                    //       0.028),
                    //   child: Image
                    //       .asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(
                    //         context,
                    //         0.49),
                    //     color:
                    //     myPink,
                    //   ),
                    // )
                    //     : sizeIndex ==
                    //     4 &&
                    //     flavourIndex ==
                    //         1
                    //     ? Positioned(
                    //   bottom:
                    //   dynamicHeight(context, 0.029),
                    //   child:
                    //   Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(context, 0.54),
                    //     color: myVanilla,
                    //   ),
                    // )
                    //     : sizeIndex == 4 &&
                    //     flavourIndex == 2
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.029),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(context, 0.54),
                    //   ),
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 3
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.029),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(context, 0.54),
                    //     color: myBrown,
                    //   ),
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 4
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.029),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/8.png",
                    //     width: dynamicWidth(context, 0.54),
                    //     color: myPink,
                    //   ),
                    // )
                    //     : SizedBox(),
                    //
                    //
                    // //for decoration of cake
                    // sizeIndex == 1 && flavourIndex == 1 && colorIndex == 1 &&
                    //     decorationIndex == 1
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 1 && colorIndex == 1 &&
                    //     decorationIndex == 2
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :
                    // sizeIndex == 1 && flavourIndex == 1 && colorIndex == 1 &&
                    //     decorationIndex == 3
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 1 && colorIndex == 1 &&
                    //     decorationIndex == 4
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 1 && colorIndex == 2 &&
                    //     decorationIndex == 1
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 1 && colorIndex == 2 &&
                    //     decorationIndex == 2
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 1 && colorIndex == 2 &&
                    //     decorationIndex == 3
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 1 && colorIndex == 2 &&
                    //     decorationIndex == 4
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :  sizeIndex == 1 && flavourIndex == 1 && colorIndex ==3 &&
                    //     decorationIndex == 1
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :  sizeIndex == 1 && flavourIndex == 1 && colorIndex ==3 &&
                    //     decorationIndex == 2
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 1 && colorIndex ==3 &&
                    //     decorationIndex == 4
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 1 && colorIndex ==3 &&
                    //     decorationIndex == 4
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 1 && colorIndex ==4 &&
                    //     decorationIndex == 1
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 1 && colorIndex ==4 &&
                    //     decorationIndex == 2
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 1 && colorIndex ==4 &&
                    //     decorationIndex == 3
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 1 && colorIndex ==4 &&
                    //     decorationIndex == 4
                    //     ? Positioned(
                    //   bottom: dynamicHeight(context, 0.057),
                    //   child: Image.asset(
                    //     "assets/Custom_Cakes/1/7.png",
                    //     width: dynamicWidth(context, 0.36),   // ending of color index
                    //     // color: myBlack,
                    //   ),
                    // )
                    //     :sizeIndex == 1 && flavourIndex == 2 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 2 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 2 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 2 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 4 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 4 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 4 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 1 && flavourIndex == 4 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.35), // ending size index 1
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 1 &&
                    //     colorIndex == 1 //starting of ssize Index 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 1 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 1 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 1 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 2 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 2 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 2 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 2 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 4 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 4 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 4 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 2 && flavourIndex == 4 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.4),
                    //   // ending of sizeIndex 2
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 1 &&
                    //     colorIndex == 1 //start of sizeIndex 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 1 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 1 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 1 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 2 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 2 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 2 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 2 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 4 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 4 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 4 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 3 && flavourIndex == 4 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.45),
                    //   //ending of sizeIndex 3
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 1 &&
                    //     colorIndex == 1 //starting of size Index 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 1 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 1 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 1 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 2 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 2 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 2 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 2 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myLightPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 4 && colorIndex == 1
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myBlack,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 4 && colorIndex == 2
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 4 && colorIndex == 3
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   color: myPink,
                    // )
                    //     : sizeIndex == 4 && flavourIndex == 4 && colorIndex == 4
                    //     ? Image.asset(
                    //   "assets/Custom_Cakes/1/9.png",
                    //   width: dynamicWidth(context, 0.5),
                    //   // ending of SizeIndex 4
                    //   color: myLightPink,
                    // )
                    //     : SizedBox(),

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

Widget decorationSelection(context) {
  return decorationIndex == 1 ? Positioned(
    bottom  : sizeIndex==3 ?dynamicHeight(context, 0.1) : sizeIndex == 4 ? dynamicHeight(context, 0.12): dynamicHeight(context, 0.07),
    child: Image.asset(
      "assets/Custom_Cakes/1/10.png",
      scale: sizeIndex == 1 ? 70 : sizeIndex ==2 ?50 : sizeIndex == 3 ? 40: sizeIndex==4 ?40:0,
    ),
  ): decorationIndex == 2 ? Positioned(
    bottom  : sizeIndex==3 ?dynamicHeight(context, 0.1) : sizeIndex == 4 ? dynamicHeight(context, 0.105):dynamicHeight(context, 0.07),
    // bottom  : sizeIndex==3 ?dynamicHeight(context, 0.1) : sizeIndex == 4 ? dynamicHeight(context, 0.105):dynamicHeight(context, 0.07),
    left: sizeIndex == 3?dynamicHeight(context, 0.11) :sizeIndex == 4 ? dynamicHeight(context, 0.1):dynamicHeight(context, .155),
    child: Image.asset(
      "assets/Custom_Cakes/1/11.png",
      scale: sizeIndex == 1 ? 40 : sizeIndex ==2 ?30 : sizeIndex == 3 ? 20: sizeIndex==4 ?20:0,

    ),
  ):decorationIndex == 3 ? Positioned(
    bottom  : sizeIndex == 3 ?dynamicHeight(context, 0.08):sizeIndex == 4 ? dynamicHeight(context, 0.09):dynamicHeight(context, 0.06),
    child: Image.asset(
      "assets/Custom_Cakes/1/7.png",
      scale: sizeIndex == 1 ? 3.5 : sizeIndex ==2 ?3 : sizeIndex == 3 ? 2: sizeIndex==4 ?1.7:0,
    ),
  ):decorationIndex == 4 ? Positioned(
    bottom  : sizeIndex == 3 ? dynamicHeight(context, 0.09) :sizeIndex == 4 ? dynamicHeight(context, 0.09): dynamicHeight(context, 0.06),
    right: sizeIndex == 3 ?dynamicHeight(context, 0.1) :sizeIndex == 4 ? dynamicHeight(context, 0.07): dynamicHeight(context, 0.14),
    child: Image.asset(
      "assets/Custom_Cakes/1/12.png",
      scale: sizeIndex == 1 ? 50 : sizeIndex ==2 ?40 : sizeIndex == 3 ? 30: sizeIndex==4 ?25:0,
    ),
  ):const SizedBox();
}