import 'package:badges/badges.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../app screens/cake_detail.dart';
import '../utils/constants.dart';

appBar(context, {title = "", trailing = false, icon, page}) {
  return AppBar(
    title: text(
      context,
      title,
      .054,
      myBlack,
      bold: true,
    ),
    centerTitle: true,
    backgroundColor: noColor,
    elevation: 0.0,
    leading: GestureDetector(
      onTap: () {
        pop(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back,
            color: myBlack,
            size: dynamicWidth(context, .06),
          ),
          text(
            context,
            "Back",
            .028,
            myBlack,
            bold: true,
          ),
        ],
      ),
    ),
    actions: [
      if (trailing == false) const SizedBox() else GestureDetector(
              onTap: () => push(context, page),
              child: Badge(
                position: BadgePosition.topStart(),
                badgeColor:noColor,
                elevation: 0,
                badgeContent: Obx(()=>text(context, cart.isEmpty ? "":(cart.length).toString(), 0.035,myBlack,bold: true)),
                child: Image.asset(
                  icon,
                  width: dynamicWidth(context, .08),
                ),
              ),
            ),
    ],
  );
}
