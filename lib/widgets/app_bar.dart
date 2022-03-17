import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

appBar(context) {
  return AppBar(
    title: text(
      context,
      "title",
      .054,
      myBlack,
      bold: true,
    ),
    centerTitle: true,
    backgroundColor: noColor,
    elevation: 0.0,
    leading: GestureDetector(
      onTap: () {
        pop(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back,
            color: myBlack,
            size: dynamicWidth(context, .06),
          ),
          text(
            context,
            "Back",
            .028,
            myBlack,
            bold: true,
          ),
        ],
      ),
    ),
  );
}
