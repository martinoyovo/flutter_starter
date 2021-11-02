import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

class AppController extends GetxController {
  final _currentPageIndex = 0.obs;
  int get currentPageIndex => _currentPageIndex.value;
  set setCurrentPageIndex(int value) => _currentPageIndex(value);

  final _token = ''.obs;
  String get token => _token.value;
  set setToken(String value) => _token(value);

  final _refreshToken = ''.obs;
  String get refreshToken => _refreshToken.value;
  set setRefreshToken(String value) => _refreshToken(value);

  final _username = ''.obs;
  String get email => _username.value;
  set setUsername(String value) => _username(value);

  final _memberId = 0.obs;
  int get memberId => _memberId.value;
  set setMemberId(int value) => _memberId(value);

  final _firstname = ''.obs;
  String get firstname => _firstname.value;
  set setFirstName(String value) => _firstname(value);

  final _lastname = ''.obs;
  String get lastname => _lastname.value;
  set setLastName(String value) => _lastname(value);

  final _address = ''.obs;
  String get address => _address.value;
  set setAddress(String value) => _address(value);

/*  final _country = ''.obs;
  String get country => _country.value;
  set setCountry(String value) => _country(value);*/

  final _roles = ''.obs;
  String get roles => _roles.value;
  set setRoles(String value) => _roles(value);

  TextEditingController amountController = TextEditingController();

  getHeader() {
    return {
      HttpHeaders.acceptHeader : 'application/json',
      HttpHeaders.contentTypeHeader : 'application/json',
      HttpHeaders.authorizationHeader : 'bearer $token'
    };
  }
  /*Future<dynamic> deleteRequest({required String url}) async {
    http.Response res = await http.delete(
        Uri.parse(url),
        headers: getHeader()
    );
    return res.body;
  }
  Future<dynamic> getRequest({required String url}) async {
    http.Response res = await http.get(
        Uri.parse(url),
        headers: getHeader()
    );
    return res.body;
  }
  Future<dynamic> postRequest({required String url, required Map<String, dynamic> body}) async {
    http.Response res = await http.post(
        Uri.parse(url),
        headers: getHeader(),
        body: jsonEncode(body)
    );
    return res.body;
  }
  Future<dynamic> editProfile({required String url, required Map<String, dynamic> body}) async {
    print(body);
    http.Response res = await http.patch(
        Uri.parse(url),
        headers: {
          HttpHeaders.contentTypeHeader : 'application/merge-patch+json',
          HttpHeaders.authorizationHeader : 'bearer $token',
        },
        body: jsonEncode(body)
    );
    //print(res.body);
    return res.body;
  }*/
}