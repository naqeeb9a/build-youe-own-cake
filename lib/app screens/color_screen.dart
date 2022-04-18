import 'package:build_own_cake/app%20screens/special_wishes_screen.dart';
import 'package:build_own_cake/function/cake.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:provider/provider.dart';

import '../utils/app_routes.dart';
import 'decoration_screen.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);
  static const List cakeColors = [
    "Pastel blue",
    "pink",
    "lilac",
    "white",
    "black",
    "yellow",
    "pastel pink",
    "Shaded navy and white",
    "Shaded pink and white",
    "Stencil ",
    "Semi-naked (white) "
  ];
  @override
  Widget build(BuildContext context) {
    int sizeIndex = Provider.of<CakeProvider>(context).sizeIndex;
    int colorIndex = Provider.of<CakeProvider>(context).colorIndex;
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
                    heightBox(context, .07),
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
                    heightBox(context, 0.02),
                    displayChoices(context, cakeColors, colorIndex),
                    heightBox(context, .02),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Positioned(
                              bottom: -10,
                              child: Image.asset("assets/base.png")),
                          CakeProvider().cakeSize(context,sizeIndex),
                          CakeProvider().colorsSelection(sizeIndex, colorIndex),
                        ],
                      ),
                    ),
                    downBar(context,
                        nextPage: colorIndex == 0
                            ? () {
                                MotionToast.warning(
                                  title: const Text("Warning"),
                                  description:
                                      const Text("Select color to proceed!!"),
                                  animationCurve: Curves.ease,
                                  borderRadius: 0,
                                  animationDuration:
                                      const Duration(milliseconds: 400),
                                ).show(context);
                              }
                            : () {
                                push(context, const DecorationScreen());
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

  Widget displayChoices(
    context,
    array,
    chooseIndex,
  ) {
    return SizedBox(
      height: dynamicWidth(context, .15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: array.length,
        itemBuilder: (BuildContext context, int index) {
          return coloredButton1(
            context,
            array[index],
            chooseIndex == (index + 1) ? myPink : myLightPink1,
            width: dynamicWidth(context, 0.3),
            selectedTick: chooseIndex == (index + 1) ? true : false,
            function: () {
              Provider.of<CakeProvider>(context, listen: false)
                  .changeColorIndex(index + 1, array[index]);
            },
          );
        },
      ),
    );
  }


}
