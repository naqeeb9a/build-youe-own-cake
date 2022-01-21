import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: dynamicWidth(context, 1),
          height: dynamicHeight(context, 1),
          padding: EdgeInsets.all(dynamicWidth(context, 0.025)),
          decoration:  BoxDecoration(
            color: myGrey.withOpacity(0.7),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://www.bakedbyanintrovert.com/wp-content/uploads/2017/08/Moist-White-Cake_640-1-720x1079.jpg.webp'),
            ),
          ),
          child: Column(
            children: [
              appBar(context),
              Padding(
                padding: EdgeInsets.all(
                  dynamicWidth(context, 0.07),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  text(context, "You Design it.\nWe Bake it.", 0.1, myBlack, bold: true),
                ],
              ),
            
              Padding(
                padding: EdgeInsets.all(
                  dynamicWidth(context, 0.02),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: text(
                        context,
                        "Log in to view personalized recommendations, follow creatives and more.",
                        0.045,
                        myBlack.withOpacity(0.6),
                  ),),
                ],
              ),
              heightBox(context, 0.1),
              coloredButton(
                context,
                "Get Started",
                myGrey,
                width: dynamicWidth(context, 0.5),
                function: () {
                    push(context,const SizeScreen());
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
