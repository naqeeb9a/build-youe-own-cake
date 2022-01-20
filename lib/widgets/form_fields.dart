import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:flutter/material.dart';

import '../utils/config.dart';

Widget inputTextField(context, label, myController,
    {function, function2, password = false}) {
  return Container(
    color: myWhite,
    child: TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (function == "")
          ? () {
              return null;
            }
          : function,
      controller: myController,
      textInputAction: TextInputAction.next,
      keyboardType: password == true
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      obscureText: password == true ? obscureText : false,
      cursorColor: myBlack,
      cursorWidth: 2.0,
      cursorHeight: dynamicHeight(context, .03),
      style: TextStyle(
        color: myBlack,
        fontSize: dynamicWidth(context, .04),
      ),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: myBlack),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: myBlack),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: myBlack),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: dynamicWidth(context, .05),
        ),
      ),
    ),
  );
}
