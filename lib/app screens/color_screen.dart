import 'package:build_own_cake/app%20screens/flavour_screen.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({ Key? key }) : super(key: key);

  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: dynamicWidth(context, 1),
        height: dynamicHeight(context, 1),
        padding: EdgeInsets.symmetric(
          horizontal :dynamicWidth(context, 0.04),
          vertical  : dynamicHeight(context, 0.01),
        ),
        color: myWhite.withOpacity(0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appBar(context),
            heightBox(context, 0.06),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(context, "Choose the Color.", 0.1, myBlack, bold: true),
              ],
            ),
           heightBox(context, 0.006),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: text(
                    context,
                    "Log in to view personalized recommendations, follow creatives and more.",
                    0.05,
                    myGrey.withOpacity(0.8),
                  ),
                ),
              ],
            ),
            heightBox(context, 0.04),
            coloredButton(
            context,
            "Red",
            myRed,
            width: dynamicWidth(context, 0.5),
          ),
          heightBox(context, 0.015),
          coloredButton(
            context,
            "Chocolate",
            myBrown,
            width: dynamicWidth(context, 0.5),
          ),
          heightBox(context, 0.015),
          coloredButton(
            context,
            "Pink",
            myPink,
            width: dynamicWidth(context, 0.5),
          ),
          heightBox(context, 0.015),
          coloredButton(
            context,
            "LightPink",
            myLightPink1,
            width: dynamicWidth(context, 0.5),
          ),
          //  heightBox(context, 0.03),
          //   // coloredButton(
          //   //   context,
          //   //   "Choose",
          //   //   myGrey,
          //   //   width: dynamicWidth(context, 0.5),
          //   // ),
            heightBox(context, 0.1),
            downBar(context,const FlavourScreen(),),
          ],
        ),
      )),
    );
  }
}