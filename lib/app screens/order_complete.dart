import 'dart:ui';

import 'package:build_own_cake/app%20screens/get_started.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

class OrderComplete extends StatefulWidget {
  const OrderComplete({Key? key}) : super(key: key);

  @override
  State<OrderComplete> createState() => _OrderCompleteState();
}

class _OrderCompleteState extends State<OrderComplete> {
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
                  image: AssetImage("assets/bg.png"),
                ),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                width: dynamicWidth(context, 1),
                height: dynamicHeight(context, 1),
                color: myWhite.withOpacity(.26),
              ),
            ),
            SizedBox(
              width: dynamicWidth(context, 1),
              height: dynamicHeight(context, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  text(context, "Order is completed".toUpperCase(), .05, myWhite),
                  text(context, "Thank You!".toUpperCase(), .12, myWhite),
                  text(context, "Order number #cc123456".toUpperCase(), .05, myWhite),

                ],
              ),
            ),
            SizedBox(
              width: dynamicWidth(context, 1),
              height: dynamicHeight(context, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: dynamicWidth(context, .04),vertical: dynamicHeight(context, .025)),
                    child: GestureDetector(
                      onTap : () {
                        pushAndRemoveUntil(context, const GetStarted());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          text(context, "Continue Shopping".toUpperCase(), .04, myWhite),
                          Icon(Icons.arrow_forward_ios_outlined,color : myWhite,size: dynamicWidth(context, .05),)
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
