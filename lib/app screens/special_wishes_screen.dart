import 'package:build_own_cake/app%20screens/cake_preview.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/form_fields.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SpecialWishesScreen extends StatefulWidget {
  const SpecialWishesScreen({ Key? key }) : super(key: key);

  @override
  _SpecialWishesScreenState createState() => _SpecialWishesScreenState();
}

class _SpecialWishesScreenState extends State<SpecialWishesScreen> {

  TextEditingController specialWishes = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child :Scaffold(
        body: Container(
           width: dynamicWidth(context, 1),
          height: dynamicHeight(context, 1),
          padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.04), vertical: 0.01),
          color: myGrey.withOpacity(0.2),
          child: Column(
            children: [
              appBar(context),
              heightBox(context, .1),
               Align(
                alignment: Alignment.centerLeft,
                child: Expanded(
                  child: text(
                    context,
                    "Write Special Wishes for your Beloved one's.",
                    .09,
                    myBlack,
                    bold: true,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: text(
                      context,
                      "Write the Special wishes on cake and then proceed.",
                      .044,
                      myGrey.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              heightBox(context, 0.15),
              inputTextField(context, "Wishes", specialWishes),
              heightBox(context, 0.13),
              coloredButton(
                context,
                "Submit",
                myBlack,
                width: dynamicWidth(context, 0.4),
              ),
              heightBox(context, .16),
              downBar(
                context,
                const CakePreview(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}