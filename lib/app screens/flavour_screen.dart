import 'package:build_own_cake/app%20screens/color_screen.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class FlavourScreen extends StatefulWidget {
  const FlavourScreen({Key? key}) : super(key: key);

  @override
  _FlavourScreenState createState() => _FlavourScreenState();
}

class _FlavourScreenState extends State<FlavourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: dynamicWidth(context, 1),
      height: dynamicHeight(context, 1),
      padding: EdgeInsets.all(
        dynamicWidth(context, 0.025),
      ),
      color: myLightPink.withOpacity(0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          appBar(context),
          heightBox(context, 0.06),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              text(context, "Choose the flavour.", 0.1, myBlack, bold: true),
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
            "Vanilla",
            myGrey,
            width: dynamicWidth(context, 0.5),
          ),
          heightBox(context, 0.015),
          // Padding(
          //   padding: EdgeInsets.all(
          //     dynamicWidth(context, 0.05),
          //   ),
          // ),
          coloredButton(
            context,
            "Chocolate",
            myGrey,
            width: dynamicWidth(context, 0.5),
          ),
          heightBox(context, 0.015),
          coloredButton(
            context,
            "Strawberry",
            myGrey,
            width: dynamicWidth(context, 0.5),
          ),
          heightBox(context, 0.015),
          coloredButton(
            context,
            "Another",
            myGrey,
            width: dynamicWidth(context, 0.5),
          ),
          heightBox(context, 0.15),
          downBar(
            context,
            const ColorScreen(),
          ),
        ],
      ),
    )));
  }
}
