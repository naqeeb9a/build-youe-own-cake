import 'package:build_own_cake/app%20screens/home_screen.dart';
import 'package:build_own_cake/app%20screens/see_all.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import "package:flutter/material.dart";
import 'package:motion_toast/motion_toast.dart';

import 'package:card_swiper/card_swiper.dart';

class CakeView extends StatefulWidget {
  final String name, price, description;
  final int i;
  const CakeView(
      {required this.name,
      required this.price,
      required this.description,
      required this.i,
      Key? key})
      : super(key: key);

  @override
  _CakeViewState createState() => _CakeViewState();
}

List size = [
  "2 Pound",
  '2.5 Pound',
  '3 Pound',
  '4 Pound',
  '5 Pound',
  '6 Pound',
];

List extraTopping = [
  {
    "image":
        "https://www.pngfind.com/pngs/m/341-3413414_sliced-strawberry-transparent-background-hd-png-download.png",
    "name": "Strawberry",
  },
  {
    "image":
        "https://w7.pngwing.com/pngs/523/772/png-transparent-chocolate-bar-chocolate-food-desktop-wallpaper-chocolate-bar.png",
    "name": "Chocolate",
  },
  {
    "image":
        "https://toppng.com/uploads/preview/pink-donut-png-115521317504icfcwlpjg.png",
    "name": "Donut",
  },
  {
    "image":
        "https://www.vhv.rs/dpng/d/39-392139_fruit-pineapple-hd-png-download.png",
    "name": "Pineapple",
  },
  {
    "image": "https://pngimg.com/uploads/biscuit/biscuit_PNG68.png",
    "name": "Biscuits",
  },
];

