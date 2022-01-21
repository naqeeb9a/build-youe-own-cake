import 'package:build_own_cake/app%20screens/special_wishes_screen.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DecorationScreen extends StatefulWidget {
  const DecorationScreen({ Key? key }) : super(key: key);

  @override
  _DecorationScreenState createState() => _DecorationScreenState();
}

class _DecorationScreenState extends State<DecorationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: dynamicWidth(context, 1),
          height: dynamicHeight(context, 1),
          padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, 0.04),
            vertical: dynamicHeight(context, 0.01),
          ),
          color: myRed.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appBar(context),
              heightBox(context, 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: text(context, "Choose the Decoration.", 0.1, myBlack, bold: true)),
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
                "Chocolate bar",
                myGrey,
                width: dynamicWidth(context, 0.5),
              ),
              heightBox(context, 0.015),
              coloredButton(
                context,
                "Pineapple",
                myGrey,
                width: dynamicWidth(context, 0.5),
              ),
              heightBox(context, 0.015),
              coloredButton(
                context,
                "Cream icing",
                myGrey,
                width: dynamicWidth(context, 0.5),
              ),
              heightBox(context, 0.015),
              coloredButton(
                context,
                "Bunty",
                myGrey,
                width: dynamicWidth(context, 0.5),
              ),
              heightBox(context, 0.1),
              downBar(
                context,
                const SpecialWishesScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}