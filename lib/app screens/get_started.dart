import 'package:build_own_cake/app%20screens/home_screen.dart';
import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/buttons.dart';
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/bg.jpg"),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: coloredButton(
                      context,
                      "Build Your Cake",
                      myPink,
                      width: dynamicWidth(context, 0.5),
                      function: () {
                        push(context, const SizeScreen());
                      },
                    ),
                  ),
                  heightBox(context, 0.02),
                  Align(
                    alignment: Alignment.center,
                    child: coloredButton(
                      context,
                      "Select Your Cake",
                      myPink,
                      width: dynamicWidth(context, 0.5),
                      function: () {
                        push(context, const HomeScreen());
                      },
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
