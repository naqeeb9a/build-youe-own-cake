import 'package:build_own_cake/app%20screens/special_wishes_screen.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DecorationScreen extends StatefulWidget {
  const DecorationScreen({Key? key}) : super(key: key);

  @override
  _DecorationScreenState createState() => _DecorationScreenState();
}

class _DecorationScreenState extends State<DecorationScreen> {
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
                  "https://i.pinimg.com/originals/20/a9/b1/20a9b1a50644a3c140205a163e696147.jpg"),
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appBar(context),
              heightBox(context, .1),
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Choose Decoration.",
                  .09,
                  myBlack,
                  bold: true,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Select decoration of cake to then proceed.",
                  .044,
                  myGrey.withOpacity(0.7),
                ),
              ),
              heightBox(context, 0.04),
              coloredButton(
                context,
                "Chocolate Bar",
                myGrey,
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "Pineapple",
                myGrey,
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "Cream Icing",
                myGrey,
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "Bunty",
                myGrey,
                width: dynamicWidth(context, 0.4),
              ),
              heightBox(context, .14),
              downBar(
                context,
                nextPage: const SpecialWishesScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
