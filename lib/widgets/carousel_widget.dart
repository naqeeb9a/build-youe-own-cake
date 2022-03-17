import 'package:build_own_cake/app%20screens/cake_detail.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import "package:flutter/material.dart";

Widget cakeShow(context, image, name, price, description, index) {
  return InkWell(
    onTap: () {
      push(context, CakeDetail(name: name, i: index));
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: dynamicHeight(context, 0.55),
          width: dynamicWidth(context, 0.7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
            border: Border.all(
                color: myLightPink, width: dynamicWidth(context, 0.02)),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              colorFilter: ColorFilter.mode(
                  myBlack.withOpacity(.5), BlendMode.colorDodge),
              fit: BoxFit.fill,
            ),
          ),
        ),
        //  heightBox(context, 0.05),
        text(context, name, 0.06, myBlack, bold: true, font: true),
        //  text(context, "a sweet, baked, breadlike food, made with or without shortening...", 0.03, myBlack)
      ],
    ),
  );
}
