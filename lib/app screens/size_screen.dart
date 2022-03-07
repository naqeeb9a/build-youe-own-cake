import 'package:build_own_cake/app%20screens/flavour_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:motion_toast/motion_toast.dart';

class SizeScreen extends StatefulWidget {
  const SizeScreen({Key? key}) : super(key: key);

  @override
  _SizeScreenState createState() => _SizeScreenState();
}
int sizeIndex = 0;
class _SizeScreenState extends State<SizeScreen> {
  // int sizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return SafeArea(
      child: Scaffold(
        body: Padding(
           padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, .04),
            vertical: dynamicHeight(context, .01),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appBar(context),
              heightBox(context, 0.04),
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
                sizeIndex == 1 ? myPink : myLightPink1,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (sizeIndex == 1) {
                      sizeIndex = 0;
                    } else if (sizeIndex != 1) {
                      sizeIndex = 1;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "2 Pound",
                sizeIndex == 2 ? myPink : myLightPink1,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (sizeIndex == 2) {
                      sizeIndex = 0;
                    } else if (sizeIndex != 2) {
                      sizeIndex = 2;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "3 Pound",
                sizeIndex == 3 ? myPink : myLightPink1,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (sizeIndex == 3) {
                      sizeIndex = 0;
                    } else if (sizeIndex != 3) {
                      sizeIndex = 3;
                    }
                  });
                },
              ),
              coloredButton(
                context,
                "4 Pound",
                sizeIndex == 4 ? myPink : myLightPink1,
                width: dynamicWidth(context, 0.4),
                function: () {
                  setState(() {
                    if (sizeIndex == 4) {
                      sizeIndex = 0;
                    } else if (sizeIndex != 4) {
                      sizeIndex = 4;
                    }
                  });
                },
              ),
             SizedBox(
               width: dynamicWidth(context, .9),
               height: dynamicHeight(context, .15),
               child: Align(
                alignment: Alignment.bottomCenter,
                child: sizeIndex ==4 ? Image.asset(
                    "assets/9.png",
                    width: dynamicWidth(context, 0.5),
                  ): sizeIndex ==3 ? Image.asset(
                    "assets/9.png",
                    width: dynamicWidth(context, 0.45)): sizeIndex == 2? Image.asset(
                    "assets/9.png",
                    width: dynamicWidth(context, 0.4)): sizeIndex == 1? Image.asset(
                    "assets/9.png",
                    width: dynamicWidth(context, 0.35)): sizeIndex == 0 ?const SizedBox(): const SizedBox(),
                  
               ),
             ),
              downBar(
                context,
                nextPage: sizeIndex == 0
                    ? () {
                        MotionToast.warning(
                          title: const Text("Warning"),
                        
                          description: const Text("Select size to proceed!!"),
                          animationCurve: Curves.ease,
                          borderRadius: 0,
                          animationDuration: const Duration(milliseconds: 400),
                        ).show(context);
                      }
                    : () {
                        push(context, const FlavourScreen());
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
