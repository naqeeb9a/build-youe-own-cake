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
                      colorIndex = 1;
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
                      colorIndex = 2;
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
                      colorIndex = 3;
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
                      colorIndex = 4;
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
                    //for size of cake
                    sizeIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                    )
                        : sizeIndex == 3
                        ? Image.asset("assets/Custom_Cakes/1/9.png",
                        width: dynamicWidth(context, 0.45))
                        : sizeIndex == 2
                        ? Image.asset("assets/Custom_Cakes/1/9.png",
                        width: dynamicWidth(context, 0.4))
                        : sizeIndex == 1
                        ? Image.asset("assets/Custom_Cakes/1/9.png",
                        width: dynamicWidth(context, 0.35))
                        : sizeIndex == 0
                        ? const SizedBox()
                        : const SizedBox(),


                    //for color of cake
                    sizeIndex == 1 && flavourIndex == 1 && colorIndex==1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),
                      color: myBlack,
                    )
                        : sizeIndex == 1 && flavourIndex == 1 && colorIndex==2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),

                    )
                        :sizeIndex == 1 && flavourIndex == 1 && colorIndex==3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),
                      color: myPink,
                    )
                        :sizeIndex == 1 && flavourIndex == 1 && colorIndex==4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),
                      color: myLightPink,
                    )
                        :sizeIndex == 1 && flavourIndex == 2 && colorIndex ==1
                        ? Image.asset(
                          "assets/Custom_Cakes/1/9.png",
                          width: dynamicWidth(context, 0.35),
                          color: myBlack,
                        )
                        :sizeIndex == 1 && flavourIndex == 2 && colorIndex == 2
                        ? Image.asset(
                          "assets/Custom_Cakes/1/9.png",
                          width: dynamicWidth(context, 0.35),

                        )
                            : sizeIndex == 1 && flavourIndex == 2 && colorIndex ==3
                        ? Image.asset(
                        "assets/Custom_Cakes/1/9.png",
                        width: dynamicWidth(context, 0.35),
                        color: myPink,
                        )
                            : sizeIndex == 1 && flavourIndex == 2 && colorIndex == 4
                        ? Image.asset(
                        "assets/Custom_Cakes/1/9.png",
                        width: dynamicWidth(context, 0.35),
                        color: myLightPink,
                        )
                        :  sizeIndex == 1 && flavourIndex == 3 && colorIndex == 1
                        ? Image.asset(
                          "assets/Custom_Cakes/1/9.png",
                          width: dynamicWidth(context, 0.35),
                         color: myBlack,
                        )
                        : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),

                    )
                        : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),
                      color: myPink,
                    )
                        : sizeIndex == 1 && flavourIndex == 3 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),
                      color: myLightPink,
                    )
                        : sizeIndex == 1 && flavourIndex == 4 && colorIndex == 1
                        ? Image.asset(
                          "assets/Custom_Cakes/1/9.png",
                          width: dynamicWidth(context, 0.35),
                          color: myBlack,
                        )
                        :  sizeIndex == 1 && flavourIndex == 4 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),

                    )
                        :  sizeIndex == 1 && flavourIndex == 4 && colorIndex == 3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),
                      color: myPink,
                    )
                        :  sizeIndex == 1 && flavourIndex == 4 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.35),       // ending size index 1
                      color: myLightPink,
                    )
                        : sizeIndex == 2 && flavourIndex == 1 && colorIndex==1  //starting of ssize Index 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myBlack,
                    )
                        : sizeIndex == 2 && flavourIndex == 1 && colorIndex==2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),

                    )
                        :sizeIndex == 2 && flavourIndex == 1 && colorIndex==3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myPink,
                    )
                        :sizeIndex == 2 && flavourIndex == 1 && colorIndex==4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myLightPink,
                    )
                        :sizeIndex == 2 && flavourIndex == 2 && colorIndex ==1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myBlack,
                    )
                        :sizeIndex == 2 && flavourIndex == 2 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),

                    )
                        : sizeIndex == 2 && flavourIndex == 2 && colorIndex ==3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myPink,
                    )
                        : sizeIndex == 2 && flavourIndex == 2 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myLightPink,
                    )
                        :  sizeIndex == 2 && flavourIndex == 3 && colorIndex == 1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myBlack,
                    )
                        : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),

                    )
                        : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myPink,
                    )
                        : sizeIndex == 2 && flavourIndex == 3 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myLightPink,
                    )
                        : sizeIndex == 2 && flavourIndex == 4 && colorIndex == 1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myBlack,
                    )
                        :  sizeIndex == 2 && flavourIndex == 4 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),

                    )
                        :  sizeIndex == 2 && flavourIndex == 4 && colorIndex == 3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),
                      color: myPink,
                    )
                        :  sizeIndex == 2 && flavourIndex == 4 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.4),     // ending of sizeIndex 2
                      color: myLightPink,
                    )
                        : sizeIndex == 3 && flavourIndex == 1 && colorIndex==1  //start of sizeIndex 3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myBlack,
                    )
                        : sizeIndex == 3 && flavourIndex == 1 && colorIndex==2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),

                    )
                        :sizeIndex == 3 && flavourIndex == 1 && colorIndex==3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myPink,
                    )
                        :sizeIndex == 3 && flavourIndex == 1 && colorIndex==4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myLightPink,
                    )
                        :sizeIndex == 3 && flavourIndex == 2 && colorIndex ==1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myBlack,
                    )
                        :sizeIndex == 3 && flavourIndex == 2 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),

                    )
                        : sizeIndex == 3 && flavourIndex == 2 && colorIndex ==3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myPink,
                    )
                        : sizeIndex == 3 && flavourIndex == 2 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myLightPink,
                    )
                        :  sizeIndex == 3 && flavourIndex == 3 && colorIndex == 1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myBlack,
                    )
                        : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),

                    )
                        : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myPink,
                    )
                        : sizeIndex == 3 && flavourIndex == 3 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myLightPink,
                    )
                        : sizeIndex == 3 && flavourIndex == 4 && colorIndex == 1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myBlack,
                    )
                        :  sizeIndex == 3 && flavourIndex == 4 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),

                    )
                        :  sizeIndex == 3 && flavourIndex == 4 && colorIndex == 3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45),
                      color: myPink,
                    )
                        :  sizeIndex == 3 && flavourIndex == 4 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.45), //ending of sizeIndex 3
                      color: myLightPink,
                    )
                        :sizeIndex == 4 && flavourIndex == 1 && colorIndex==1  //starting of size Index 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myBlack,
                    )
                        : sizeIndex == 4 && flavourIndex == 1 && colorIndex==2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),

                    )
                        :sizeIndex == 4 && flavourIndex == 1 && colorIndex==3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myPink,
                    )
                        :sizeIndex == 4 && flavourIndex == 1 && colorIndex==4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myLightPink,
                    )
                        :sizeIndex == 4 && flavourIndex == 2 && colorIndex ==1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myBlack,
                    )
                        :sizeIndex == 4 && flavourIndex == 2 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),

                    )
                        : sizeIndex ==4 && flavourIndex == 2 && colorIndex ==3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myPink,
                    )
                        : sizeIndex == 4 && flavourIndex == 2 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myLightPink,
                    )
                        :  sizeIndex == 4 && flavourIndex == 3 && colorIndex == 1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myBlack,
                    )
                        : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),

                    )
                        : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myPink,
                    )
                        : sizeIndex == 4 && flavourIndex == 3 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myLightPink,
                    )
                        : sizeIndex == 4 && flavourIndex == 4 && colorIndex == 1
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myBlack,
                    )
                        :  sizeIndex ==4 && flavourIndex == 4 && colorIndex == 2
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),

                    )
                        :  sizeIndex == 4 && flavourIndex == 4 && colorIndex == 3
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),
                      color: myPink,
                    )
                        :  sizeIndex == 4 && flavourIndex == 4 && colorIndex == 4
                        ? Image.asset(
                      "assets/Custom_Cakes/1/9.png",
                      width: dynamicWidth(context, 0.5),  // ending of SizeIndex 4
                      color: myLightPink,
                    )
                        : SizedBox(),

                    //for flavour  of cake
                    sizeIndex == 1 && flavourIndex == 1
                        ? Positioned(
                      bottom: dynamicHeight(context, 0.025),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(context, 0.38),
                        color: myVanilla,
                      ),
                    )
                        : sizeIndex == 1 && flavourIndex == 2
                        ? Positioned(
                      bottom: dynamicHeight(context, 0.025),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(context, 0.38),
                      ),
                    )
                        : sizeIndex == 1 && flavourIndex == 3
                        ? Positioned(
                      bottom: dynamicHeight(context, 0.025),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(context, 0.38),
                        color: myBrown,
                      ),
                    )
                        : sizeIndex == 1 && flavourIndex == 4
                        ? Positioned(
                      bottom: dynamicHeight(context, 0.025),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(context, 0.38),
                        color: myPink,
                      ),
                    )
                        : sizeIndex == 2 && flavourIndex == 1
                        ? Positioned(
                      bottom:
                      dynamicHeight(context, 0.025),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width:
                        dynamicWidth(context, 0.44),
                        color: myVanilla,
                      ),
                    )
                        : sizeIndex == 2 && flavourIndex == 2
                        ? Positioned(
                      bottom: dynamicHeight(
                          context, 0.025),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(
                            context, 0.44),
                      ),
                    )
                        : sizeIndex == 2 &&
                        flavourIndex == 3
                        ? Positioned(
                      bottom: dynamicHeight(
                          context, 0.025),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(
                            context, 0.44),
                        color: myBrown,
                      ),
                    )
                        : sizeIndex == 2 &&
                        flavourIndex == 4
                        ? Positioned(
                      bottom: dynamicHeight(
                          context, 0.025),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(
                            context, 0.44),
                        color: myPink,
                      ),
                    )
                        : sizeIndex == 3 &&
                        flavourIndex == 1
                        ? Positioned(
                      bottom:
                      dynamicHeight(
                          context,
                          0.028),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width:
                        dynamicWidth(
                            context,
                            0.49),
                        color: myVanilla,
                      ),
                    )
                        : sizeIndex == 3 &&
                        flavourIndex ==
                            2
                        ? Positioned(
                      bottom:
                      dynamicHeight(
                          context,
                          0.028),
                      child:
                      Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width:
                        dynamicWidth(
                            context,
                            0.49),
                      ),
                    )
                        : sizeIndex == 3 &&
                        flavourIndex ==
                            3
                        ? Positioned(
                      bottom: dynamicHeight(
                          context,
                          0.028),
                      child: Image
                          .asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(
                            context,
                            0.49),
                        color:
                        myBrown,
                      ),
                    )
                        : sizeIndex ==
                        3 &&
                        flavourIndex ==
                            4
                        ? Positioned(
                      bottom: dynamicHeight(
                          context,
                          0.028),
                      child: Image
                          .asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(
                            context,
                            0.49),
                        color:
                        myPink,
                      ),
                    )
                        : sizeIndex ==
                        4 &&
                        flavourIndex ==
                            1
                        ? Positioned(
                      bottom:
                      dynamicHeight(context, 0.029),
                      child:
                      Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(context, 0.54),
                        color: myVanilla,
                      ),
                    )
                        : sizeIndex == 4 &&
                        flavourIndex == 2
                        ? Positioned(
                      bottom: dynamicHeight(context, 0.029),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(context, 0.54),
                      ),
                    )
                        : sizeIndex == 4 && flavourIndex == 3
                        ? Positioned(
                      bottom: dynamicHeight(context, 0.029),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(context, 0.54),
                        color: myBrown,
                      ),
                    )
                        : sizeIndex == 4 && flavourIndex == 4
                        ? Positioned(
                      bottom: dynamicHeight(context, 0.029),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        width: dynamicWidth(context, 0.54),
                        color: myPink,
                      ),
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
                    title: const Text("Warning"),

                    description: const Text("Select color to proceed!!"),
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
