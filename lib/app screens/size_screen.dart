import 'package:build_own_cake/app%20screens/flavour_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:build_own_cake/widgets/toggle_button.dart';
import 'package:flutter/material.dart';

class SizeScreen extends StatefulWidget {
  const SizeScreen({Key? key}) : super(key: key);

  @override
  _SizeScreenState createState() => _SizeScreenState();
}

class _SizeScreenState extends State<SizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: dynamicWidth(context, 1),
        height: dynamicHeight(context, 1),
        padding: EdgeInsets.all(
          dynamicWidth(context, 0.025),
        ),
        color: myGrey.withOpacity(0.2),
        // decoration: const BoxDecoration(
        //   color: myWhite,
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //     image: NetworkImage(
        //         'https://images.pexels.com/photos/264892/pexels-photo-264892.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appBar(context),
            heightBox(context, 0.06),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(context, "Choose the Size.", 0.1, myBlack, bold: true),
              ],
            ),
           heightBox(context, 0.006),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: text(
                    context,
                    "Log in to view personalized recommendations, follow creatives and more.",
                    0.05,
                    myGrey.withOpacity(0.8),
                  ),
                ),
              ],
            ),
            heightBox(context, 0.04),
            toggleButton(context, '1 Pound'),
            toggleButton(context, '2 Pound'),
            toggleButton(context, '4 Pound'),
            toggleButton(context, '6 Pound'),
           heightBox(context, 0.03),
            coloredButton(
              context,
              "Choose",
              myGrey,
              width: dynamicWidth(context, 0.5),
            ),
            heightBox(context, 0.1),
            downBar(context,const FlavourScreen(),),
          ],
        ),
      )),
    );
  }
}
