import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsUtils {
  static late SharedPreferences _sharedPrefs;
  String keyfname = "selected_fname";
  String keyupdatefname = "update_fname";
  String keylname = "selected_lname";
  String keyupdatelname = "update_lname";
  String keyemail = "selected_email";
  String keyupdateemail = "update_email";
  String keycountrycode = "selected_country_code";
  String keyphoneno = "selected_phoneno";
  String keyflag = "country_flag";
  String keyupdatecountrycode = "update_country_code";
  String keyupdatephoneno = "update_phoneno";
  String keyupdateflag = "update_flag";

  factory SharedPrefsUtils() => SharedPrefsUtils._internal();

  SharedPrefsUtils._internal();

  Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  String get getfname => _sharedPrefs.getString(keyfname) ?? "mansi";

  void setfname(String value) {
    _sharedPrefs.setString(keyfname, value);
  }

  String get updatefname => _sharedPrefs.getString(keyupdatefname) ?? "";

  String get getlname => _sharedPrefs.getString(keylname) ?? "mac";

  void setlname(String value) {
    _sharedPrefs.setString(keylname, value);
  }

  String get updatelname => _sharedPrefs.getString(keyupdatelname) ?? "";

  String get getemail => _sharedPrefs.getString(keyemail) ?? "xyz@gmail.com";

  void setemail(String value) {
    _sharedPrefs.setString(keyemail, value);
  }

  String get updateemail => _sharedPrefs.getString(keyupdateemail) ?? "";

  String get getcountrycode => _sharedPrefs.getString(keycountrycode) ?? "+91";

  setcountrycode(String value) {
    _sharedPrefs.setString(keyemail, value);
  }

  String get updatecontrycode =>
      _sharedPrefs.getString(keyupdatecountrycode) ?? "";

  String get getphoneno => _sharedPrefs.getString(keyphoneno) ?? "1234567890";

  String get updateflag => _sharedPrefs.getString(keyupdateflag) ?? "";
}
