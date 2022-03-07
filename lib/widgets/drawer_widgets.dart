import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final dynamic image;
  final String name, size, price;
  final dynamic quantity;
  const ItemCard(
      {required this.image,
      required this.name,
      required this.size,
      required this.price,
      required this.quantity,
      Key? key})
      : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  void _incrementCounter() {
    setState(() {
      int.parse(widget.quantity)+1;
    },);
  }

  void _decrementCounter() {
    if (widget.quantity <= 1) {
      return;
    }
    setState(() {
      int.parse(widget.quantity)-1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: dynamicHeight(context, 0.015),
        horizontal: dynamicWidth(context, 0.04),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          dynamicWidth(context, 0.03),
        ),
        child: Container(
          width: dynamicWidth(context, 0.775),
          height: dynamicHeight(context, 0.14),
          color: myGrey.withOpacity(0.2),
          child: Row(
            children: [
              SizedBox(
                width: dynamicWidth(context, 0.2),
                height: dynamicHeight(context, 0.145),
                child: Image.asset(widget.image),
              ),
              widthBox(context, 0.03),
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightBox(context, 0.008),
                  text(context, widget.name, 0.04, myBlack),
                  heightBox(context, 0.001),
                  text(context, widget.size, 0.03, myPink),
                  Row(
                    children: [
                      text(
                          context,
                          "${widget.price}*${widget.quantity}\n=${(int.parse(widget.price) * int.parse(widget.quantity))}"
                              .toString(),
                          0.035,
                          myBrown),
                      widthBox(context, 0.15),
                      Row(
                        children: [
                          Container(
                            width: dynamicWidth(context, 0.2),
                            height: dynamicHeight(context, 0.033),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    dynamicWidth(context, 0.027),
                                  ),
                                ),
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: _decrementCounter,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.066,
                                    height: MediaQuery.of(context).size.height *
                                        0.033,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          dynamicWidth(context, 0.025),
                                        ),
                                        bottomLeft: Radius.circular(
                                          dynamicWidth(context, 0.025),
                                        ),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Icon(Icons.remove, size: 14),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: dynamicWidth(context, 0.062),
                                  height: dynamicHeight(context, 0.033),
                                  child: Center(
                                    child: text(
                                        context,
                                       " ${int.parse(widget.quantity).toString()}",
                                        0.035,
                                        myBlack),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: _incrementCounter,
                                  child: Container(
                                    width: dynamicWidth(context, 0.066),
                                    height: dynamicHeight(context, 0.033),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.4),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(
                                          dynamicWidth(context, 0.025),
                                        ),
                                        bottomRight: Radius.circular(
                                          dynamicWidth(context, 0.025),
                                        ),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Icon(Icons.add, size: 14),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
