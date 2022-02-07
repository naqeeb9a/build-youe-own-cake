import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Widget itemCard(context, name, size, price) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.015),horizontal: dynamicWidth(context, 0.04)),
    child: Container(

      width : dynamicWidth(context, 0.65),
      height: dynamicHeight(context, 0.12),
      color: myBrown,
      child: Row(
        children: [
          SizedBox(
            width: dynamicWidth(context, 0.2),
            height: dynamicHeight(context, 0.08),
            child: Image.network(
                "https://whgym.com/wp-content/uploads/2020/10/whgym-whiteResized-01.png"),
          ),
          widthBox(context, 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox(context, 0.008),
              text(context, name, 0.04, myWhite),
              heightBox(context, 0.001),
              text(context, size, 0.03, myPink),
              heightBox(context, 0.002),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(context, price, 0.03, myWhite),
                  widthBox(context, 0.2),
                  Container(
                    width:dynamicWidth(context,0.18),
                    height: dynamicHeight(context,0.04),
                    decoration: BoxDecoration(
                      color: myGrey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        text(context, "-", 0.04, myPink),

                        text(context, "1", 0.04, myWhite),

                        text(context, "+", 0.04, myPink),

                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}