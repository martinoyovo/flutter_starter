
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:flutter_starter/utils/styles.dart';
import 'package:flutter_starter/utils/hex_to_color.dart';

AppBar myAppBar({required String title, String? stringColor, required bool implyLeading, bool? isLight, Callback? callback}) {
  return AppBar(
    centerTitle: true,
    title: Text(title, style: TextStyle(color: isLight == true ? hexToColor(stringColor!) : Styles.bgColor, fontSize: 18, fontWeight: FontWeight.bold),),
    backgroundColor: stringColor == null ? Styles.primaryColor : isLight == true ? Colors.transparent : hexToColor(stringColor),
    elevation: 0,
    leading: implyLeading == true ? Transform.scale(
        scale: 0.7,
        child: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, size: 33, color: isLight == true ? hexToColor(stringColor!) : Styles.bgColor),
          onPressed: () => Get.back(),
        )
    ) : SizedBox(),
  );
}