import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/login_post_data_model.dart';
import '../components/utils/api_urls.dart';

const String tokenKey = "token";

late SharedPreferences sharedPrefsInstance;

class AuthApiHelper {
  LoginPostDataModel? loginPostDataModel;

  static String getAccessTokenFromSP() {
    return sharedPrefsInstance.getString(tokenKey) ?? '';
  }

  static void resetTokens() {
    sharedPrefsInstance.setString(tokenKey, '');
  }

  Future<bool> loginPostResponse({
    required String email,
    required String userPassword,
  }) async {
    try {
      var url = Uri.parse(ApiUrl.loginPostUrl);
      var response = await http.post(
        url,
        body: {
          "email": email,
          "password": userPassword,
        },
      );

      if (response.statusCode == 200) {
        var responseData = jsonDecode(utf8.decode(response.bodyBytes));
        loginPostDataModel = LoginPostDataModel.fromJson(responseData);
        if (loginPostDataModel?.token != null &&
            loginPostDataModel!.token!.isNotEmpty) {
          sharedPrefsInstance.setString(tokenKey, loginPostDataModel!.token!);
        }
        return true;
      } else {
        return false;
      }
    } catch (error) {
      throw 'loginPostResponse error: $error';
    }
  }

  Future<bool> logOutPostResponse() async {
    try {
      String? tempAccessToken = getAccessTokenFromSP();
      var url = Uri.parse(ApiUrl.logOutPostUrl);
      var response = await http.post(
        url,
        headers: {"Authorization": "Bearer $tempAccessToken"},
      );

      if (response.statusCode == 200) {
        resetTokens();
        return true;
      } else {
        return false;
      }
    } catch (error) {
      throw '$error';
    }
  }
}
