import 'package:build_own_cake/app%20screens/cake_view.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import "package:flutter/material.dart";

Widget cakeShow(context, image, name, price, description, index) {
  return InkWell(
    onTap: () {
      push(
          context,
          CakeView(
              name: name,  description: description, i: index));
    },
    child: Container(
      height: dynamicHeight(context, 0.55),
      width: dynamicWidth(context, 0.7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
        border: Border.all(color: myLightPink,width: dynamicWidth(context, 0.02)),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          colorFilter:
              ColorFilter.mode(myBlack.withOpacity(.5), BlendMode.colorDodge),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: dynamicWidth(context, 0.7),
            height: dynamicHeight(context, 0.08),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dynamicWidth(context, 0.2)),
              boxShadow: [
                BoxShadow(
                  color: myWhite.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              color: myBlack.withOpacity(0.8),
            ),
            child:
                Center(child: text(context, name, 0.04, myWhite, bold: true)),
          ),
        ],
      ),
    ),
  );
}
