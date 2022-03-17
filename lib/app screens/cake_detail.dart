import 'package:build_own_cake/app%20screens/home_screen.dart';
import 'package:build_own_cake/app%20screens/see_all.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:card_swiper/card_swiper.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';

import '../utils/constants.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [

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
