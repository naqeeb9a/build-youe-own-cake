import 'package:build_own_cake/app%20screens/checkout.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:motion_toast/motion_toast.dart';

import '../utils/app_routes.dart';
import '../widgets/text_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                    appBar(context, title: "Cart"),
                    Container(
                      width: dynamicWidth(context, 1),
                      height: dynamicHeight(context, .47),
                      padding: EdgeInsets.symmetric(
                        horizontal: dynamicWidth(context, .01),
                        vertical: dynamicHeight(context, .02),
                      ),
                      decoration: BoxDecoration(
                          color: myWhite,
                          borderRadius: BorderRadius.circular(
                            dynamicWidth(context, .06),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: myGrey.withOpacity(.2),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]),
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Slidable(
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              children: [
                                SlidableAction(
                                  onPressed: (BuildContext context) {
                                    MotionToast.delete(
                                      title: const Text(
                                        "Deleted",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      description:
                                          const Text("The item is deleted"),
                                      toastDuration:
                                          const Duration(milliseconds: 2200),
                                    ).show(context);
                                    setState(() {});
                                  },
                                  backgroundColor: const Color(0xFFFE4A49),
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete_outlined,
                                  label: 'Delete',
                                ),
                              ],
                            ),
                            child: cartCard(context),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: dynamicWidth(context, 1),
                      height: dynamicHeight(context, .2),
                      padding: EdgeInsets.symmetric(
                        horizontal: dynamicWidth(context, .06),
                        vertical: dynamicHeight(context, .02),
                      ),
                      decoration: BoxDecoration(
                          color: myWhite,
                          borderRadius: BorderRadius.circular(
                            dynamicWidth(context, .06),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: myGrey.withOpacity(.2),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              text(context, "Subtotal", 0.035, myBlack),
                              text(context, "10500rs", 0.035, myPink)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              text(context, "Tax", 0.035, myBlack),
                              text(context, "xyz", 0.035, myPink)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              text(context, "Delivery", 0.035, myBlack),
                              text(context, "200rs", 0.035, myPink)
                            ],
                          ),
                          Divider(
                            thickness: dynamicWidth(context, 0.0015),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              text(context, "Total", 0.035, myBlack),
                              text(context, "10700rs", 0.035, myPink)
                            ],
                          ),
                        ],
                      ),
                    ),
                    semiButton(context, const CheckoutScreen(), "Checkout"),
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

Widget semiButton(context, page, buttonText) {
  return GestureDetector(
    onTap: () {
      push(context, page);
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
          padding: EdgeInsets.only(
            top: dynamicHeight(context, .02),
          ),
          decoration: const BoxDecoration(
            color: myBlue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
          ),
          child: Center(
            child: text(
              context,
              buttonText,
              0.04,
              myBlack,
              bold: true,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget cartCard(context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            "assets/Cakes/cake 1.png",
            width: dynamicHeight(context, .135),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: dynamicHeight(context, .03),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(context, "Pretty In Pink", 0.035, myBlack),
                text(context, "3 lbs", 0.035, myBlack),
              ],
            ),
          ),
          widthBox(context, 0.05),
          Padding(
            padding: EdgeInsets.only(
              bottom: dynamicHeight(context, .03),
            ),
            child: text(context, "3000rs", 0.035, myPink),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.04)),
        child: Divider(
          thickness: dynamicWidth(context, 0.0015),
        ),
      )
    ],
  );
}
