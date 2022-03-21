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
          body: Stack(
        children: [
         pageDecoration(context),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, .04),
              vertical: dynamicHeight(context, .01),
            ),
            width: dynamicWidth(context, 1),
            height: dynamicHeight(context, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                appBar(context),
                // heightBox(context, .1),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(
                        context,
                        "Write Special Wishes for your Beloved one's.",
                        .09,
                        myBlack,
                        bold: true,
                      ),
                    ],
                  ),
                ),

                inputTextField(context, "Wishes", specialWishes),

                coloredButton(context, "Submit", myPink,
                    width: dynamicWidth(context, 0.55), function: () {
                  push(
                    context,
                    const CakePreview(),
                  );
                }),

                downBar(
                  context,
                  nextPage: () {
                    push(context, const CakePreview());
                  },
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}


Widget pageDecoration (context) {
  return Stack(
    children: [
      Positioned(
        left: dynamicWidth(context, 0),
        bottom: dynamicWidth(context, 0),
        child: Image.asset(
          "assets/upper_cut.png",
          color: myLightPink1.withOpacity(0.28),
          height: dynamicHeight(context, 0.2),
        ),
      ),
      Positioned(
        right: dynamicWidth(context, 0),
        child: Image.asset(
          "assets/upper_cut_1.png",
          color: myLightPink1.withOpacity(.28),
          height: dynamicHeight(context, 0.2),
        ),
      ),
    ],
  );
}
