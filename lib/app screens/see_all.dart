import 'package:build_own_cake/app%20screens/cake_detail.dart';
import 'package:build_own_cake/app%20screens/home_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SeeAll extends StatefulWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  _SeeAllState createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                bar(
                  context,
                  true,
                  centerCheck: true,
                  back: true,
                  centerText: "See All",
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  primary: true,
                  shrinkWrap: true,
                  itemCount: cake.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (170.0 / 200.0),
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return card(
                        context,
                        cake[index]['images'][0],
                        cake[index]['name'],
                        "1500/-",
                        cake[index]['description'],
                        index);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget card(context, image, name, price, description, index) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: dynamicWidth(context, 0.04),
      vertical: dynamicHeight(context, 0.02),
    ),
    child: InkWell(
      onTap: () {
        push(context, CakeDetail(name: name, i: index));
      },
      child: Container(
        width: dynamicWidth(context, 0.43),
        height: dynamicHeight(context, 0.28),
        decoration: BoxDecoration(
          color: myLightPink,
          borderRadius: BorderRadius.circular(
            dynamicWidth(context, 0.04),
          ),
          boxShadow: const [
            BoxShadow(
              color: myGrey,
              blurRadius: 4,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: dynamicWidth(context, 0.43),
              height: dynamicHeight(context, 0.18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  dynamicWidth(context, 0.04),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  colorFilter: ColorFilter.mode(
                      myBlack.withOpacity(.5), BlendMode.colorDodge),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            heightBox(context, 0.007),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text(context, name, 0.03, myWhite, bold: true),
              ],
            ),
            heightBox(context, 0.01),
          ],
        ),
      ),
    ),
  );
}

Widget bar(context, leadingIcon,
    {centerCheck = false,
    centerText = "",
    editIcon = Icons.arrow_back_ios,
    editColor = Colors.transparent,
    back = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      leadingIcon == true
          ? back == true
              ? InkWell(
                  onTap: () {
                    pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: dynamicWidth(context, 0.04)),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: myBlack,
                      size: dynamicWidth(context, 0.06),
                    ),
                  ),
                )
              : Container()
          : Container(),
      (centerCheck == true)
          ? Align(
              alignment: Alignment.center,
              child: text(context, centerText, 0.06, myBlack, bold: true))
          : text(context, "", 0.03, myGrey),
      centerCheck == true
          ? CircleAvatar(
              radius: dynamicWidth(context, 0.037),
              backgroundColor: Colors.transparent,
              child: CircleAvatar(
                  radius: dynamicWidth(context, 0.035),
                  backgroundColor: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.only(left: dynamicWidth(context, 0.01)),
                    child: Icon(
                      editIcon,
                      color: editColor,
                      size: dynamicWidth(context, 0.04),
                    ),
                  )),
            )
          : Container(),
    ],
  );
}
