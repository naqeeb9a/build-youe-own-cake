import 'package:build_own_cake/app%20screens/special_wishes_screen.dart';
import 'package:build_own_cake/function/cake.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:provider/provider.dart';

class Toppings extends StatelessWidget {
  const Toppings({Key? key}) : super(key: key);
  static const List toppingsList = [
    "Happy birthday",
    "Happy anniversary",
    "Congratulations",
    "Bride to be",
    "Age numbers (with fondant)"
  ];
  @override
  Widget build(BuildContext context) {
    int sizeIndex = Provider.of<CakeProvider>(context).sizeIndex;
    int colorIndex = Provider.of<CakeProvider>(context).colorIndex;
    int decorationIndex = Provider.of<CakeProvider>(context).decorationIndex;
    int toppingsIndex = Provider.of<CakeProvider>(context).toppingsIndex;
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
                  displayChoices(context, toppingsList, toppingsIndex),
                  heightBox(context, .02),
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CakeProvider().cakeSize(context, sizeIndex),
                        CakeProvider().colorsSelection(sizeIndex, colorIndex),
                        CakeProvider().decorationSelection(
                            context, sizeIndex, decorationIndex),
                      ],
                    ),
                  ),
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
                  .changeToppingsIndex(index + 1);
            },
          );
        },
      ),
    );
  }
}
