import 'package:build_own_cake/app%20screens/flavour_screen.dart';
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

class SizeScreen extends StatefulWidget {
  const SizeScreen({Key? key}) : super(key: key);

  @override
  _SizeScreenState createState() => _SizeScreenState();
}

int sizeIndex = 1;

class _SizeScreenState extends State<SizeScreen> {
  // int sizeIndex = 0;

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
                    heightBox(context, 0.04),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text(
                        context,
                        "Choose Size.",
                        .09,
                        myBlack,
                        bold: true,
                      ),
                    ),
                    heightBox(context, 0.04),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          coloredButton1(
                            context,
                            "2.5 lbs",
                            sizeIndex == 1 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: sizeIndex == 1 ? true : false,
                            function: () {
                              setState(() {
                                if (sizeIndex == 1) {
                                  sizeIndex = 1;
                                } else if (sizeIndex != 1) {
                                  sizeIndex = 1;
                                }
                              });
                            },
                          ),
                          coloredButton1(
                            context,
                            "4 lbs",
                            sizeIndex == 2 ? myPink : myLightPink1,
                            width: dynamicWidth(context, 0.3),
                            selectedTick: sizeIndex == 2 ? true : false,
                            function: () {
                              setState(() {
                                if (sizeIndex == 2) {
                                  sizeIndex = 2;
                                } else if (sizeIndex != 2) {
                                  sizeIndex = 2;
                                }
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    heightBox(context, .02),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: cakeSize(context),
                      ),
                    ),
                    text(
                        context,
                        sizeIndex == 1
                            ? "Serving size about 8 People"
                            : "Serving size about 12 – 15 people ",
                        0.03,
                        myBlack),
                    downBar(context,
                        nextPage: sizeIndex == 0
                            ? () {
                                MotionToast.warning(
                                  title: const Text("Warning"),
                                  description:
                                      const Text("Select size to proceed!!"),
                                  animationCurve: Curves.ease,
                                  borderRadius: 0,
                                  animationDuration:
                                      const Duration(milliseconds: 400),
                                ).show(context);
                              }
                            : () {
                                push(context, const FlavourScreen());
                              },
                        price: sizeIndex == 1 ? 4000 : 6000),
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

Widget cakeSize(context) {
  return AnimatedScale(
      scale: sizeIndex == 1 ? 0.4 : 0.7,
      duration: const Duration(milliseconds: 600),
      curve: Curves.bounceOut,
      child: sizeIndex == 0
          ? const SizedBox()
          : Image.asset(
              "assets/Custom_Cakes/1/9.png",
            ));
}
