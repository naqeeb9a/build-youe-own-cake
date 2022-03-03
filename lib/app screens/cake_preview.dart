import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/down_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CakePreview extends StatefulWidget {
  const CakePreview({Key? key}) : super(key: key);

  @override
  _CakePreviewState createState() => _CakePreviewState();
}

class _CakePreviewState extends State<CakePreview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
           padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, .04),
            vertical: dynamicHeight(context, .01),
          ),
          child: Column(
            children: [
              appBar(context),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    heightBox(context, .1),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text(
                        context,
                        "You 've designed Your Cake.",
                        .09,
                        myBlack,
                        bold: true,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text(
                        context,
                        "The preview of your cake.",
                        .044,
                        myGrey.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      width: dynamicWidth(context, .9),
                      height: dynamicHeight(context, .5),
                      child: Image.network(
                        "https://www.pngmart.com/files/16/Fresh-Chocolate-Cake-Transparent-Background.png",
                      ),
                    ),
                    downBar(context, optionalNextButton: true)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
