import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Widget appBar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.notes_outlined,
        size: dynamicWidth(context, 0.1),
      ),
      text(
        context,
        "BuildYourCake",
        0.05,
        myBlack,
        bold: true,
      ),
    ],
  );
}
