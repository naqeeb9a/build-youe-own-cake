import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import "package:flutter/material.dart";

Widget toggleButton(context,size) {

  return  RaisedButton(
              child: text(context, size, 0.04, myWhite),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: noColor,
              onPressed: () {},
            );

}