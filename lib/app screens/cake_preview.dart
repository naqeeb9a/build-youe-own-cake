import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class CakePreview extends StatefulWidget {
  const CakePreview({ Key? key }) : super(key: key);

  @override
  _CakePreviewState createState() => _CakePreviewState();
}

class _CakePreviewState extends State<CakePreview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child : Scaffold (
        body: Container(
          width: dynamicWidth(context, 1),
          height: dynamicHeight(context, 1),
          padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.04), vertical: 0.01),
          color: myRed.withOpacity(0.6),
          child :Column (
            children : [
              appBar(context),
            ],
          ),
        ),
      )
    );
  }
}