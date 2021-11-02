import 'package:flutter_starter/state/controllers/app_controller.dart';
import 'package:flutter_starter/utils/local_storage.dart';
import 'package:flutter_starter/utils/strings.dart';
import 'package:get/get.dart';

class AppProvider extends GetConnect {
  AppController appController = Get.put(AppController());

  void getUserInfos() {
    LocalStorage.getString(TOKEN).then((value) {
      appController.setToken = value;
    });

    LocalStorage.getString(EMAIL).then((value) {
      appController.setUsername = value;
    });

    LocalStorage.getInt(LASTNAME).then((value) {
      appController.setMemberId = value;
      print(value);
    });

    LocalStorage.getString(FIRSTNAME).then((value) {
      appController.setFirstName = value;
    });

    LocalStorage.getString(LASTNAME).then((value) {
      appController.setLastName = value;
    });

  }
}