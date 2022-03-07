

import 'package:build_own_cake/app%20screens/home_screen.dart';
import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: dynamicWidth(context, 1),
              height: dynamicHeight(context, 1),
              padding: EdgeInsets.symmetric(
                  horizontal: dynamicWidth(context, 0.04), vertical: 0.01),
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter:  ColorFilter.mode(
                      myWhite.withOpacity(0.6), BlendMode.dstATop),
                  fit: BoxFit.fill,
                  image:const AssetImage("assets/bg.jpg"),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: text(
                                context,
                                "You Design it.\n   We Bake it.",
                                0.09,
                                myBlack,
                                bold: true,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Hero(
                              tag : "build",
                              child: Align(
                                alignment: Alignment.center,
                                child: coloredButton(
                                  context,
                                  "Build Your Cake",
                                  myWhite,
                                  width: dynamicWidth(context, 0.5),
                                   function: () {
                                    push(context, const SizeScreen());
                                  },
                                  
                                ),
                              ),
                            ),
                           heightBox(context, 0.02),
                            Align(
                              alignment: Alignment.center,
                              child: coloredButton(
                                context,
                                "Order Your Cake",
                                myWhite,
                                width: dynamicWidth(context, 0.5),
                               function: () {
                                  push(context, const HomeScreen());
                                },
                              ),
                            ),
                             heightBox(context, 0.25),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
