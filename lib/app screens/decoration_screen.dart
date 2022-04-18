import 'package:build_own_cake/app%20screens/special_wishes_screen.dart';
import 'package:build_own_cake/app%20screens/toppings.dart';
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

class DecorationScreen extends StatelessWidget {
  const DecorationScreen({Key? key}) : super(key: key);
  static const List decorationList = [
    "Macarons",
    "Gold Foil at front",
    "Sprinkles",
    "Pearls",
    "Butterflies",
    "Chocolate shards",
    "Chocolate drip/ white chocolate drip/golden drip",
    "Chocolate balls",
    "Edible bear",
    "Edible elephant",
    "Edible swan",
    "Fake flowers (top)",
    "Fake flowers (top & side)",
    "Fresh flowers arrangement (top & bottom side)",
    "Fresh flowers arrangement (top side only)",
    "Rice sheet",
    "Meringue kisses",
    "Candies",
    "Heart"
  ];
  @override
  Widget build(BuildContext context) {
    int sizeIndex = Provider.of<CakeProvider>(context).sizeIndex;
    int colorIndex = Provider.of<CakeProvider>(context).colorIndex;
    int decorationIndex = Provider.of<CakeProvider>(context).decorationIndex;
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
                    child: text(context, "Choose Decoration.", .09, myBlack,
                        bold: true, font: true),
                  ),
                  heightBox(context, 0.04),
                  displayChoices(context, decorationList, decorationIndex),
                  heightBox(context, .02),
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CakeProvider().cakeSize(context,sizeIndex),
                        CakeProvider().colorsSelection(sizeIndex, colorIndex),
                        CakeProvider().decorationSelection(
                            context, sizeIndex, decorationIndex),
                      ],
                    ),
                  ),
                  downBar(context,
                      nextPage: decorationIndex == 0
                          ? () {
                              MotionToast.warning(
                                title: const Text("Warning"),
                                description:
                                    const Text("Select Toppings to proceed!!"),
                                animationCurve: Curves.ease,
                                borderRadius: 0,
                                animationDuration:
                                    const Duration(milliseconds: 400),
                              ).show(context);
                            }
                          : () {
                              push(context, const Toppings());
                            },
                      price: sizeIndex == 1
                          ? (4000 + (decorationIndex == 1 ? 100 : 300))
                          : (6000 + (decorationIndex == 1 ? 100 : 300))),
                ],
              ),
            ),
          ),
        ],
      )),
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
                  .changeDecorationIndex(index + 1);
            },
          );
        },
      ),
    );
  }
}


