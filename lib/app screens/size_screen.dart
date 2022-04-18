import 'package:build_own_cake/app%20screens/sponge_screen.dart';
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

class SizeScreen extends StatelessWidget {
  const SizeScreen({Key? key}) : super(key: key);

  // int sizeIndex = 0;
  static const List sizes = ["2.5 lbs", "4 lbs"];
  @override
  Widget build(BuildContext context) {
    int sizeIndex = Provider.of<CakeProvider>(context).sizeIndex;
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
                    displayChoices(
                      context,
                      sizes,
                      sizeIndex,
                    ),
                    heightBox(context, .02),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CakeProvider()
                            .cakeSize(context, sizeIndex),
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
                                push(context, const SpongeScreen());
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
                  .changeSizeIndex(index + 1);
            },
          );
        },
      ),
    );
  }
}
