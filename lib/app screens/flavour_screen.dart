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

int flavourIndex = 0;

class _FlavourScreenState extends State<FlavourScreen> {
  //dynamic flavourIndex = 0;

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
                      flavourIndex = 1;
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
                      flavourIndex = 2;
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
                      flavourIndex = 3;
                    } else if (flavourIndex != 3) {
                      flavourIndex = 3;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Pink",
                flavourIndex == 4 ? myPink : myLightPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (flavourIndex == 4) {
                      flavourIndex = 4;
                    } else if (flavourIndex != 4) {
                      flavourIndex = 4;
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
                    flavours(context),

                    // sizeIndex == 4
                    //     ? Image.asset(
                    //         "assets/Custom_Cakes/1/9.png",
                    //         width: dynamicWidth(context, 0.5),
                    //         // color : flavourIndex ==1 ? myVanilla : flavourIndex == 2 ?myChocolate : flavourIndex == 3 ?myRed: flavourIndex ==4 ?myLightPink : myPink,
                    //       )
                    //     : sizeIndex == 3
                    //         ? Image.asset("assets/Custom_Cakes/1/9.png",
                    //             width: dynamicWidth(context, 0.45))
                    //         : sizeIndex == 2
                    //             ? Image.asset("assets/Custom_Cakes/1/9.png",
                    //                 width: dynamicWidth(context, 0.4))
                    //             : sizeIndex == 1
                    //                 ? Image.asset("assets/Custom_Cakes/1/9.png",
                    //                     width: dynamicWidth(context, 0.35))
                    //                 : sizeIndex == 0
                    //                     ? const SizedBox()
                    //                     : const SizedBox(),
                    // sizeIndex == 1 && flavourIndex == 1
                    //     ? Positioned(
                    //         bottom: dynamicHeight(context, 0.025),
                    //         child: Image.asset(
                    //           "assets/Custom_Cakes/1/8.png",
                    //           width: dynamicWidth(context, 0.38),
                    //           color: myVanilla,
                    //         ),
                    //       )
                    //     : sizeIndex == 1 && flavourIndex == 2
                    //         ? Positioned(
                    //             bottom: dynamicHeight(context, 0.025),
                    //             child: Image.asset(
                    //               "assets/Custom_Cakes/1/8.png",
                    //               width: dynamicWidth(context, 0.38),
                    //             ),
                    //           )
                    //         : sizeIndex == 1 && flavourIndex == 3
                    //             ? Positioned(
                    //                 bottom: dynamicHeight(context, 0.025),
                    //                 child: Image.asset(
                    //                   "assets/Custom_Cakes/1/8.png",
                    //                   width: dynamicWidth(context, 0.38),
                    //                   color: myBrown,
                    //                 ),
                    //               )
                    //             : sizeIndex == 1 && flavourIndex == 4
                    //                 ? Positioned(
                    //                     bottom: dynamicHeight(context, 0.025),
                    //                     child: Image.asset(
                    //                       "assets/Custom_Cakes/1/8.png",
                    //                       width: dynamicWidth(context, 0.38),
                    //                       color: myPink,
                    //                     ),
                    //                   )
                    //                 : sizeIndex == 2 && flavourIndex == 1
                    //                     ? Positioned(
                    //                         bottom:
                    //                             dynamicHeight(context, 0.025),
                    //                         child: Image.asset(
                    //                           "assets/Custom_Cakes/1/8.png",
                    //                           width:
                    //                               dynamicWidth(context, 0.44),
                    //                           color: myVanilla,
                    //                         ),
                    //                       )
                    //                     : sizeIndex == 2 && flavourIndex == 2
                    //                         ? Positioned(
                    //                             bottom: dynamicHeight(
                    //                                 context, 0.025),
                    //                             child: Image.asset(
                    //                               "assets/Custom_Cakes/1/8.png",
                    //                               width: dynamicWidth(
                    //                                   context, 0.44),
                    //                             ),
                    //                           )
                    //                         : sizeIndex == 2 &&
                    //                                 flavourIndex == 3
                    //                             ? Positioned(
                    //                                 bottom: dynamicHeight(
                    //                                     context, 0.025),
                    //                                 child: Image.asset(
                    //                                   "assets/Custom_Cakes/1/8.png",
                    //                                   width: dynamicWidth(
                    //                                       context, 0.44),
                    //                                   color: myBrown,
                    //                                 ),
                    //                               )
                    //                             : sizeIndex == 2 &&
                    //                                     flavourIndex == 4
                    //                                 ? Positioned(
                    //                                     bottom: dynamicHeight(
                    //                                         context, 0.025),
                    //                                     child: Image.asset(
                    //                                       "assets/Custom_Cakes/1/8.png",
                    //                                       width: dynamicWidth(
                    //                                           context, 0.44),
                    //                                       color: myPink,
                    //                                     ),
                    //                                   )
                    //                                 : sizeIndex == 3 &&
                    //                                         flavourIndex == 1
                    //                                     ? Positioned(
                    //                                         bottom:
                    //                                             dynamicHeight(
                    //                                                 context,
                    //                                                 0.028),
                    //                                         child: Image.asset(
                    //                                           "assets/Custom_Cakes/1/8.png",
                    //                                           width:
                    //                                               dynamicWidth(
                    //                                                   context,
                    //                                                   0.49),
                    //                                           color: myVanilla,
                    //                                         ),
                    //                                       )
                    //                                     : sizeIndex == 3 &&
                    //                                             flavourIndex ==
                    //                                                 2
                    //                                         ? Positioned(
                    //                                             bottom:
                    //                                                 dynamicHeight(
                    //                                                     context,
                    //                                                     0.028),
                    //                                             child:
                    //                                                 Image.asset(
                    //                                               "assets/Custom_Cakes/1/8.png",
                    //                                               width:
                    //                                                   dynamicWidth(
                    //                                                       context,
                    //                                                       0.49),
                    //                                             ),
                    //                                           )
                    //                                         : sizeIndex == 3 &&
                    //                                                 flavourIndex ==
                    //                                                     3
                    //                                             ? Positioned(
                    //                                                 bottom: dynamicHeight(
                    //                                                     context,
                    //                                                     0.028),
                    //                                                 child: Image
                    //                                                     .asset(
                    //                                                   "assets/Custom_Cakes/1/8.png",
                    //                                                   width: dynamicWidth(
                    //                                                       context,
                    //                                                       0.49),
                    //                                                   color:
                    //                                                       myBrown,
                    //                                                 ),
                    //                                               )
                    //                                             : sizeIndex ==
                    //                                                         3 &&
                    //                                                     flavourIndex ==
                    //                                                         4
                    //                                                 ? Positioned(
                    //                                                     bottom: dynamicHeight(
                    //                                                         context,
                    //                                                         0.028),
                    //                                                     child: Image
                    //                                                         .asset(
                    //                                                       "assets/Custom_Cakes/1/8.png",
                    //                                                       width: dynamicWidth(
                    //                                                           context,
                    //                                                           0.49),
                    //                                                       color:
                    //                                                           myPink,
                    //                                                     ),
                    //                                                   )
                    //                                                 : sizeIndex ==
                    //                                                             4 &&
                    //                                                         flavourIndex ==
                    //                                                             1
                    //                                                     ? Positioned(
                    //                                                         bottom:
                    //                                                             dynamicHeight(context, 0.029),
                    //                                                         child:
                    //                                                             Image.asset(
                    //                                                           "assets/Custom_Cakes/1/8.png",
                    //                                                           width: dynamicWidth(context, 0.54),
                    //                                                           color: myVanilla,
                    //                                                         ),
                    //                                                       )
                    //                                                     : sizeIndex == 4 &&
                    //                                                             flavourIndex == 2
                    //                                                         ? Positioned(
                    //                                                             bottom: dynamicHeight(context, 0.029),
                    //                                                             child: Image.asset(
                    //                                                               "assets/Custom_Cakes/1/8.png",
                    //                                                               width: dynamicWidth(context, 0.54),
                    //                                                             ),
                    //                                                           )
                    //                                                         : sizeIndex == 4 && flavourIndex == 3
                    //                                                             ? Positioned(
                    //                                                                 bottom: dynamicHeight(context, 0.029),
                    //                                                                 child: Image.asset(
                    //                                                                   "assets/Custom_Cakes/1/8.png",
                    //                                                                   width: dynamicWidth(context, 0.54),
                    //                                                                   color: myBrown,
                    //                                                                 ),
                    //                                                               )
                    //                                                             : sizeIndex == 4 && flavourIndex == 4
                    //                                                                 ? Positioned(
                    //                                                                     bottom: dynamicHeight(context, 0.029),
                    //                                                                     child: Image.asset(
                    //                                                                       "assets/Custom_Cakes/1/8.png",
                    //                                                                       width: dynamicWidth(context, 0.54),
                    //                                                                       color: myPink,
                    //                                                                     ),
                    //                                                                   )
                    //                                                                 : SizedBox(),
                  ],
                ),
              ),
              downBar(
                context,
                nextPage: flavourIndex == 0
                    ? () {
                        MotionToast.warning(
                          title: const Text("Warning"),
                          description:
                              const Text("Select flavour to proceed!!"),
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

Widget flavours(context) {
  return flavourIndex == 1
      ? Positioned(
          bottom:  dynamicHeight(context, 0.029),
          child: Image.asset(
            "assets/Custom_Cakes/1/8.png",
           // width: dynamicWidth(context, 0.54),
            scale: sizeIndex == 1 ? 3.5 : sizeIndex ==2 ?3 : sizeIndex == 3 ? 2: sizeIndex==4 ?1.7 :0,
            color: myVanilla,
          ),
        )
      : flavourIndex == 2
          ? Positioned(
              bottom: dynamicHeight(context, 0.029),
              child: Image.asset(
                "assets/Custom_Cakes/1/8.png",
                scale: sizeIndex == 1 ? 3.5 : sizeIndex ==2 ?3 : sizeIndex == 3 ? 2: sizeIndex==4 ?1.7:0,
              ),
            )
          : flavourIndex == 3
              ? Positioned(
                  bottom: dynamicHeight(context, 0.029),
                  child: Image.asset(
                    "assets/Custom_Cakes/1/8.png",
                    scale: sizeIndex == 1 ? 3.5 : sizeIndex ==2 ?3 : sizeIndex == 3 ? 2: sizeIndex==4 ?1.7:0,
                    color: myBrown,
                  ),
                )
              : flavourIndex == 4
                  ? Positioned(
                      bottom: dynamicHeight(context, 0.029),
                      child: Image.asset(
                        "assets/Custom_Cakes/1/8.png",
                        scale: sizeIndex == 1 ? 3.5 : sizeIndex ==2 ?3 : sizeIndex == 3 ? 2: sizeIndex==4 ?1.7 :0,
                        color: myPink,
                      ),
                    )
                  : SizedBox();
}
