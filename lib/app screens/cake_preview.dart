import 'package:build_own_cake/app%20screens/checkout.dart';
import 'package:build_own_cake/app%20screens/special_wishes_screen.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class CakePreview extends StatefulWidget {
  const CakePreview({Key? key}) : super(key: key);

  @override
  _CakePreviewState createState() => _CakePreviewState();
}

class _CakePreviewState extends State<CakePreview> {
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
                children: [
                  appBar(context),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        heightBox(context, .1),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: text(
                            context,
                            "You 've designed Your Cake.",
                            .09,
                            myBlack,
                            bold: true,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: text(
                            context,
                            "The preview of your cake.",
                            .044,
                            myGrey.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(
                          width: dynamicWidth(context, .9),
                          height: dynamicHeight(context, .5),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Image.asset(
                                "assets/Custom_Cakes/1/9.png",
                                //width: dynamicWidth(context, 0.6),
                                width: 220,
                                // color: myWhite,
                              ),
                              Positioned(
                                //  bottom: dynamicHeight(context, 0.025),
                                bottom: 20,
                                child: Image.asset(
                                  "assets/Custom_Cakes/1/8.png",
                                  //width: dynamicWidth(context, 0.65),
                                  width: 240,
                                ),
                              ),
                              //
                              Positioned(
                                // bottom: dynamicHeight(context, 0.09),
                                bottom: 75,
                                child: Image.asset(
                                  "assets/Custom_Cakes/1/6.png",
                                  // width: dynamicWidth(context, 0.58),
                                  width: 200,
                                ),
                              ),
                              Positioned(
                                bottom: 65,
                                child: Image.asset(
                                  "assets/Custom_Cakes/1/7.png",
                                  width: 235,
                                ),
                              ),
                              Positioned(
                                bottom: 90,
                                child: Image.asset(
                                  "assets/Custom_Cakes/1/5.png",
                                  width: 200,
                                ),
                              ),

                              Positioned(
                                bottom: 140,
                                child: Image.asset(
                                  "assets/Custom_Cakes/1/3.png",
                                  width: 170,
                                ),
                              ),
                              Positioned(
                                bottom: 125,
                                child: Image.asset(
                                  "assets/Custom_Cakes/1/4.png",
                                  width: 190,
                                ),
                              ),
                              Positioned(
                                bottom: 152,
                                child: Image.asset(
                                  "assets/Custom_Cakes/1/2.png",
                                  width: 170,
                                ),
                              ),
                              Positioned(
                                bottom: 200,
                                child: Image.asset(
                                  "assets/Custom_Cakes/1/1.png",
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        downBar(
                          context,
                          nextPage: () {
                            push(context, const CheckoutScreen());
                          },
                        )
                      ],
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
