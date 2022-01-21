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
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: dynamicWidth(context, 1),
          height: dynamicHeight(context, 1),
          padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, .04),
            vertical: dynamicHeight(context, .01),
          ),
          decoration: const BoxDecoration(
              color: myLightPink1,
              image: DecorationImage(
                  opacity: 0.4,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://png.pngtree.com/thumb_back/fw800/back_our/20190620/ourmid/pngtree-hand-drawn-cartoon-dessert-poster-background-image_154710.jpg"),),),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appBar(context),
              heightBox(context, 0.1),
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Choose Flavour.",
                  .09,
                  myBlack,
                  bold: true,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Choose flavour of your taste to proceed.",
                  0.044,
                  myGrey.withOpacity(0.7),
                ),
              ),
              heightBox(context, 0.04),
              coloredButton(
                context,
                "Vanilla",
                myGrey.withOpacity(.8),
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "Chocolate",
                myGrey.withOpacity(.8),
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "Strawberry",
                myGrey.withOpacity(.8),
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "Another",
                myGrey.withOpacity(.8),
                width: dynamicWidth(context, 0.4),
              ),
              heightBox(context, 0.14),
              downBar(
                context,
               nextPage:  const ColorScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
