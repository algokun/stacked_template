import 'package:stacked/stacked.dart';
import 'package:stacked_template/app/locator.dart';
import 'package:stacked_template/core/services/theme_service.dart';

class MainAppViewModel extends ReactiveViewModel {
  final ThemeService _themeService = locator<ThemeService>();

  bool get isDarkMode => _themeService.isDarkMode;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_themeService];
}
