import 'package:badges/badges.dart';
import 'package:build_own_cake/app%20screens/cart.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';

class CakeDetail extends StatefulWidget {
  final String name, image;
  final int i;

  const CakeDetail(
      {required this.name, required this.i, Key? key, required this.image})
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
  int quantity = 1;

  void _incrementCounter() {
    setState(() {
      quantity++;
    });
  }

  void _decrementCounter() {
    if (quantity <= 1) {
      return;
    }
    setState(() {
      quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
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
                  SizedBox(
                    width: dynamicWidth(context, .88),
                    child: appBar(
                      context,
                      title: widget.name,
                      trailing: true,
                      icon: "assets/cart.png",
                      page: const CartScreen(),
                    ),
                  ),
                  SizedBox(
                    height: dynamicHeight(context, 0.35),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          top: dynamicHeight(context, 0),
                          child: text(
                            context,
                            "2 Pounds",
                            0.04,
                            myBlack,
                            bold: true,
                          ),
                        ),
                        CachedNetworkImage(
                          imageUrl:    widget.image.toString(),
                          height: dynamicHeight(context, .25),
                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                              Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                        // Image.network(
                        //   widget.image.toString(),
                        //   height: dynamicHeight(context, .35),
                        // ),
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
                  // SizedBox(
                  //   height: dynamicHeight(context, 0.1),
                  //   child: CarouselSlider(
                  //     items: [
                  //       SizedBox(
                  //         height: dynamicHeight(context, 0.35),
                  //         child: Stack(
                  //           alignment: Alignment.bottomCenter,
                  //           children: [
                  //             Positioned(
                  //               top: dynamicHeight(context, 0),
                  //               child: text(
                  //                 context,
                  //                 "2 Pounds",
                  //                 0.04,
                  //                 myBlack,
                  //                 bold: true,
                  //               ),
                  //             ),
                  //             CachedNetworkImage(
                  //               imageUrl:    widget.image.toString(),
                  //               height: dynamicHeight(context, .35),
                  //               progressIndicatorBuilder: (context, url, downloadProgress) =>
                  //                   Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                  //               errorWidget: (context, url, error) => const Icon(Icons.error),
                  //             ),
                  //             // Image.network(
                  //             //   widget.image.toString(),
                  //             //   height: dynamicHeight(context, .35),
                  //             // ),
                  //             Positioned(
                  //               right: dynamicHeight(context, 0.02),
                  //               bottom: dynamicHeight(context, 0.04),
                  //               child: CircleAvatar(
                  //                 radius: dynamicHeight(context, .04),
                  //                 backgroundColor: myYellow1.withOpacity(.9),
                  //                 child: Center(
                  //                   child:
                  //                   text(context, "2500Rs", 0.04, myWhite),
                  //                 ),
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //     options: CarouselOptions(
                  //       // scrollPhysics: never,
                  //
                  //       autoPlay: true,
                  //       height: dynamicHeight(context, 0.45),
                  //       enlargeCenterPage: true,
                  //       enableInfiniteScroll: true,
                  //       aspectRatio: 12 / 6,
                  //       autoPlayCurve: Curves.fastOutSlowIn,
                  //       autoPlayAnimationDuration:
                  //           const Duration(milliseconds: 800),
                  //       viewportFraction: 0.6,
                  //     ),
                  //   ),
                  // ),
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
                                              : myBlack,
                                          bold: true,
                                        ),
                                        text(
                                          context,
                                          "300Rs",
                                          .025,
                                          sprinkleIndex == 1
                                              ? myWhite
                                              : myBlack,
                                          bold: true,
                                        ),
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
                                          child: Icon(
                                            Icons.check,
                                            color: myWhite,
                                            size: dynamicHeight(context, 0.025),
                                          ),
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
                                              : myBlack,
                                          bold: true,
                                        ),
                                        text(
                                          context,
                                          "300Rs",
                                          .025,
                                          sprinkleIndex == 2
                                              ? myWhite
                                              : myBlack,
                                          bold: true,
                                        ),
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
                        onTap: () {
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
                          width: accessoriesIndex == 1
                              ? dynamicWidth(context, 0.3)
                              : dynamicWidth(context, .2),
                          height: accessoriesIndex == 1
                              ? dynamicHeight(context, 0.05)
                              : dynamicHeight(context, 0.045),
                          padding: EdgeInsets.symmetric(
                              horizontal: dynamicWidth(context, 0.01),
                              vertical: dynamicHeight(context, 0.004)),
                          decoration: BoxDecoration(
                            color: accessoriesIndex == 1
                                ? myPink
                                : myLightPink1.withOpacity(.28),
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, .03),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: accessoriesIndex == 1
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text(
                                context,
                                "Age Number",
                                accessoriesIndex == 1 ? 0.028 : 0.025,
                                accessoriesIndex == 1
                                    ? myWhite
                                    : myBlack.withOpacity(.28),
                                bold: true,
                              ),
                              accessoriesIndex == 1
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        text(
                                          context,
                                          "150Rs",
                                          0.025,
                                          myWhite,
                                        ),
                                        Icon(
                                          Icons.check,
                                          color: myWhite,
                                          size: dynamicHeight(context, .022),
                                        )
                                      ],
                                    )
                                  : text(context, "", 0, noColor),
                            ],
                          ),
                        ),
                      ),
                      widthBox(context, 0.02),
                      GestureDetector(
                        onTap: () {
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
                          width: accessoriesIndex == 2
                              ? dynamicWidth(context, 0.3)
                              : dynamicWidth(context, .2),
                          height: accessoriesIndex == 2
                              ? dynamicHeight(context, 0.05)
                              : dynamicHeight(context, 0.045),
                          padding: EdgeInsets.symmetric(
                              horizontal: dynamicWidth(context, 0.01),
                              vertical: dynamicHeight(context, 0.004)),
                          decoration: BoxDecoration(
                            color: accessoriesIndex == 2
                                ? myPink
                                : myLightPink1.withOpacity(.28),
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, .03),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: accessoriesIndex == 2
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text(
                                context,
                                "Happy Birthday",
                                accessoriesIndex == 2 ? 0.028 : 0.025,
                                accessoriesIndex == 2
                                    ? myWhite
                                    : myBlack.withOpacity(.28),
                                bold: true,
                              ),
                              accessoriesIndex == 2
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        text(
                                          context,
                                          "100Rs",
                                          0.025,
                                          myWhite,
                                        ),
                                        Icon(
                                          Icons.check,
                                          color: myWhite,
                                          size: dynamicHeight(context, .022),
                                        )
                                      ],
                                    )
                                  : text(context, "", 0, noColor),
                            ],
                          ),
                        ),
                      ),
                      widthBox(context, 0.02),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            //sizeIndex =2;
                            if (accessoriesIndex == 3) {
                              accessoriesIndex = 0;
                            } else if (accessoriesIndex != 3) {
                              accessoriesIndex = 3;
                            }
                          });
                        },
                        child: Container(
                          width: accessoriesIndex == 3
                              ? dynamicWidth(context, 0.3)
                              : dynamicWidth(context, .2),
                          height: accessoriesIndex == 3
                              ? dynamicHeight(context, 0.05)
                              : dynamicHeight(context, .045),
                          padding: EdgeInsets.symmetric(
                              horizontal: dynamicWidth(context, 0.01),
                              vertical: dynamicHeight(context, 0.004)),
                          decoration: BoxDecoration(
                            color: accessoriesIndex == 3
                                ? myPink
                                : myLightPink1.withOpacity(.28),
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, .03),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: accessoriesIndex == 3
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text(
                                  context,
                                  "Bride to be",
                                  accessoriesIndex == 3 ? 0.028 : 0.025,
                                  accessoriesIndex == 3
                                      ? myWhite
                                      : myBlack.withOpacity(.28),
                                  bold: true),
                              accessoriesIndex == 3
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        text(
                                          context,
                                          "200Rs",
                                          0.025,
                                          myWhite,
                                        ),
                                        Icon(
                                          Icons.check,
                                          color: myWhite,
                                          size: dynamicHeight(context, .022),
                                        )
                                      ],
                                    )
                                  : text(context, "", 0, noColor),
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
                      GestureDetector(
                        onTap: () {
                          _decrementCounter();
                        },
                        child: CircleAvatar(
                          radius: dynamicHeight(context, .024),
                          backgroundColor: myLightPink1,
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              color: myBlack,
                              size: dynamicHeight(context, 0.025),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (cart.isEmpty) {
                            cart.add({
                              "image": "assets/Cakes/cake 1.png",
                              "name": widget.name,
                              "size": "3 lbs",
                              "price": "3000rs",
                            });
                            MotionToast.success(
                              title: const Text(
                                "Added",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              description: const Text("The item is Added"),
                              toastDuration: const Duration(milliseconds: 2200),
                            ).show(context);
                          } else {
                            for (int i = 0; i < cart.length; i++) {
                              if (widget.name == cart[i]['name']) {
                                MotionToast.error(
                                  title: const Text(
                                    "Already Added",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  description: const Text(
                                      "The item is Already added in cart"),
                                  toastDuration:
                                      const Duration(milliseconds: 2200),
                                ).show(context);
                              } else {
                                cart.add({
                                  "image": widget.image.toString(),
                                  "name": widget.name,
                                  "size": "3 lbs",
                                  "price": "3000rs",
                                });
                                MotionToast.success(
                                  title: const Text(
                                    "Added",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  description: const Text("The item is Added"),
                                  toastDuration:
                                      const Duration(milliseconds: 2200),
                                ).show(context);
                              }
                            }
                          }
                        },
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              "assets/bottom_cut.png",
                              color: myGrey.withOpacity(.4),
                              height: dynamicHeight(context, .106),
                            ),
                            Container(
                              width: dynamicWidth(context, 0.42),
                              height: dynamicHeight(context, .096),
                              decoration: const BoxDecoration(
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
                                  Image.asset(
                                    "assets/cart.png",
                                    height: dynamicHeight(context, 0.04),
                                  ),
                                  text(
                                    context,
                                    "Add to Cart",
                                    0.04,
                                    myBlack,
                                    bold: true,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Badge(
                        badgeColor: myBlue,
                        elevation: dynamicHeight(context, .04),
                        badgeContent:
                            text(context, quantity.toString(), 0.045, myBlack),
                        position: BadgePosition.topEnd(top: -12, end: -20),
                        // padding : EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.01)),
                        child: GestureDetector(
                          onTap: () {
                            _incrementCounter();
                          },
                          child: CircleAvatar(
                            radius: dynamicHeight(context, .024),
                            backgroundColor: myBlue,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: myBlack,
                                size: dynamicHeight(context, 0.025),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
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
    animationDuration: const Duration(milliseconds: 1000),
  ).show(context);
}

void remove(context, title) {
  return MotionToast.delete(
    title: const Text("Removed Successfully"),
    description: Text("Item removed from $title"),
    animationDuration: const Duration(milliseconds: 1000),
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
