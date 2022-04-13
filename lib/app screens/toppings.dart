import 'package:build_own_cake/app%20screens/size_screen.dart';
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

class Toppings extends StatefulWidget {
  const Toppings({Key? key}) : super(key: key);

  @override
  _ToppingsState createState() => _ToppingsState();
}

int decorationIndex = 0;

class _ToppingsState extends State<Toppings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          pageDecoration(context),
          Center(
            child: Container(
              width: dynamicWidth(context, .88),
              height: dynamicHeight(context, 1),
              padding: EdgeInsets.symmetric(
                vertical: dynamicHeight(context, .01),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appBar(context),
                  heightBox(context, .1),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: text(context, "Choose Toppings.", .09, myBlack,
                        bold: true, font: true),
                  ),
                  heightBox(context, 0.04),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      coloredButton1(
                        context,
                        "Happy birthday",
                        decorationIndex == 1 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: decorationIndex == 1 ? true : false,
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
                      coloredButton1(
                        context,
                        "Happy anniversary",
                        decorationIndex == 2 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: decorationIndex == 2 ? true : false,
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
                      coloredButton1(
                        context,
                        "Congratulations",
                        decorationIndex == 3 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: decorationIndex == 3 ? true : false,
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
                      coloredButton1(
                        context,
                        "Bride to be",
                        decorationIndex == 4 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: decorationIndex == 4 ? true : false,
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
                      coloredButton1(
                        context,
                        "Age numbers (with fondant)",
                        decorationIndex == 4 ? myPink : myLightPink1,
                        width: dynamicWidth(context, 0.3),
                        selectedTick: decorationIndex == 4 ? true : false,
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
                    ]),
                  ),
                  heightBox(context, .02),
                  AnimatedScale(
                    duration: const Duration(seconds: 1),
                    scale: 2,
                    child: CustomPaint(
                      size: const Size(300, 200),
                      painter: RPSCustomPainter(),
                    ),
                  ),
                  // SizedBox(
                  //   width: double.infinity,
                  //   height: 200,
                  //   child: Stack(
                  //     alignment: Alignment.bottomCenter,
                  //     children: [
                  //       cakeSize(context),
                  //       colorsSelection(),
                  //       decorationSelection(context),
                  //     ],
                  //   ),
                  // ),
                  downBar(
                    context,
                    nextPage: decorationIndex == 0
                        ? () {
                            MotionToast.warning(
                              title: const Text("Warning"),
                              description:
                                  const Text("Select decoration to proceed!!"),
                              animationCurve: Curves.ease,
                              borderRadius: 0,
                              animationDuration:
                                  const Duration(milliseconds: 400),
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
        ],
      )),
    );
  }
}

Widget decorationSelection(context) {
  selection(double p1, double p2, double p3, double p4, double s1, double s2,
      double s3, double s4) {
    return Positioned(
      bottom: decorationIndex == 1 ? p1 : p4,
      child: Image.asset(
        decorationIndex == 1
            ? "assets/Custom_Cakes/1/10.png"
            : "assets/Custom_Cakes/1/12.png",
        scale: decorationIndex == 1 ? s1 : s4,
      ),
    );
  }

  return sizeIndex == 1
      ? selection(110, 110, 100, 105, 50, 20, 2.5, 40)
      : selection(140, 120, 115, 130, 30, 10, 1.4, 40);
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = myBrown
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    double leftPadding = 0.4;
    double topHeigth = 0.3;
    double upperCurveHeight = 0.2185000;
    double bottomHeigth = 0.61;
    double curveWidth = 0.5;
    double bottomCurveHeight = 0.7072286;
    double uHeight = 0.5542857;
    double rigthPadding = 0.6;
    path0.moveTo(size.width * leftPadding, size.height * topHeigth);
    path0.quadraticBezierTo(size.width * leftPadding, size.height * uHeight,
        size.width * leftPadding, size.height * bottomHeigth);
    path0.quadraticBezierTo(
        size.width * curveWidth,
        size.height * bottomCurveHeight,
        size.width * rigthPadding,
        size.height * bottomHeigth);
    path0.quadraticBezierTo(size.width * rigthPadding, size.height * uHeight,
        size.width * rigthPadding, size.height * topHeigth);
    path0.quadraticBezierTo(
        size.width * curveWidth,
        size.height * upperCurveHeight,
        size.width * leftPadding,
        size.height * topHeigth);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
