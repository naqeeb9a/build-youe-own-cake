import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Widget downBar(context, {nextPage="",optionalNextButton=false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: () {
          pop(context);
        },
        child: SizedBox(
          width: dynamicWidth(context, 0.18),
          height: dynamicHeight(context, .05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: dynamicHeight(context, .03),
                  ),
                  text(
                    context,
                    "Back",
                    0.042,
                    myBlack,
                    bold: true,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      InkWell(
        onTap: () {
          if(nextPage!="")
            {
              push(context, nextPage);
            }
        },
        child: SizedBox(
          width: dynamicWidth(context, 0.18),
          height: dynamicHeight(context, .05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(
                    context,
                    "Next",
                    0.042,
                    optionalNextButton==true?noColor: myBlack,
                    bold: true,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: dynamicHeight(context, .03),
                    color: optionalNextButton==true?noColor: myBlack,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
