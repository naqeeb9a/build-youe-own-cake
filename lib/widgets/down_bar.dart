import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Widget downBar (context,NextPage) {
  return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children :[
                InkWell(
                  onTap : () {
                    pop(context);
                  },
                  child: Container(
                    width: dynamicWidth(context, 0.3),
                    height:dynamicHeight(context, 0.045),
                    
                    child :Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children :[
                          const Icon(Icons.arrow_back_ios_new_outlined),
                          text(context, "Back", 0.05, myBlack,bold:true)
                        ],
                      )
                     ]
                    )
                  ),
                ),
              InkWell(
                onTap:  () {
                  push(context, NextPage);
                },
                child: Container(
                  width: dynamicWidth(context, 0.3),
                  height: dynamicHeight(context, 0.045),
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          text(context, "Next", 0.05, myBlack, bold: true),
                          const Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      )
                    ])
                ),
              )
              ]
            );
}