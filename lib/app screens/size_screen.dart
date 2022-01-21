import 'package:build_own_cake/app%20screens/flavour_screen.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SizeScreen extends StatefulWidget {
  const SizeScreen({Key? key}) : super(key: key);

  @override
  _SizeScreenState createState() => _SizeScreenState();
}

class _SizeScreenState extends State<SizeScreen> {
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
              image: const DecorationImage(
                  opacity: 0.4,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://cdn.wallpapersafari.com/25/39/1TZAwj.jpg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appBar(context),
              heightBox(context, 0.06),
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
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Choose weight of cake to proceed.",
                  0.044,
                  myGrey.withOpacity(0.7),
                ),
              ),
              heightBox(context, 0.04),
              coloredButton(
                context,
                "1 Pound",
                myLightPink1,
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "2 Pound",
                myLightPink1,
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "3 Pound",
                myLightPink1,
                width: dynamicWidth(context, 0.4),
              ),
              coloredButton(
                context,
                "4 Pound",
                myLightPink1,
                width: dynamicWidth(context, 0.4),
              ),
              heightBox(context, 0.1),
              downBar(
                context,
               nextPage:  const FlavourScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
