import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:flutter/material.dart';

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
              right :0 ,
              top :0,
              child: Image.asset(
                "assets/cut_2.png",
                width: dynamicWidth(context, .98),
                color: myBlue
              ),
            ),
            SizedBox(
              width: dynamicWidth(context, 1),
              height: dynamicHeight(context, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appBar(context,title :"Cart"),
                  Container(
                    width: dynamicWidth(context, .8),
                    height: dynamicHeight(context, .45),
                    decoration: BoxDecoration(
                      color: myWhite,
                      borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1),),
                        boxShadow: [
                        BoxShadow(
                        color: myGrey.withOpacity(.1),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),]
                    ),
                    child:ListView.builder(
                        itemCount:3,
                        itemBuilder: (BuildContext context,int index){
                          return cartCard(context);
                        }
                    ),
                  ),
                  Container(
                    width: dynamicWidth(context, .8),
                    height: dynamicHeight(context, .2),
                    decoration: BoxDecoration(
                        color: myWhite,
                        borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1),),
                        boxShadow: [
                          BoxShadow(
                            color: myGrey.withOpacity(.1),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),]
                    ),
                  ),
                  Container(
                    width: dynamicWidth(context, 0.45),
                    height: dynamicHeight(context, .12),
                    decoration: const BoxDecoration(

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                      border: Border(top : BorderSide(color: myGrey))
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: dynamicWidth(context, 0.4),
                          height: dynamicHeight(context, .1),
                          decoration: const BoxDecoration(
                            color: myBlue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                            ),

                          ),
                          child: Center(child: text(context,"Checkout", 0.04, myBlack,bold:true)),
                        ),
                      ],
                    ),
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


Widget cartCard(context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset("assets/Cakes/cake 1.png",width: dynamicHeight(context, .135),),
          Padding(
            padding:  EdgeInsets.only(bottom:dynamicHeight(context, .03), ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(context,"Pretty In Pink",0.035,myBlack),
                text(context,"3 lbs",0.035,myBlack),
              ],
            ),
          ),
          widthBox(context, 0.05),
          Padding(
            padding:  EdgeInsets.only(bottom:dynamicHeight(context, .03), ),
            child: text(context,"3000rs",0.035,myPink),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.04) ),
        child: Divider(thickness: dynamicWidth(context, 0.0015),),
      )
    ],

  );
}