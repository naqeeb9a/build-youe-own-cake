import 'package:build_own_cake/app%20screens/cart.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';

class CakeDetail extends StatefulWidget {
  final String name;
  final int i;

  const CakeDetail({required this.name, required this.i, Key? key})
      : super(key: key);

  @override
  _CakeDetailState createState() => _CakeDetailState();
}

var cart = [].obs;

class _CakeDetailState extends State<CakeDetail> {
  dynamic index = 0, fvt = 0;
  dynamic sizeIndex = 1;
  dynamic price;
  dynamic pound;
  dynamic sprinkleIndex = 0;
  dynamic accessoriesIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Container(
            //   width: dynamicWidth(context, 1),
            //   height: dynamicHeight(context, .28),
            //   decoration: BoxDecoration(
            //     color: myLightPink1,
            //     borderRadius: BorderRadius.vertical(
            //       bottom: Radius.elliptical(
            //         dynamicWidth(context, 1),
            //         dynamicHeight(context, .25),
            //       ),
            //     ),
            //     // borderRadius: BorderRadius.only(
            //     //   bottomLeft: Radius.circular(100),
            //     //   bottomRight: Radius.circular(100),
            //     // ),
            //   ),
            // ),

            Image.asset(
              "assets/detail_page_cut.png",
              color: myLightPink1,
            ),
            SizedBox(
              width: dynamicWidth(context, 1),
              height: dynamicHeight(context, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appBar(context, title: "Pretty in Pink"),
                  SizedBox(
                    height: dynamicHeight(context, 0.37),
                    child: CarouselSlider(
                      items: [
                        SizedBox(
                          height: dynamicHeight(context, 0.35),
                          child: Stack(
                            // mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            alignment: Alignment.bottomCenter,
                            children: [
                              Positioned(
                                top: dynamicHeight(context, 0),
                                child: text(context, "2 Pounds", 0.04, myBlack),
                              ),
                              Image.asset(
                                "assets/Cakes/cake 1.png",
                                height: dynamicHeight(context, .35),
                              ),
                              Positioned(
                                right: dynamicHeight(context, 0.02),
                                bottom: dynamicHeight(context, 0.04),
                                child: CircleAvatar(
                                  radius: dynamicHeight(context, .04),
                                  backgroundColor: myYellow1.withOpacity(.9),
                                  child: Center(
                                    child:
                                        text(context, "2500Rs", 0.04, myWhite),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        // scrollPhysics: never,
                        autoPlay: true,
                        height: dynamicHeight(context, 0.45),
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        aspectRatio: 12 / 6,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 0.6,
                      ),
                    ),
                  ),
                  text(context, "Extras", 0.04, myBlack, bold: true),
                  Container(
                    width: dynamicWidth(context, .65),
                    height: dynamicHeight(context, .1),
                    decoration: BoxDecoration(
                      color: myLightPink1,
                      borderRadius: BorderRadius.circular(
                        dynamicWidth(context, .05),
                      ),
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              //sizeIndex =1;
                              if (sprinkleIndex == 1) {
                                sprinkleIndex = 0;
                              } else if (sprinkleIndex != 1) {
                                sprinkleIndex = 1;
                              }
                            });
                          },
                          child: Container(
                            width: dynamicWidth(context, .325),
                            height: dynamicHeight(context, .1),
                            decoration: BoxDecoration(
                              color: sprinkleIndex == 1 ? myPink : noColor,
                              borderRadius: BorderRadius.circular(
                                dynamicWidth(context, .05),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: dynamicWidth(context, .025),
                                      top: dynamicHeight(context, 0.008),
                                      bottom: dynamicHeight(context, 0.008)),
                                  child: SizedBox(
                                    height: dynamicHeight(context, .1),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text(
                                            context,
                                            "Strawberry\nSprinkles",
                                            .03,
                                            sprinkleIndex == 1
                                                ? myWhite
                                                : myBlack),
                                        text(
                                            context,
                                            "300Rs",
                                            .025,
                                            sprinkleIndex == 1
                                                ? myWhite
                                                : myBlack),
                                      ],
                                    ),
                                  ),
                                ),
                                sprinkleIndex == 1
                                    ? Container(
                                        width: dynamicWidth(context, 0.12),
                                        height: dynamicHeight(context, .035),
                                        decoration: BoxDecoration(
                                          color: myRed1,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(
                                              dynamicWidth(context, .05),
                                            ),
                                            bottomLeft: Radius.circular(
                                              dynamicWidth(context, .05),
                                            ),
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(Icons.check,
                                              color: myWhite,
                                              size: dynamicHeight(
                                                  context, 0.025)),
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              //sizeIndex =2;
                              if (sprinkleIndex == 2) {
                                sprinkleIndex = 0;
                              } else if (sprinkleIndex != 2) {
                                sprinkleIndex = 2;
                              }
                            });
                          },
                          child: Container(
                            width: dynamicWidth(context, .325),
                            height: dynamicHeight(context, .1),
                            decoration: BoxDecoration(
                              color: sprinkleIndex == 2 ? myPink : noColor,
                              borderRadius: BorderRadius.circular(
                                dynamicWidth(context, .05),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: dynamicWidth(context, .025),
                                      top: dynamicHeight(context, 0.008),
                                      bottom: dynamicHeight(context, 0.008)),
                                  child: SizedBox(
                                    height: dynamicHeight(context, .1),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text(
                                            context,
                                            "Strawberry\nSprinkles",
                                            .03,
                                            sprinkleIndex == 2
                                                ? myWhite
                                                : myBlack),
                                        text(
                                            context,
                                            "300Rs",
                                            .025,
                                            sprinkleIndex == 2
                                                ? myWhite
                                                : myBlack),
                                      ],
                                    ),
                                  ),
                                ),
                                sprinkleIndex == 2
                                    ? Container(
                                        width: dynamicWidth(context, 0.12),
                                        height: dynamicHeight(context, .035),
                                        decoration: BoxDecoration(
                                          color: myRed1,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(
                                              dynamicWidth(context, .05),
                                            ),
                                            bottomLeft: Radius.circular(
                                              dynamicWidth(context, .05),
                                            ),
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(Icons.check,
                                              color: myWhite,
                                              size: dynamicHeight(
                                                  context, 0.025)),
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  text(context, "Accessories", 0.04, myBlack, bold: true),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            //sizeIndex =2;
                            if (accessoriesIndex == 1) {
                              accessoriesIndex = 0;
                            } else if (accessoriesIndex != 1) {
                              accessoriesIndex = 1;
                            }
                          });
                        },
                        child: Container(
                          width: accessoriesIndex ==1? dynamicWidth(context, 0.3):dynamicWidth(context, .2),
                          height: accessoriesIndex ==1 ?dynamicHeight(context, 0.05) :dynamicHeight(context, 0.045),
                          padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.01),vertical: dynamicHeight(context, 0.004)),
                          decoration: BoxDecoration(
                            color: accessoriesIndex ==1 ?myPink : myLightPink1.withOpacity(.28),
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, .03),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: accessoriesIndex ==1 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              text(context, "Age Number", accessoriesIndex==1 ?0.028: 0.025, accessoriesIndex==1 ?myWhite :myBlack.withOpacity(.28),
                                  bold: true),
                              accessoriesIndex ==1 ?Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  text(context, "150Rs", 0.025, myWhite,
                                  ),
                                  Icon(Icons.check,color :myWhite,size: dynamicHeight(context, .022),)
                                ],
                              ): text(context, "", 0, noColor),
                            ],
                          ),
                        ),
                      ),

                      widthBox(context, 0.02),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            //sizeIndex =2;
                            if (accessoriesIndex == 2) {
                              accessoriesIndex = 0;
                            } else if (accessoriesIndex != 2) {
                              accessoriesIndex = 2;
                            }
                          });
                        },
                        child: Container(
                          width: accessoriesIndex ==2? dynamicWidth(context, 0.3):dynamicWidth(context, .2),
                          height: accessoriesIndex == 2 ?dynamicHeight(context, 0.05) : dynamicHeight(context, 0.045),
                          padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.01),vertical: dynamicHeight(context, 0.004)),
                          decoration: BoxDecoration(
                            color: accessoriesIndex ==2 ?myPink: myLightPink1.withOpacity(.28),
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, .03),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: accessoriesIndex ==2 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text(context, "Happy Birthday", accessoriesIndex==2 ?0.028: 0.025, accessoriesIndex==2 ?myWhite :myBlack.withOpacity(.28),
                                  bold: true),
                              accessoriesIndex ==2 ?Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  text(context, "100Rs", 0.025, myWhite,
                                  ),
                                  Icon(Icons.check,color :myWhite,size: dynamicHeight(context, .022),)
                                ],
                              ): text(context, "", 0, noColor),
                            ],
                          ),
                        ),
                      ),

                      widthBox(context, 0.02),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            //sizeIndex =2;
                            if (accessoriesIndex== 3) {
                              accessoriesIndex = 0;
                            } else if (accessoriesIndex != 3) {
                              accessoriesIndex = 3;
                            }
                          });
                        },
                        child: Container(
                          width: accessoriesIndex ==3? dynamicWidth(context, 0.3):dynamicWidth(context, .2),
                          height: accessoriesIndex ==3 ?dynamicHeight(context, 0.05) : dynamicHeight(context, .045),
                          padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.01),vertical: dynamicHeight(context, 0.004)),
                          decoration: BoxDecoration(
                            color: accessoriesIndex==3?myPink :myLightPink1.withOpacity(.28),
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, .03),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: accessoriesIndex ==3 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text(context, "Bride to be", accessoriesIndex==3 ?0.028: 0.025, accessoriesIndex==3 ?myWhite :myBlack.withOpacity(.28),
                                  bold: true),
                              accessoriesIndex==3?Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  text(context, "200Rs", 0.025, myWhite,
                                  ),
                                  Icon(Icons.check,color :myWhite,size: dynamicHeight(context, .022),)
                                ],
                              ): text(context, "", 0, noColor),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  heightBox(context, .1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius : dynamicHeight(context, .02),
                        backgroundColor: myLightPink1,
                        child: Center (
                          child: Icon(
                            Icons.remove,color : myBlack,size: dynamicHeight(context, 0.025)
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          push(context, CartScreen());
                        },
                        child: Container(
                          width: dynamicWidth(context, 0.4),
                          height: dynamicHeight(context, .1),
                          decoration: BoxDecoration(
                            color: myBlue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                            ),

                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/cart.png",height: dynamicHeight(context,0.04)),
                              text(context,"Add to Cart", 0.04, myBlack,bold:true),

                            ],
                          ),
                        ),
                      ),
                      CircleAvatar(
                          radius : dynamicHeight(context, .02),
                          backgroundColor: myBlue,
                           child: Center(
                             child: Icon(Icons.add,color : myBlack,size: dynamicHeight(context, 0.025)),
                           ),
                      ),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),

        // SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       bar(
        //         context,
        //         true,
        //         centerCheck: true,
        //         back: true,
        //         centerText: widget.name,
        //       ),
        //       SizedBox(
        //         height: dynamicHeight(context, 0.5),
        //         child: Swiper(
        //           itemBuilder: (BuildContext context, int index) {
        //             return swiper(context, cake[widget.i]['images'][index]);
        //           },
        //           itemCount: cake[widget.i]['images'].length,
        //           autoplay: true,
        //           pagination: const SwiperPagination(
        //             alignment: Alignment.centerRight,
        //             builder: DotSwiperPaginationBuilder(activeColor: myBlack),
        //           ),
        //         ),
        //       ),
        //       text(
        //           context,
        //           sizeIndex == 1
        //               ? price = "3500"
        //               : sizeIndex == 2
        //                   ? price = "4500"
        //                   : sizeIndex == 3
        //                       ? price = "5000"
        //                       : sizeIndex == 4
        //                           ? price = "6000"
        //                           : sizeIndex == 5
        //                               ? price = "7400"
        //                               : sizeIndex == 6
        //                                   ? price = "8800"
        //                                   : price = "0",
        //           0.04,
        //           myBrown),
        //       heightBox(context, 0.008),
        //       text(context, "Size :", 0.04, myBlack, bold: true),
        //       SizedBox(
        //         height: dynamicHeight(context, 0.05),
        //         child: ListView(
        //           scrollDirection: Axis.horizontal,
        //           children: [
        //             InkWell(
        //               onTap: () {
        //                 setState(() {
        //                   //sizeIndex =1;
        //                   if (sizeIndex == 1) {
        //                     sizeIndex = 1;
        //                   } else if (sizeIndex != 1) {
        //                     sizeIndex = 1;
        //                   }
        //                 });
        //               },
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(
        //                     horizontal: dynamicWidth(context, 0.01),
        //                     vertical: dynamicHeight(context, 0.005)),
        //                 child: ClipRRect(
        //                   borderRadius: BorderRadius.circular(
        //                     dynamicWidth(context, 0.03),
        //                   ),
        //                   child: Container(
        //                     padding: EdgeInsets.symmetric(
        //                       vertical: dynamicHeight(context, 0.008),
        //                       horizontal: dynamicWidth(context, 0.03),
        //                     ),
        //                     color: sizeIndex == 1
        //                         ? myLightPink
        //                         : myGrey.withOpacity(0.2),
        //                     child: Center(
        //                         child: text(context, "2 Pound", 0.03,
        //                             sizeIndex == 1 ? myWhite : myBlack)),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             InkWell(
        //               onTap: () {
        //                 setState(() {
        //                   if (sizeIndex == 2) {
        //                     sizeIndex = 2;
        //                   } else if (sizeIndex != 2) {
        //                     sizeIndex = 2;
        //                   }
        //                 });
        //               },
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(
        //                     horizontal: dynamicWidth(context, 0.01),
        //                     vertical: dynamicHeight(context, 0.005)),
        //                 child: ClipRRect(
        //                   borderRadius: BorderRadius.circular(
        //                     dynamicWidth(context, 0.03),
        //                   ),
        //                   child: Container(
        //                     padding: EdgeInsets.symmetric(
        //                       vertical: dynamicHeight(context, 0.008),
        //                       horizontal: dynamicWidth(context, 0.03),
        //                     ),
        //                     color: sizeIndex == 2
        //                         ? myLightPink
        //                         : myGrey.withOpacity(0.2),
        //                     child: Center(
        //                         child: text(context, "2.5 Pound", 0.03,
        //                             sizeIndex == 2 ? myWhite : myBlack)),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             InkWell(
        //               onTap: () {
        //                 setState(() {
        //                   if (sizeIndex == 3) {
        //                     sizeIndex = 3;
        //                   } else if (sizeIndex != 3) {
        //                     sizeIndex = 3;
        //                   }
        //                 });
        //               },
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(
        //                     horizontal: dynamicWidth(context, 0.01),
        //                     vertical: dynamicHeight(context, 0.005)),
        //                 child: ClipRRect(
        //                   borderRadius: BorderRadius.circular(
        //                     dynamicWidth(context, 0.03),
        //                   ),
        //                   child: Container(
        //                     padding: EdgeInsets.symmetric(
        //                       vertical: dynamicHeight(context, 0.008),
        //                       horizontal: dynamicWidth(context, 0.03),
        //                     ),
        //                     color: sizeIndex == 3
        //                         ? myLightPink
        //                         : myGrey.withOpacity(0.2),
        //                     child: Center(
        //                         child: text(context, "3 Pound", 0.03,
        //                             sizeIndex == 3 ? myWhite : myBlack)),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             InkWell(
        //               onTap: () {
        //                 setState(() {
        //                   if (sizeIndex == 4) {
        //                     sizeIndex = 4;
        //                   } else if (sizeIndex != 4) {
        //                     sizeIndex = 4;
        //                   }
        //                 });
        //               },
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(
        //                     horizontal: dynamicWidth(context, 0.01),
        //                     vertical: dynamicHeight(context, 0.005)),
        //                 child: ClipRRect(
        //                   borderRadius: BorderRadius.circular(
        //                     dynamicWidth(context, 0.03),
        //                   ),
        //                   child: Container(
        //                     padding: EdgeInsets.symmetric(
        //                       vertical: dynamicHeight(context, 0.008),
        //                       horizontal: dynamicWidth(context, 0.03),
        //                     ),
        //                     color: sizeIndex == 4
        //                         ? myLightPink
        //                         : myGrey.withOpacity(0.2),
        //                     child: Center(
        //                         child: text(context, "4 Pound", 0.03,
        //                             sizeIndex == 4 ? myWhite : myBlack)),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             InkWell(
        //               onTap: () {
        //                 setState(() {
        //                   if (sizeIndex == 5) {
        //                     sizeIndex = 5;
        //                   } else if (sizeIndex != 5) {
        //                     sizeIndex = 5;
        //                   }
        //                 });
        //               },
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(
        //                     horizontal: dynamicWidth(context, 0.01),
        //                     vertical: dynamicHeight(context, 0.005)),
        //                 child: ClipRRect(
        //                   borderRadius: BorderRadius.circular(
        //                     dynamicWidth(context, 0.03),
        //                   ),
        //                   child: Container(
        //                     padding: EdgeInsets.symmetric(
        //                       vertical: dynamicHeight(context, 0.008),
        //                       horizontal: dynamicWidth(context, 0.03),
        //                     ),
        //                     color: sizeIndex == 5
        //                         ? myLightPink
        //                         : myGrey.withOpacity(0.2),
        //                     child: Center(
        //                         child: text(context, "5 Pound", 0.03,
        //                             sizeIndex == 5 ? myWhite : myBlack)),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             InkWell(
        //               onTap: () {
        //                 setState(() {
        //                   if (sizeIndex == 6) {
        //                     sizeIndex = 6;
        //                   } else if (sizeIndex != 6) {
        //                     sizeIndex = 6;
        //                   }
        //                 });
        //               },
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(
        //                     horizontal: dynamicWidth(context, 0.01),
        //                     vertical: dynamicHeight(context, 0.005)),
        //                 child: ClipRRect(
        //                   borderRadius: BorderRadius.circular(
        //                     dynamicWidth(context, 0.03),
        //                   ),
        //                   child: Container(
        //                     padding: EdgeInsets.symmetric(
        //                       vertical: dynamicHeight(context, 0.008),
        //                       horizontal: dynamicWidth(context, 0.03),
        //                     ),
        //                     color: sizeIndex == 6
        //                         ? myLightPink
        //                         : myGrey.withOpacity(0.2),
        //                     child: Center(
        //                         child: text(context, "6 Pound", 0.03,
        //                             sizeIndex == 6 ? myWhite : myBlack)),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.symmetric(
        //           horizontal: dynamicWidth(context, .04),
        //         ),
        //         child: Column(
        //           children: [
        //             Align(
        //               alignment: Alignment.centerLeft,
        //               child: text(context, "Description :", 0.04, myBlack,
        //                   bold: true),
        //             ),
        //             // text(context, widget.description, 0.035, myBlack,
        //             //     maxLines: 3),
        //             heightBox(context, 0.012),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 text(context, "Add Extra", 0.035, myBlack, bold: true),
        //                 widthBox(context, 0.01),
        //                 widthBox(context, 0.01),
        //                 InkWell(
        //                   onTap: () {
        //                     setState(
        //                       () {
        //                         if (fvt == 1) {
        //                           fvt = 0;
        //                         } else if (fvt != 1) {
        //                           fvt = 1;
        //                         }
        //                       },
        //                     );
        //                     if (fvt == 0) {
        //                       remove(context, "favorite");
        //                     } else {
        //                       success(context, "favorite");
        //                     }
        //                   },
        //                   child: ClipRRect(
        //                     borderRadius: BorderRadius.circular(
        //                       dynamicWidth(context, 0.03),
        //                     ),
        //                     child: Container(
        //                       padding: EdgeInsets.symmetric(
        //                         vertical: dynamicHeight(context, 0.008),
        //                         horizontal: dynamicWidth(context, 0.01),
        //                       ),
        //                       color: myGrey.withOpacity(0.2),
        //                       child: Center(
        //                         child: fvt == 1
        //                             ? Icon(
        //                                 Icons.favorite,
        //                                 size: dynamicHeight(context, 0.025),
        //                                 color: myRed,
        //                               )
        //                             : Icon(
        //                                 Icons.favorite_outline_sharp,
        //                                 size: dynamicHeight(context, 0.025),
        //                                 color: myBlack,
        //                               ),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: () {
        //                     pound = sizeIndex == 1
        //                         ? "2 Pound"
        //                         : sizeIndex == 2
        //                             ? "2.5 Pound"
        //                             : sizeIndex == 3
        //                                 ? "3 Pound"
        //                                 : sizeIndex == 4
        //                                     ? "4 Pound"
        //                                     : sizeIndex == 5
        //                                         ? "5 Pound"
        //                                         : sizeIndex == 6
        //                                             ? "6 Pound"
        //                                             : "2 Pound";
        //
        //                     setState(() {
        //                       if (index == 1) {
        //                         index = 0;
        //                       } else if (index != 1) {
        //                         index = 1;
        //                       }
        //                     });
        //                     if (index == 0) {
        //                       cart.removeAt(index);
        //                       MotionToast.delete(
        //                         title: const Text("Removed Successfully"),
        //                         description:
        //                             const Text("Item removed from cart"),
        //                         animationDuration:
        //                             const Duration(milliseconds: 2000),
        //                       ).show(context);
        //                     } else if (index == 1) {
        //                       cart.add({
        //                         "image": cake[widget.i]['images'][0],
        //                         'name': widget.name,
        //                         'price': price,
        //                         "size": pound,
        //                         "quantity": "1",
        //                       });
        //                       MotionToast.success(
        //                         title: const Text("Added Successfully"),
        //                         description: const Text("Item added to cart"),
        //                         animationDuration:
        //                             const Duration(milliseconds: 2000),
        //                       ).show(context);
        //                     }
        //                   },
        //                   child: ClipRRect(
        //                     borderRadius: BorderRadius.circular(
        //                       dynamicWidth(context, 0.03),
        //                     ),
        //                     child: Container(
        //                       padding: EdgeInsets.symmetric(
        //                         vertical: dynamicHeight(context, 0.008),
        //                         horizontal: dynamicWidth(context, 0.03),
        //                       ),
        //                       color: myGrey.withOpacity(0.2),
        //                       child: Row(
        //                         children: [
        //                           text(context, "Add to cart", 0.03, myBlack),
        //                           Icon(
        //                             Icons.check,
        //                             color: index == 1
        //                                 ? Colors.greenAccent
        //                                 : myBlack,
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //       heightBox(context, 0.015),
        //       SizedBox(
        //         width: dynamicWidth(context, 1),
        //         height: dynamicHeight(context, 0.15),
        //         child: ListView.builder(
        //           scrollDirection: Axis.horizontal,
        //           itemCount: extraTopping.length,
        //           itemBuilder: (
        //             context,
        //             i,
        //           ) {
        //             return downList(context, extraTopping[i]['image'],
        //                 extraTopping[i]['name']);
        //           },
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

Widget downList(context, image, name) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, 0.02),
        vertical: dynamicHeight(context, 0.012)),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(
        dynamicWidth(context, 0.05),
      ),
      child: Container(
        width: dynamicWidth(context, 0.2),
        height: dynamicHeight(context, 0.12),
        color: myGrey.withOpacity(0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                dynamicWidth(context, 0.05),
              ),
              child: Container(
                width: dynamicWidth(context, 0.14),
                height: dynamicHeight(context, 0.06),
                decoration: BoxDecoration(
                  color: myLightPink,
                  image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            text(context, name, 0.025, myBlack),
          ],
        ),
      ),
    ),
  );
}

void success(context, title) {
  return MotionToast.success(
    title: const Text("Added Successfully"),
    description: Text("Item added to $title"),
    animationDuration: const Duration(milliseconds: 2000),
  ).show(context);
}

void remove(context, title) {
  return MotionToast.delete(
    title: const Text("Removed Successfully"),
    description: Text("Item removed from $title"),
    animationDuration: const Duration(milliseconds: 2000),
  ).show(context);
}

Widget swiper(context, image) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, 0.08),
        vertical: dynamicHeight(context, 0.01)),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(
        dynamicWidth(context, 0.1),
      ),
      child: Container(
        width: dynamicWidth(context, 0.85),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        ),
      ),
    ),
  );
}

Widget pound(context, size) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, 0.01),
        vertical: dynamicHeight(context, 0.005)),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(
        dynamicWidth(context, 0.03),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: dynamicHeight(context, 0.008),
          horizontal: dynamicWidth(context, 0.03),
        ),
        color: myWhite,
        child: Center(child: text(context, size, 0.03, myBlack)),
      ),
    ),
  );
}
