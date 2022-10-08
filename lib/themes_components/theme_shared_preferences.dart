

import 'package:shared_preferences/shared_preferences.dart';

class ThemeSharedPrefrences{
  static const THEME_PREF_KEY = 'theme_prefrences';

  setTheme(bool value) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(THEME_PREF_KEY, value);
  }

  getTheme() async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    return sharedPreferences.getBool(THEME_PREF_KEY)?? false;
  }
}