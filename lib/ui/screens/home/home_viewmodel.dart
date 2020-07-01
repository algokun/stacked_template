import 'package:stacked/stacked.dart';
import 'package:stacked_template/app/locator.dart';
import 'package:stacked_template/core/services/theme_service.dart';

class HomeViewModel extends ReactiveViewModel {
  final ThemeService _themeService = locator<ThemeService>();

  int _index = 0;
  int get index => _index;

  void changeTab(int index) {
    _index = index;
    notifyListeners();
  }

  bool get isDarkMode => _themeService.isDarkMode;

  changeTheme() async {
    await _themeService.changeTheme();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_themeService];
}
