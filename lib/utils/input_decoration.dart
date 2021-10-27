import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/size_config.dart';
import 'package:flutter_starter/utils/styles.dart';

inputDecoration({String? text, IconData? prefixIcon, Widget? suffixIcon}) {
  return InputDecoration(
      hintText: text,
      hintStyle: Styles.textStyle,
      focusColor: Styles.primaryColor,
      hoverColor: Styles.primaryColor,
      prefixIcon: prefixIcon == null ? null : Icon(prefixIcon, color: Styles.primaryColor,),
      suffixIcon: suffixIcon,
      contentPadding: EdgeInsets.only(top: getProportionateScreenHeight(15), left: prefixIcon == null ? getProportionateScreenWidth(15) : 0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
  );
}