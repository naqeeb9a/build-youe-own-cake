import 'package:build_own_cake/app%20screens/cake_preview.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/form_fields.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SpecialWishesScreen extends StatefulWidget {
  const SpecialWishesScreen({Key? key}) : super(key: key);

  @override
  _SpecialWishesScreenState createState() => _SpecialWishesScreenState();
}

class _SpecialWishesScreenState extends State<SpecialWishesScreen> {
  TextEditingController specialWishes = TextEditingController();

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
          decoration: BoxDecoration(
            color: myGrey.withOpacity(0.2),
            // image: const DecorationImage(
            //   opacity: 0.4,
            //   fit: BoxFit.contain,
            //   image: AssetImage("assets/specialWishes.png"),
            // ),
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
                  "Write Special Wishes for your Beloved one's.",
                  .09,
                  myBlack,
                  bold: true,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Write Special wishes on cake and then proceed.",
                  .044,
                  myGrey.withOpacity(0.7),
                ),
              ),
              // heightBox(context, 0.2),
              inputTextField(context, "Wishes", specialWishes),
              heightBox(context, 0.02),
              coloredButton(context, "Submit", myBlack,
                  width: dynamicWidth(context, 0.4), function: () {
                push(
                  context,
                  const CakePreview(),
                );
              }),
              heightBox(context, .04),
              downBar(
                context,
                nextPage: () {
                  push(context, const CakePreview());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
