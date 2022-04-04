import 'package:badges/badges.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/form_fields.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../utils/app_routes.dart';
import '../utils/constants.dart';
import '../widgets/app_screen_widgets.dart';
import '../widgets/text_widget.dart';
import 'cake_detail.dart';
import 'cart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: dynamicWidth(context, .88),
            height: dynamicHeight(context, 1),
            child: Column(
              children: [
                heightBox(context, .04),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => pop(context),
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: dynamicWidth(context, .02),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: dynamicWidth(context, .07),
                          color: myGrey,
                        ),
                      ),
                    ),
                    Flexible(
                      child: inputTextField1(
                        context,
                        "Search Your taste",
                        TextEditingController(),
                        suffixIcon: true,
                        icon: CupertinoIcons.search,
                        iconColor: myPink,
                      ),
                    ),
                    widthBox(context, 0.04),
                    GestureDetector(
                      onTap: () {
                        push(context, const CartScreen());
                      },
                      child: Badge(
                        position: BadgePosition.topEnd(),
                        badgeColor: myLightPink1,
                        elevation: 0,
                        badgeContent: Obx(
                          () => text(
                            context,
                            (cart.length).toString(),
                            0.035,
                            myBlack,
                          ),
                        ),
                        child: SizedBox(
                          height: dynamicWidth(context, .1),
                          child: Image.asset(
                            "assets/cart.png",
                            width: dynamicWidth(context, .07),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                heightBox(context, .01),
                Expanded(
                  child: ListView.builder(
                    itemCount: cake.length,
                    itemBuilder: (context, i) {
                      return cakeCard(
                        context,
                        cake[i]["name"],
                        "assets/Cakes/cake${i + 1}.png",
                        // cake[i]["images"][0],
                        cake[i]["description"],
                        i,
                        cake[i]["images"].length,
                      );
                    },
                  ),
                ),
                heightBox(context, .01),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
