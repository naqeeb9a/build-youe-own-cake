import 'package:build_own_cake/app%20screens/cake_view.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import "package:flutter/material.dart";

Widget cakeShow(context,image,name,price) {
  return  InkWell(
    onTap: () {
      push(context, CakeView(image: image, name: name, price: price));
    },
    child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
              child: SizedBox(
                height: dynamicHeight(context, 0.55),
                width: dynamicWidth(context, 0.7),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
                child: Container(
                  width: dynamicWidth(context, 0.7),
                  height: dynamicHeight(context, 0.1),
                  decoration: BoxDecoration(
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
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: dynamicWidth(context, 0.03),
                        vertical: dynamicHeight(context, 0.01),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          text(context, name, 0.04, myWhite, bold: true),
                          // text(
                          //   context,
                          //   price,
                          //   0.034,
                          //   myWhite,
                          // ),
                          //heightBox(context, 0.02),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
  );
}