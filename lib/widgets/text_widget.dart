import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:flutter/material.dart';

Widget text(context, text, size, color,
    {bold = false, alignText = TextAlign.start, maxLines = 2, font = false}) {
  return Text(
    text,
    textAlign: alignText,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: font == false
        ? TextStyle(
            color: color,
            fontSize: dynamicWidth(context, size),
            fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
          )
        : TextStyle(
            color: color,
            fontFamily: "Champagne",
            fontSize: dynamicWidth(context, size),
            fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
          ),
  );
}
