import 'dart:convert';
import 'package:flutter_starter/state/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/local_storage.dart';
import 'package:flutter_starter/utils/strings.dart';
import 'package:flutter_starter/utils/styles.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

final AppController controller = Get.put(AppController());

void showErrorSnackBar(String? e) {
  Get.rawSnackbar(
    snackStyle: SnackStyle.FLOATING,
    backgroundColor: Colors.red,
    snackPosition: SnackPosition.BOTTOM,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    borderRadius: 15,
    messageText: Text(
      e ?? '',
      maxLines: 30,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
      //textAlign: TextAlign.center,
    ),
    isDismissible: true,
    forwardAnimationCurve: Curves.easeInOut,
    barBlur: 20,
    duration: Duration(milliseconds: 1500),
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
  );
}
void showSuccessSnackBar(String? e) {
  Get.rawSnackbar(
    snackStyle: SnackStyle.FLOATING,
    backgroundColor: Colors.green,
    snackPosition: SnackPosition.BOTTOM,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    borderRadius: 15,
    messageText: Text(
      e ?? '',
      maxLines: 30,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
      //textAlign: TextAlign.center,
    ),
    isDismissible: true,
    forwardAnimationCurve: Curves.easeInOut,
    barBlur: 20,
    duration: Duration(milliseconds: 1500),
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
  );
}


Future disconnectDialog(context) {
  return showDialog(
      context: context,
      builder: (c) {
        return Center(
          child: Container(
            height: 190,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Material(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      APPNAME,
                      style: TextStyle(color: Styles.primaryColor, fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      DISCONNECT_STRING,
                      style: TextStyle(color: Colors.black),
                      //textAlign: TextAlign.center,
                    ),
                  ),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextButton(
                            onPressed: () {
                              LocalStorage.cleanPrefDB().then((value) {
                                //Get.to(() => SignIn());
                              });
                            },
                            child: Text(
                              'Yes',
                              style: Styles.textStyle
                                  .copyWith(
                                  color: Colors
                                      .black),
                            )),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextButton(
                            onPressed: () => Get.back(),
                            child: Text(
                              'No',
                              style: Styles.textStyle
                                  .copyWith(
                                  color: Styles.primaryColor),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}


