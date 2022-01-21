import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        : GoogleFonts.yellowtail(
            textStyle: TextStyle(
              color: color,
              fontSize: dynamicWidth(context, size),
              fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
            ),
          ),
  );
}
