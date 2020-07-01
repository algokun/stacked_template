// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:stacked_template/core/services/register_external_dependencies.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_template/core/services/theme_service.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerDependencies = _$RegisterDependencies();
  g.registerLazySingleton<DialogService>(
      () => registerDependencies.dialogService);
  g.registerLazySingleton<NavigationService>(
      () => registerDependencies.navigationService);
  final sharedPreferences = await registerDependencies.prefs;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<SnackbarService>(
      () => registerDependencies.snackbarService);
  g.registerLazySingleton<ThemeService>(() => ThemeService());
}

class _$RegisterDependencies extends RegisterDependencies {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  SnackbarService get snackbarService => SnackbarService();
}
