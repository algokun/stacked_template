import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_template/app/locator.dart';

@lazySingleton
class ThemeService with ReactiveServiceMixin {
  ThemeService() {
    listenToReactiveValues([darkMode]);
  }

  static SharedPreferences _sharedPreferences = locator<SharedPreferences>();

  RxValue<bool> darkMode = RxValue<bool>(initial: getThemeMode());

  bool get isDarkMode => darkMode.value;
  static const String key = "isDarkMode";

  static bool getThemeMode() {
    bool value = _sharedPreferences.getBool(key);

    if (value == null) {
      _sharedPreferences.setBool(key, true).then((value) {
        return value;
      });
      return false;
    }

    return value;
  }

  Future changeTheme() async {
    darkMode.value = !darkMode.value;
    await _sharedPreferences.setBool(key, darkMode.value);
  }
}
