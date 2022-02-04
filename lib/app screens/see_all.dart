import 'package:build_own_cake/app%20screens/home_screen.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

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
                text(context, "see all", 0.03, myBlack),
                GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        primary: true,
                        shrinkWrap: true,
                        itemCount: cake.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: (170.0 / 200.0),
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return  accessories(context, cake[index]['images'][0],cake[index]['name']);
                        },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget accessories (context,image,name) {
  return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: dynamicWidth(context, 0.04),
                            vertical: dynamicHeight(context, 0.02),
                          ),
                          child: InkWell(
                            onTap: () {
                             
                            },
                            child: Container(
                              width: dynamicWidth(context, 0.43),
                              height: dynamicHeight(context, 0.28),
                              decoration: BoxDecoration(
                                color: myBlack,
                                borderRadius: BorderRadius.circular(
                                  dynamicWidth(context, 0.04),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: myGrey,
                                    blurRadius: 4,
                                    offset: Offset(0, 1), // Shadow position
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: dynamicWidth(context, 0.43),
                                    height: dynamicHeight(context, 0.18),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        dynamicWidth(context, 0.04),
                                      ),
                                      image: DecorationImage(
                                        image:  AssetImage(
                                          image,
                                        ),
                                        // colorFilter: ColorFilter.matrix(
                                        //   ColorFilter
                                        // ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  heightBox(context, 0.007),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //widthBox(context,0.02),
                                      text(context, name, 0.03, myWhite,
                                          bold: true),
                                      //text(context, "Rs500", 0.03, myOrange),
                                    ],
                                  ),
                                  heightBox(context, 0.01),
                                ],
                              ),
                            ),
                          ),
                        );
}