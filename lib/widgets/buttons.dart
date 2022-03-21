import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../utils/config.dart';

Widget coloredButton(
  context,
  text,
  color, {
  function = "",
  width = "",
  fontSize = 0.04,
  font = false,
}) {
  return GestureDetector(
    onTap: function == "" ? () {} : function,
    child: Container(
      width: width == "" ? dynamicWidth(context, 1) : width,
      height: dynamicWidth(context, .12),
      decoration: color == noColor
          ? BoxDecoration(
              color: color,
              border: Border.all(width: 1, color: myWhite),
            )
          : BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                dynamicWidth(
                  context,
                  1,
                ),
              ),
              // boxShadow: const [
              //   BoxShadow(
              //     color: myGrey,
              //     blurRadius: 4,
              //     offset: Offset(0, 1),
              //   ),
              // ],
            ),
      child: Center(
        child: Text(
          text,
          style: font == false
              ? TextStyle(
                  color: myWhite,
                  fontSize: dynamicWidth(context, fontSize),
                  fontWeight: FontWeight.bold,
                )
              : TextStyle(
                  color: myWhite,
                  fontFamily: "Champagne",
                  fontSize: dynamicWidth(context, fontSize),
                  fontWeight: FontWeight.bold,
                ),
        ),
      ),
    ),
  );
}

Widget coloredButton1(
    context,
    text,
    color, {
      function = "",
      width = "",
      fontSize = 0.04,
      font = false,
    }) {
  return GestureDetector(
    onTap: function == "" ? () {} : function,
    child: Container(
      width: width == "" ? dynamicWidth(context, 1) : width,
      height: dynamicWidth(context, .12),
      decoration: color == noColor
          ? BoxDecoration(
        color: color,
        border: Border.all(width: 1, color: myWhite),
      )
          : BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          dynamicWidth(
            context,
            .03,
          ),
        ),
        // boxShadow: const [
        //   BoxShadow(
        //     color: myGrey,
        //     blurRadius: 4,
        //     offset: Offset(0, 1),
        //   ),
        // ],
      ),
      child: Center(
        child: Text(
          text,
          style: font == false
              ? TextStyle(
            color: myWhite,
            fontSize: dynamicWidth(context, fontSize),
            fontWeight: FontWeight.bold,
          )
              : TextStyle(
            color: myWhite,
            fontFamily: "Champagne",
            fontSize: dynamicWidth(context, fontSize),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

Widget retry(context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // LottieBuilder.asset(
        //   "assets/retry.json",
        //   width: dynamicWidth(context, 0.4),
        //   repeat: false,
        // ),
        heightBox(context, 0.02),
        text(context, "Check your internet or try again later", 0.03, myWhite),
        heightBox(context, 0.1),
        coloredButton(
          context,
          "Retry",
          myPink,
          width: dynamicWidth(context, .4),
          function: () {},
        ),
      ],
    ),
  );
}
