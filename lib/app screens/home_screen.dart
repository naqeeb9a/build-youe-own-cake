import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/form_fields.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import '../utils/constants.dart';
import '../widgets/app_screen_widgets.dart';

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
            width: dynamicWidth(context, .86),
            height: dynamicHeight(context, 1),
            child: Column(
              children: [
                heightBox(context, .04),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: dynamicWidth(context, .02),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: dynamicWidth(context, .07),
                        color: myGrey,
                      ),
                    ),
                    Flexible(
                      child: inputTextField(
                        context,
                        "Search Your taste",
                        TextEditingController(),
                        suffixIcon: true,
                        icon: CupertinoIcons.search,
                        iconColor: myPink,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: cake.length,
                    itemBuilder: (context, i) {
                      return cakeCard(
                        context,
                        cake[i]["name"],
                        "assets/Cakes/cake 1.png",
                        // cake[i]["images"][0],
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
