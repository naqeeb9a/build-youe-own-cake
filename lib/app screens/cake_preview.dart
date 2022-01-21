import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
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
      body: Container(
        width: dynamicWidth(context, 1),
        height: dynamicHeight(context, 1),
        padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, 0.04), vertical: 0.01),
        //color: myRed.withOpacity(0.6),
         decoration: BoxDecoration(
          color:  myRed.withOpacity(0.7),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://thumbs.dreamstime.com/b/birthday-cake-one-candle-58477626.jpg'),
          ),
        ),
        child: Column(
          children: [
            appBar(context),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children :[
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
                  "Click on Button to Preview Cake.",
                  .044,
                  myGrey.withOpacity(0.7),
                ),
              ),
                 heightBox(context, 0.1),
                  coloredButton(
                    context,
                    "Preview Cake",
                    myBlack,
                    width: dynamicWidth(context, 0.4),
                  ),
                  heightBox(context, 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          pop(context);
                        },
                        child: SizedBox(
                          width: dynamicWidth(context, 0.18),
                          height: dynamicHeight(context, .05),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios_new_outlined,
                                    size: dynamicHeight(context, .03),
                                  ),
                                  text(
                                    context,
                                    "Back",
                                    0.042,
                                    myBlack,
                                    bold: true,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                
                 
               ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
