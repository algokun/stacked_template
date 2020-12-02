import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_template/app/locator.dart';
import 'package:stacked_template/app/router.gr.dart' as R;
import 'package:stacked_template/app/theme.dart';

import 'main_viewmodel.dart';

class MainApp extends StatelessWidget with GlobalTheme {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainAppViewModel>.reactive(
      builder: (context, model, child) => MaterialApp(
        title: "Stacked Template",
        debugShowCheckedModeBanner: false,
        theme: getAppTheme(context),
        themeMode: model.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        darkTheme: getAppTheme(context, lightThemeEnabled: false),
        onGenerateRoute: R.Router().onGenerateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
        initialRoute: R.Routes.homeView,
      ),
      viewModelBuilder: () => MainAppViewModel(),
    );
  }
}
