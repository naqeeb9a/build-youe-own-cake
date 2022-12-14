import 'package:build_own_cake/app%20screens/payment.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/form_fields.dart';
import 'package:flutter/material.dart';

import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';
import 'cart.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  bool value = false;
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();

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
              child: Image.asset(
                "assets/cut_2.png",
                width: dynamicWidth(context, .98),
                color: myBlue,
              ),
            ),
            Center(
              child: SizedBox(
                width: dynamicWidth(context, .88),
                height: dynamicHeight(context, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    appBar(context, title: "Checkout"),
                    Container(
                      width: dynamicWidth(context, 1),
                      height: dynamicHeight(context, .6),
                      padding: EdgeInsets.only(
                        top: dynamicHeight(context, .03),
                        left: dynamicWidth(context, .06),
                        right: dynamicWidth(context, .06),
                        bottom: dynamicHeight(context, .02),
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
                          inputTextField(context, "Name", firstname),
                          inputTextField(context, "Last Name", lastname),
                          inputTextField(context, "Email", email),
                          inputTextField(context, "Phone", phone),
                          inputTextField(context, "Address", address),
                          inputTextField(context, "City", city),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Theme(
                          //       data: Theme.of(context)
                          //           .copyWith(unselectedWidgetColor: myPink),
                          //       child: Checkbox(
                          //         visualDensity: const VisualDensity(
                          //           vertical: -4,
                          //         ),
                          //         materialTapTargetSize:
                          //             MaterialTapTargetSize.shrinkWrap,
                          //         // checkColor: myRed,
                          //         value: value,
                          //         onChanged: (value) {
                          //           setState(() {
                          //             this.value = value!;
                          //           });
                          //         },
                          //       ),
                          //     ),
                          //     text(
                          //       context,
                          //       "Save the Information",
                          //       0.03,
                          //       myPink,
                          //     )
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                    semiButton(context, const PaymentScreen(), "Payment"),
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
