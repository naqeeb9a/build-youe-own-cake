import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Widget itemCard(context,image, name, size, price, counter, increment, decrement) {
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
        width: dynamicWidth(context, 0.65),
        height: dynamicHeight(context, 0.14),
        color: myGrey.withOpacity(0.2),
        child: Row(
          children: [
            SizedBox(
              width: dynamicWidth(context, 0.2),
              height: dynamicHeight(context, 0.145),
              child: Image.asset(
                  image),
            ),
            widthBox(context, 0.03),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(context, 0.008),
                text(context, name, 0.04, myBlack),
                heightBox(context, 0.001),
                text(context, size, 0.03, myPink),
                
                Row(
                  children: [
                    text(context, (int.parse(price)*counter).toString(), 0.035, myBrown),
                    widthBox(context, 0.17),
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
                                onTap: decrement,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.066,
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
                                    child: text(context, counter.toString(),
                                        0.035, myBlack)),
                              ),
                               GestureDetector(
                                onTap: increment,
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
