import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:flutter/material.dart';

import '../utils/config.dart';

Widget inputTextField(context, label, myController,
    {function,
    function2,
    password = false,
    suffixIcon = false,
    icon = "",
    iconColor = ""}) {
  return TextFormField(
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
    style: TextStyle(
      color: myBlack,
      fontSize: dynamicWidth(context, .04),
    ),
    decoration: InputDecoration(
      isDense: true,
      hintText: label,
      hintStyle: const TextStyle(color: myGrey),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: myGrey.withOpacity(.4),
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: myBlack),
      ),
      border: const UnderlineInputBorder(
        borderSide: BorderSide(color: myGrey),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, .05),
      ),
      suffixIcon: suffixIcon == false
          ? const SizedBox()
          : Icon(
              icon,
              size: dynamicWidth(context, .06),
              color: iconColor,
            ),
    ),
  );
}

Widget inputTextField1(context, label, myController,
    {function,
    function2,
    password = false,
    suffixIcon = false,
    icon = "",
    iconColor = ""}) {
  return TextFormField(
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
      isDense: true,
      hintText: label,
      hintStyle: const TextStyle(color: myGrey),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(
          color: myGrey.withOpacity(.4),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(color: myBlack),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(color: myGrey),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, .05),
        vertical: dynamicHeight(context, .01),
      ),
      suffixIcon: suffixIcon == false
          ? const SizedBox()
          : Icon(
              icon,
              size: dynamicWidth(context, .06),
              color: iconColor,
            ),
      suffixIconConstraints: BoxConstraints(
        minWidth: dynamicWidth(context, .1),
        minHeight: dynamicHeight(context, .044),
      ),
    ),
  );
}
