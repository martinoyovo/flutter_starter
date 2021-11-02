import 'package:flutter/material.dart';
import 'package:flutter_starter/state/providers/auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final _provider = Get.find<AuthProvider>();

  ///OBSURE TEXT STATE MANAGEMENT
  final _obscure = true.obs;
  bool get obscure => _obscure.value;
  set obscure(bool value) => _obscure(value);

  final _activationCode = 0.obs;
  int get activationCode => _activationCode.value;
  set setCode(int value) => _activationCode(value);

  final _idUser = ''.obs;
  String get idUser => _idUser.value;
  set setUserId(String value) => _idUser(value);

  final List genderList = [
    {
      'name': 'Female',
      'symbol': 'female'
    },
    {
      'name': 'Male',
      'symbol': 'male'
    },
  ];

  final _genderInt = 0.obs;
  int get genderInt => _genderInt.value;
  set setGenderInt(int value) => _genderInt(value);

  final _coverImage = ''.obs;
  String get coverImage => _coverImage.value;
  set setCoverImage(String value) => _coverImage(value);

  final _profileImage = ''.obs;
  String get profileImage => _profileImage.value;
  set setProfileImage(String value) => _profileImage(value);

  final _smsCode = ''.obs;
  String get smsCode => _smsCode.value;
  set setSmsCode(String value) => _smsCode(value);

  final _hasAge = false.obs;
  bool get hasAge => _hasAge.value;
  set setHasAge(bool value) => _hasAge(value);

 /* final _notForAuth = false.obs;
  bool get notForAuth => _notForAuth.value;
  set setForAuth(bool value) => _notForAuth(value);*/


  final TextEditingController lastnameC = TextEditingController();
  final TextEditingController firstnameC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController countryC = TextEditingController();
  final TextEditingController adresseC = TextEditingController();
  final TextEditingController phoneC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  final TextEditingController confirmC = TextEditingController();
  final TextEditingController newPasswordC = TextEditingController();
  final TextEditingController birthdateC = TextEditingController();

  String get lastname => lastnameC.text;
  String get firstname => firstnameC.text;
  String get email => emailC.text;
  String get password => passwordC.text;
  String get new_password => newPasswordC.text;
  String get phone => phoneC.text;
  String get confirm => confirmC.text;
  String get adresse => adresseC.text;
  String get birthdate => birthdateC.text;
  int get code_validation => activationCode;

  FocusNode? codeFieldOne;
  FocusNode? codeFieldTwo;
  FocusNode? codeFieldThree;
  FocusNode? codeFieldFour;
  FocusNode? codeFieldFive;
  FocusNode? codeFieldSix;
  FocusNode? submit;


  Future<void> auth(AuthState authState, bool? notForAuth) async {
    try {
      print(notForAuth);
      await _provider.auth(
        authState,
        notForAuth: notForAuth,
        lastName: lastname,
        firstName: firstname,
        //birthdate: birthdate,
        adresse: adresse,
        gender: genderList[genderInt]['symbol'],
        email: email,
        password: password,
        otpCode: smsCode
      );
    } catch (e) {
      print(e);
    }
  }

}