class _CakeViewState extends State<CakeView> {
  dynamic index = 0, fvt = 0;
  dynamic sizeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //scaffold
        body: Container(
          width: dynamicWidth(context, 1),
          height: dynamicHeight(context, 1),
          padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, .04),
            vertical: dynamicHeight(context, .01),
          ),
          color: myGrey.withOpacity(0.2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                bar(
                  context,
                  true,
                  centerCheck: true,
                  back: true,
                  centerText: widget.name,
                ),
                SizedBox(
                  height: dynamicHeight(context, 0.55),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return swiper(context, cake[widget.i]['images'][index]);
                    },
                    itemCount: cake[widget.i]['images'].length,
                    autoplay: true,
                    pagination: const SwiperPagination(
                      alignment: Alignment.centerRight,
                      builder: DotSwiperPaginationBuilder(activeColor: myBlack),
                    ),
                  ),
                ),
                text(context, sizeIndex ==0 ?"3500" :sizeIndex ==1 ?"3500":sizeIndex ==2 ? "4500" : sizeIndex ==3 ? "5000" : sizeIndex ==4 ?"6000" :sizeIndex ==5 ?"7400" : sizeIndex ==6 ? "8800" : "3500", 0.04, myBrown),
                heightBox(context, 0.008),
                text(context, "Size :", 0.04, myBlack,bold:true),
                SizedBox(
                  height: dynamicHeight(context, 0.05),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      
                      InkWell(
                        onTap: (){
                          setState(() {
                            if (sizeIndex == 1) {
                              sizeIndex = 0;
                            } else if (sizeIndex != 1) {
                              sizeIndex = 1;
                            }
                          });
                        },
                        child: Padding(
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
                              color: sizeIndex ==1 ?myLightPink :myWhite,
                              child: Center(
                                  child: text(context, "2 Pound", 0.03, sizeIndex == 1 ? myWhite : myBlack)),
                            ),
                          ),
                        ),
                      ),
                     InkWell(
                        onTap: () {
                          setState(() {
                            if (sizeIndex == 2) {
                              sizeIndex = 0;
                            } else if (sizeIndex != 2) {
                              sizeIndex = 2;
                            }
                          });
                        },
                        child: Padding(
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
                              color: sizeIndex == 2 ? myLightPink : myWhite,
                              child: Center(
                                  child: text(context, "2.5 Pound", 0.03,
                                      sizeIndex == 2 ? myWhite : myBlack)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (sizeIndex == 3) {
                              sizeIndex = 0;
                            } else if (sizeIndex != 3) {
                              sizeIndex = 3;
                            }
                          });
                        },
                        child: Padding(
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
                              color: sizeIndex == 3 ? myLightPink : myWhite,
                              child: Center(
                                  child: text(context, "3 Pound", 0.03,
                                      sizeIndex == 3 ? myWhite : myBlack)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (sizeIndex == 4) {
                              sizeIndex = 0;
                            } else if (sizeIndex != 4) {
                              sizeIndex = 4;
                            }
                          });
                        },
                        child: Padding(
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
                              color: sizeIndex == 4 ? myLightPink : myWhite,
                              child: Center(
                                  child: text(context, "4 Pound", 0.03,
                                      sizeIndex == 4 ? myWhite : myBlack)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (sizeIndex == 5) {
                              sizeIndex = 0;
                            } else if (sizeIndex != 5) {
                              sizeIndex = 5;
                            }
                          });
                        },
                        child: Padding(
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
                              color: sizeIndex == 5 ? myLightPink : myWhite,
                              child: Center(
                                  child: text(context, "5 Pound", 0.03,
                                      sizeIndex == 5 ? myWhite : myBlack)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (sizeIndex == 6) {
                              sizeIndex = 0;
                            } else if (sizeIndex != 6) {
                              sizeIndex = 6;
                            }
                          });
                        },
                        child: Padding(
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
                              color: sizeIndex == 6 ? myLightPink : myWhite,
                              child: Center(
                                  child: text(context, "6 Pound", 0.03,
                                      sizeIndex == 6 ? myWhite : myBlack)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text(context, "Description :", 0.04, myBlack,bold:true),
                ),
                text(context, widget.description, 0.035, myBlack, maxLines: 3),
                heightBox(context, 0.012),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(context, "Add Extra", 0.035, myBlack, bold: true),
                    widthBox(context, 0.01),
                    widthBox(context, 0.01),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            if (fvt == 1) {
                              fvt = 0;
                            } else if (fvt != 1) {
                              fvt = 1;
                            }
                          },
                        );
                        if (fvt == 0) {
                          remove(context, "favorite");
                        } else {
                          success(context, "favorite");
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          dynamicWidth(context, 0.03),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: dynamicHeight(context, 0.008),
                            horizontal: dynamicWidth(context, 0.01),
                          ),
                          color: myWhite,
                          child: Center(
                            child: fvt == 1
                                ? Icon(
                                    Icons.favorite,
                                    size: dynamicHeight(context, 0.025),
                                    color: myRed,
                                  )
                                : Icon(
                                    Icons.favorite_outline_sharp,
                                    size: dynamicHeight(context, 0.025),
                                    color: myBlack,
                                  ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (index == 1) {
                            index = 0;
                          } else if (index != 1) {
                            index = 1;
                          }
                        });
                        if (index == 0) {
                          remove(context, "Cart");
                        } else {
                          success(context, "Cart");
                        }
                      },
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
                          child: Row(
                            children: [
                              text(context, "Add to cart", 0.03, myBlack),
                              Icon(
                                Icons.check,
                                color:
                                    index == 1 ? Colors.greenAccent : myBlack,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                heightBox(context, 0.015),
                SizedBox(
                  width: dynamicWidth(context, 1),
                  height: dynamicHeight(context, 0.15),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: extraTopping.length,
                    itemBuilder: (
                      context,
                      i,
                    ) {
                      return downList(context, extraTopping[i]['image'],
                          extraTopping[i]['name']);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
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
        color: myWhite,
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

Widget success(context, title) {
  return MotionToast.success(
    title: "Added Successfully",
    titleStyle: const TextStyle(fontWeight: FontWeight.bold),
    description: "Item added to ${title}",
    descriptionStyle: const TextStyle(fontSize: 12),
    width: 300,
    animationDuration: const Duration(milliseconds: 400),
  ).show(context);
}

Widget remove(context, title) {
  return MotionToast.error(
    title: "Removed Successfully",
    titleStyle: const TextStyle(fontWeight: FontWeight.bold),
    description: "Item removed from ${title}",
    animationDuration: const Duration(milliseconds: 400),
  ).show(context);
}

Widget swiper(context, image) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(
      dynamicWidth(context, 0.1),
    ),
    child: Container(
      width: dynamicWidth(context, 0.85),
      height: dynamicHeight(context, 0.55),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
      ),
    ),
  );
}

Widget pound(context,size) {
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
                            child: Center(
                                child: text(context, size, 0.03, myBlack)),
                          ),
                        ),
                      );
}