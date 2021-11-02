import 'dart:convert';
import 'package:flutter_starter/state/controllers/auth.dart';
import 'package:flutter_starter/state/providers/app_provider.dart';
import 'package:flutter_starter/utils/local_storage.dart';
import 'package:flutter_starter/utils/strings.dart';
import 'package:flutter_starter/widgets/dialogs.dart';
import 'package:get/get.dart';

AppProvider appProvider = Get.put(AppProvider());
enum AuthState { LOGIN, REGISTER, FORGOT_PASSWORD, RESET_PASSWORD, UPDATE_USER , VALIDATION_CODE, PASSWORD_VALIDATION_CODE}

extension ExtendedAuthState on AuthState {
  bool get login => this == AuthState.LOGIN;
  bool get register => this == AuthState.REGISTER;
  bool get forgotpwd => this == AuthState.FORGOT_PASSWORD;
}

class AuthProvider extends GetConnect {
  @override
  void onInit() {
    // httpClient.defaultDecoder = (map) => AuthResponse.fromJson(map);
    // httpClient.baseUrl = BASE_URL;
  }

  Future<String> auth(AuthState authState,
      {String? lastName,
      String? firstName,
      //String? birthdate,
      String? adresse,
      String? gender,
      String? otpCode,
      String? email,
      bool? notForAuth,
      String? password,
      String? country}) async {
    String _return = '';
    switch (authState) {
      case AuthState.LOGIN:
        final _body = {'email': email, 'password': password};
        //Get.to(() => Home());
        //authenticateUser(url: LOGIN_URL, body: _body, authState: authState);
        _return = 'Connexion réussie.';
        break;
      case AuthState.REGISTER:
        final _body = {
          'lastName': lastName,
          'firstName': firstName,
          //'birthdate': birthdate,
          'adresse': adresse,
          'gender': gender,
          'email': email,
          'password': password,
          'country': country,
          'major': 'yes'
        };
        //authenticateUser(url: MEMBER_URL, body: _body, authState: authState);
        _return = 'Inscription réussie.';
        break;

      case AuthState.FORGOT_PASSWORD:
        final _body = {'email': email};
        //authenticateUser(url: FOR//Get_PASSWORD_URL, body: _body, authState: authState, notForAuth: notForAuth);
        break;

      case AuthState.RESET_PASSWORD:
        final _body = {'otpcode': otpCode, 'password': password};
        //authenticateUser(url: NEW_PASSWORD_URL, body: _body, authState: authState, notForAuth: notForAuth);
        break;

      case AuthState.PASSWORD_VALIDATION_CODE:
        final _body = {'otpcode': otpCode};
        //authenticateUser(url: CONFIRM_PASSWORD_CODE_URL, body: _body, authState: authState, notForAuth: notForAuth);
        break;

      case AuthState.VALIDATION_CODE:
        final _body = {'otpcode': otpCode};
        //authenticateUser(url: CONFIRM_CODE_URL, body: _body, authState: authState, notForAuth: notForAuth);
        break;
      default:
    }
    return _return = '';
  }

  Future authenticateUser({required String url, required Map<String, dynamic> body, required AuthState authState, bool? notForAuth}) async {
    print(body);
    /*await http.post(Uri.parse(url), body: jsonEncode(body), headers: headers).then((response) {
      final jsonBody = jsonDecode(response.body);
      if (authState == AuthState.REGISTER) {
        if(response.statusCode == 401) {
          print(response.body);
          showErrorSnackBar('Cette adresse email a été déjà utilisée.');
        }
        else if (response.statusCode == 200 || response.statusCode == 201){
          //Get.to(() => EmailCodeValidation());
        }
        else {
          showErrorSnackBar(ERROR_STRING);
        }
      }
      else if (authState == AuthState.VALIDATION_CODE) {
        //Get.to(() => SignIn());
        showSuccessSnackBar(jsonBody['message']);
      }
      else if(authState == AuthState.LOGIN) {
        if(response.statusCode == 401) {
          ////Get.to(() => EmailCodeValidation());
          showErrorSnackBar(jsonBody['message']);
        }
        if(response.statusCode == 200 || response.statusCode == 201) {
          LocalStorage.setString(TOKEN, jsonBody['token']);
          LocalStorage.setString(REFRESHTOKEN, jsonBody['refresh_token']);
          //Get.to(() => Home());
          showSuccessSnackBar(LOGIN_STRING);
        }
        else {
          showErrorSnackBar(jsonBody['message']);
        }
      }
      else if(authState == AuthState.FORGOT_PASSWORD) {
        print(notForAuth);
        if(response.statusCode == 200) {
          //Get.to(() => PassWordForgotCodeValiation(notForAuth: notForAuth,));
          showSuccessSnackBar(jsonBody['message']);
        }
        else {
          if(jsonBody['message'] == ONGOING_OPERATION_STRING) {
            //Get.to(() => PassWordForgotCodeValiation(notForAuth: notForAuth,));
          }
          showErrorSnackBar(jsonBody['message']);
        }
        //Get.to(() => PassWordForgotCodeValiation());
      }
      else if(authState == AuthState.PASSWORD_VALIDATION_CODE) {
        if(response.statusCode == 200) {
          //Get.to(() => ResetPassword(notForAuth: notForAuth,));
          showSuccessSnackBar(jsonBody['message']);
        }
        else {
          showErrorSnackBar(jsonBody['message']);
        }
      }
      else if(authState == AuthState.RESET_PASSWORD) {
        if(response.statusCode == 200) {
          if(notForAuth == true) {
            Get.back();
            Get.back();
            Get.back();
          }
          else {
            //Get.to(() => SignIn());
          }
        }
        showSuccessSnackBar(jsonBody['message']);
      }
      appProvider.getUserInfos();
    }).catchError((e) {
      print(e);
      showErrorSnackBar(ERROR_STRING);
    });*/
  }
}
