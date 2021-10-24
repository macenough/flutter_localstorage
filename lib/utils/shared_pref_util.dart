import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsUtils {
  static late SharedPreferences? _sharedPrefs;
  static String uname = "uname";
  static String pass = "pass";
  static String isLogin = "isLogin";

  factory SharedPrefsUtils() => SharedPrefsUtils._internal();

  SharedPrefsUtils._internal();

  Future<void> init() async {
    _sharedPrefs = await SharedPreferences?.getInstance();
  }

  String get getUname => _sharedPrefs?.getString(uname) ?? "default";

  void setUname(String value) {
    _sharedPrefs?.setString(uname, value);
  }

  void clearData() {
    _sharedPrefs?.clear();
  }

  Future<void> clearDataUsingKey(String key) async {
    await _sharedPrefs?.remove(key);
  }

  String get getPass => _sharedPrefs?.getString(pass) ?? "";

  void setPass(String value) {
    _sharedPrefs?.setString(pass, value);
  }

  bool get getIsLogin => _sharedPrefs?.getBool(isLogin) ?? false;

  void setIsLogin(bool value) {
    _sharedPrefs?.setBool(isLogin, value);
  }
}
