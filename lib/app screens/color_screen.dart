import 'package:build_own_cake/app%20screens/decoration_screen.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: dynamicWidth(context, 1),
          height: dynamicHeight(context, 1),
          padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, .04),
            vertical: dynamicHeight(context, .01),
          ),
          color: myGrey.withOpacity(0.2),
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
                child: Expanded(
                  child: text(
                    context,
                    "Choose the color of your cake and then proceed.",
                    .044,
                    myGrey.withOpacity(0.7),
                  ),
                ),
              ),
              heightBox(context, 0.04),
              coloredButton(
                context,
                "Black",
                myBlack,
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "Chocolate",
                myBrown,
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "Pink",
                myPink,
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "LightP ink",
                myLightPink1,
                width: dynamicWidth(context, 0.4),
              ),
              heightBox(context, .14),
              downBar(
                context,
                const DecorationScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
