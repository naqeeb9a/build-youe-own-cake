import 'package:build_own_cake/app%20screens/decoration_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  dynamic colorIndex = 0;
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
            //   fit: BoxFit.cover,
            //   image: NetworkImage(
            //     "https://i.pinimg.com/originals/0a/8b/06/0a8b06f665bfbcd575b2802251888fc5.jpg",
            //   ),
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
                  "Choose Color.",
                  .09,
                  myBlack,
                  bold: true,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: text(
                  context,
                  "Choose color of your cake to then proceed.",
                  .044,
                  myGrey.withOpacity(0.7),
                ),
              ),
              heightBox(context, 0.04),
              coloredButton(
                context,
                "Black",
                colorIndex == 1 ? myGrey : myBlack,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (colorIndex == 1) {
                      colorIndex = 0;
                    } else if (colorIndex != 1) {
                      colorIndex = 1;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Chocolate",
                colorIndex == 2 ? myGrey : myBrown,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (colorIndex == 2) {
                      colorIndex = 0;
                    } else if (colorIndex != 2) {
                      colorIndex = 2;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Pink",
                colorIndex == 3 ? myGrey : myPink,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (colorIndex == 3) {
                      colorIndex = 0;
                    } else if (colorIndex != 3) {
                      colorIndex = 3;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "Light Pink",
                colorIndex == 4 ? myGrey : myLightPink1,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (colorIndex == 4) {
                      colorIndex = 0;
                    } else if (colorIndex != 4) {
                      colorIndex = 4;
                    }
                  });
                },
              ),
              heightBox(context, .14),
              downBar(
                context,
                nextPage: colorIndex == 0
                    ? () {
                  MotionToast.warning(
                    title: Text("Warning"),

                    description: Text("Select color to proceed!!"),
                    animationCurve: Curves.ease,
                    borderRadius: 0,
                    animationDuration: const Duration(milliseconds: 400),
                  ).show(context);
                }
                    : () {
                  push(context, const DecorationScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
