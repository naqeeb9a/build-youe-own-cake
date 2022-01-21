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
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: dynamicWidth(context, 1),
          height: dynamicHeight(context, 1),
          padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.04), vertical: 0.01),
          decoration: BoxDecoration(
            color: myGrey.withOpacity(0.7),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://burst.shopifycdn.com/photos/cake-in-a-corner.jpg?width=925&format=pjpg&exif=0&iptc=0'),
            ),
          ),
          child: Column(
            children: [
              appBar(context),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(context, "You Design it.\nWe Bake it.", 0.1,
                            myBlack,
                            bold: true),
                        text(
                          context,
                          "Log in to view personalized recommendations, follow creatives and more.",
                          0.045,
                          myBlack.withOpacity(0.6),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: coloredButton(context, "Start designing", myGrey,
                          width: dynamicWidth(context, 0.5), function: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return const SizeScreen();
                            },
                          ),
                        );
                      }),
                    ),
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
