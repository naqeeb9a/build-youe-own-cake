import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Widget downBar(context, {nextPage = "", optionalNextButton = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      InkWell(
        onTap: nextPage == "" ? () {} : nextPage,
        child: SizedBox(
          width: dynamicWidth(context, 0.16),
          height: dynamicHeight(context, .05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              text(
                context,
                "Next",
                .028,
                myBlack,
                bold: true,
              ),
              Icon(
                Icons.arrow_forward,
                color: myBlack,
                size: dynamicWidth(context, .06),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
