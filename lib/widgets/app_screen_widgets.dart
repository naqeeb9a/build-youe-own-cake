import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '../app screens/cake_detail.dart';
import '../utils/app_routes.dart';
import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

Widget cakeCard(context, cakeName, cakeImage, index, length) {
  return ScaleTap(
    onPressed: () {
      push(
        context,
        CakeDetail(name: cakeName, i: index),
      );
    },
    enableFeedback: true,
    child: SizedBox(
      width: dynamicWidth(context, 1),
      height: dynamicHeight(context, .18),
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: Container(
              width: dynamicWidth(context, 1),
              height: dynamicHeight(context, .12),
              decoration: BoxDecoration(
                color: index.floor().isEven ? myLightPink1 : myYellow,
                borderRadius: BorderRadius.circular(
                  dynamicWidth(context, .04),
                ),
              ),
              padding: EdgeInsets.fromLTRB(
                dynamicWidth(context, .34),
                dynamicHeight(context, .004),
                dynamicWidth(context, .01),
                dynamicHeight(context, .004),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: dynamicWidth(context, .4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(
                          context,
                          cakeName.toString(),
                          .044,
                          myBlack,
                          bold: true,
                          maxLines: 1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          runSpacing: dynamicHeight(context, .01),
                          children: [
                            cakeSize(context, "2"),
                            cakeSize(context, "2.5"),
                            cakeSize(context, "3"),
                            cakeSize(context, "4"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                          dynamicWidth(context, .02),
                        ),
                        child: const Icon(
                          Icons.info_outline_rounded,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Image.asset(
              cakeImage.toString(),
              width: dynamicWidth(context, .36),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget cakeSize(context, size) {
  return Container(
    width: dynamicWidth(context, .17),
    decoration: BoxDecoration(
      color: myWhite,
      borderRadius: BorderRadius.circular(
        dynamicWidth(context, 1),
      ),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: dynamicWidth(context, .02),
      vertical: dynamicHeight(context, .004),
    ),
    margin: EdgeInsets.symmetric(
      horizontal: dynamicWidth(context, .01),
    ),
    child: Center(
      child: text(
        context,
        "$size Pound",
        .024,
        myBlack,
        bold: true,
      ),
    ),
  );
}
