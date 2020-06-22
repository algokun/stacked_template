// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:stacked_template/core/services/register_external_dependencies.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerDependencies = _$RegisterDependencies();
  g.registerLazySingleton<DialogService>(
      () => registerDependencies.dialogService);
  g.registerLazySingleton<NavigationService>(
      () => registerDependencies.navigationService);
  g.registerLazySingleton<SnackbarService>(
      () => registerDependencies.snackbarService);
}

class _$RegisterDependencies extends RegisterDependencies {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  SnackbarService get snackbarService => SnackbarService();
}
