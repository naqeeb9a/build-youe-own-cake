import 'package:build_own_cake/app%20screens/order_complete.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import "package:flutter/material.dart";

import '../utils/config.dart';
import '../widgets/text_widget.dart';
import 'cart.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/detail_page_cut.png",
              color: myBlue.withOpacity(0.7),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Image.asset("assets/cut_2.png",
                  width: dynamicWidth(context, .98), color: myBlue),
            ),
            Center(
              child: SizedBox(
                width: dynamicWidth(context, .88),
                height: dynamicHeight(context, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    appBar(context, title: "Payment"),
                    Container(
                      width: dynamicWidth(context, 1),
                      height: dynamicHeight(context, .7),
                      padding: EdgeInsets.only(
                        top: dynamicHeight(context, .035),
                        left: dynamicWidth(context, .06),
                        right: dynamicWidth(context, .06),
                        bottom: dynamicHeight(context, .035),
                      ),
                      decoration: BoxDecoration(
                        color: myWhite,
                        borderRadius: BorderRadius.circular(
                          dynamicWidth(context, 0.1),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: myGrey.withOpacity(.1),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              text(context, "     Info", 0.035, myBlack),
                            ],
                          ),
                          Container(
                            width: dynamicWidth(context, .65),
                            height: dynamicHeight(context, .11),
                            padding: EdgeInsets.symmetric(
                                horizontal: dynamicWidth(context, 0.04)),
                            decoration: BoxDecoration(
                                color: myWhite,
                                border: Border.all(color: myRed),
                                borderRadius: BorderRadius.circular(
                                    dynamicWidth(context, .07))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(context, "Khubaib", 0.035, myPink),
                                text(context, "xyz@gmail.com", 0.035, myBlack),
                                text(context, "03************", 0.035, myBlack),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              text(context, "     Delivery Address", 0.035,
                                  myBlack),
                            ],
                          ),
                          Container(
                            width: dynamicWidth(context, .65),
                            height: dynamicHeight(context, .11),
                            padding: EdgeInsets.symmetric(
                                horizontal: dynamicWidth(context, 0.04)),
                            decoration: BoxDecoration(
                                color: myWhite,
                                border: Border.all(color: myRed),
                                borderRadius: BorderRadius.circular(
                                    dynamicWidth(context, .07))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(context, "Address", 0.035, myPink),
                                text(
                                    context,
                                    "59/9A,Sher Khan Road,Cantt, Lahore,Punjab",
                                    0.035,
                                    myBlack),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              text(context, "     Payment Method", 0.035,
                                  myBlack),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectionIndex == 1) {
                                  selectionIndex = 0;
                                } else if (selectionIndex != 1) {
                                  selectionIndex = 1;
                                }
                              });
                            },
                            child: Container(
                              width: dynamicWidth(context, .55),
                              height: dynamicHeight(context, .065),
                              padding: EdgeInsets.symmetric(
                                  horizontal: dynamicWidth(context, 0.04)),
                              decoration: BoxDecoration(
                                  color: selectionIndex == 1
                                      ? myRed1
                                      : myRed1.withOpacity(.2),
                                  // border: Border.all(color:myRed),
                                  borderRadius: BorderRadius.circular(
                                      dynamicWidth(context, .04))),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/visacard.png",
                                    width: dynamicWidth(context, 0.12),
                                  ),
                                  widthBox(context, 0.02),
                                  text(context, "**** **** **** ****", 0.035,
                                      selectionIndex == 1 ? myWhite : myBlack),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectionIndex == 2) {
                                  selectionIndex = 0;
                                } else if (selectionIndex != 2) {
                                  selectionIndex = 2;
                                }
                              });
                            },
                            child: Container(
                              width: dynamicWidth(context, .55),
                              height: dynamicHeight(context, .065),
                              padding: EdgeInsets.symmetric(
                                  horizontal: dynamicWidth(context, 0.04)),
                              decoration: BoxDecoration(
                                  color: selectionIndex == 2
                                      ? myRed1
                                      : myRed1.withOpacity(.2),
                                  // border: Border.all(color:myRed),
                                  borderRadius: BorderRadius.circular(
                                      dynamicWidth(context, .04))),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/mastercard.png",
                                    width: dynamicWidth(context, 0.12),
                                  ),
                                  widthBox(context, 0.02),
                                  text(context, "**** **** **** ****", 0.035,
                                      selectionIndex == 2 ? myWhite : myBlack),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectionIndex == 3) {
                                  selectionIndex = 0;
                                } else if (selectionIndex != 3) {
                                  selectionIndex = 3;
                                }
                              });
                            },
                            child: Container(
                              width: dynamicWidth(context, .55),
                              height: dynamicHeight(context, .065),
                              padding: EdgeInsets.symmetric(
                                  horizontal: dynamicWidth(context, 0.04)),
                              decoration: BoxDecoration(
                                  color: selectionIndex == 3
                                      ? myRed1
                                      : myRed1.withOpacity(.2),
                                  // border: Border.all(color:myRed),
                                  borderRadius: BorderRadius.circular(
                                      dynamicWidth(context, .04))),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/byhand.png",
                                    width: dynamicWidth(context, 0.12),
                                  ),
                                  widthBox(context, 0.02),
                                  text(
                                    context,
                                    "Cash on Delivery",
                                    0.035,
                                    selectionIndex == 3 ? myWhite : myBlack,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    semiButton(
                        context, const OrderComplete(), "Complete Order"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
