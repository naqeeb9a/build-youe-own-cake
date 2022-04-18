import 'package:build_own_cake/app%20screens/color_screen.dart';
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

class SpongeScreen extends StatelessWidget {
  const SpongeScreen({Key? key}) : super(key: key);

  static const sponges = ["Vanilla", "Chocolate"];
  static const spongeFillings = [
    "Chocolate Fudge",
    "Salted Caramel",
    "Vanilla Buttercream",
    "Coffee Buttercream",
    "Maple Buttercream",
    "Lemon Curd",
    "Mix Fruit"
  ];
  @override
  Widget build(BuildContext context) {
    int spongeIndex = Provider.of<CakeProvider>(context).spongeIndex;
    int fillingIndex = Provider.of<CakeProvider>(context).fillingIndex;
    int sizeIndex = Provider.of<CakeProvider>(context).sizeIndex;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            pageDecoration(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appBar(context),
                  mainHeading(context, "Choose	Sponge."),
                  displayChoices(context, sponges, spongeIndex, true),
                  mainHeading(context, "Choose	Filling."),
                  displayChoices(context, spongeFillings, fillingIndex, false),
                  downBar(context,
                      nextPage: spongeIndex == 0
                          ? () {
                              MotionToast.warning(
                                title: const Text("Warning"),
                                description:
                                    const Text("Select flavour to proceed!!"),
                                animationCurve: Curves.ease,
                                borderRadius: 0,
                                animationDuration:
                                    const Duration(milliseconds: 400),
                              ).show(context);
                            }
                          : () {
                              push(context, const ColorScreen());
                            },
                      price: sizeIndex == 1 ? 4000 : 6000),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mainHeading(context, text2) {
    return Align(
      alignment: Alignment.centerLeft,
      child: text(
        context,
        text2,
        .09,
        myBlack,
        bold: true,
      ),
    );
  }

  Widget displayChoices(context, array, chooseIndex, bool check) {
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
              check
                  ? Provider.of<CakeProvider>(context, listen: false)
                      .changeSpongeIndex(index + 1)
                  : Provider.of<CakeProvider>(context, listen: false)
                      .changeFillingIndex(index + 1);
            },
          );
        },
      ),
    );
  }
}
