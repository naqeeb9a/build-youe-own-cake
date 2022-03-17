import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '../app screens/cake_detail.dart';
import '../utils/app_routes.dart';
import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

Widget cakeCard(context, cakeName, cakeImage, cakeDesc, index, length) {
  var check = false;
  return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
    return ScaleTap(
      onPressed: () {
        push(
          context,
          CakeDetail(name: cakeName, i: index),
        );
      },
      enableFeedback: true,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: dynamicHeight(context, .006),
        ),
        child: SizedBox(
          width: dynamicWidth(context, 1),
          height: dynamicHeight(context, .16),
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
                      dynamicWidth(context, .06),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(
                    dynamicWidth(context, .36),
                    dynamicHeight(context, .004),
                    dynamicWidth(context, .01),
                    dynamicHeight(context, .004),
                  ),
                  child: check == true
                      ? Container(
                          width: dynamicWidth(context, .44),
                          height: dynamicHeight(context, .12),
                          decoration: BoxDecoration(
                            color: myWhite,
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, .04),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: dynamicWidth(context, .016),
                            vertical: dynamicHeight(context, .006),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              text(
                                context,
                                cakeDesc,
                                .024,
                                myBlack,
                                alignText: TextAlign.justify,
                                maxLines: 4,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() => check = false);
                                    },
                                    child: const Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: dynamicWidth(context, .41),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                    spacing: dynamicWidth(context, .01),
                                    runSpacing: dynamicHeight(context, .006),
                                    children: [
                                      cakeSize(context, "2"),
                                      cakeSize(context, "2.5"),
                                      cakeSize(context, "3"),
                                      cakeSize(context, "4"),
                                      cakeSize(context, "5"),
                                      cakeSize(context, "6"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() => check = true);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                      dynamicWidth(context, .01),
                                    ),
                                    child: const Icon(
                                      Icons.info_outline_rounded,
                                    ),
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
                  width: dynamicWidth(context, .34),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}

Widget cakeSize(context, size) {
  return Container(
    width: dynamicWidth(context, .114),
    decoration: BoxDecoration(
      color: myWhite,
      borderRadius: BorderRadius.circular(
        dynamicWidth(context, 1),
      ),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: dynamicWidth(context, .01),
      vertical: dynamicHeight(context, .004),
    ),
    child: Center(
      child: text(context, "$size lbs", .024, myBlack, bold: true, maxLines: 1),
    ),
  );
}


