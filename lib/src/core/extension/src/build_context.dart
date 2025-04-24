import 'package:tredo/src/core/gen/l10n/app_localizations.g.dart';
import 'package:tredo/src/core/model/dependencies_storage.dart';
import 'package:tredo/src/core/model/repository_storage.dart';
import 'package:tredo/src/core/utils/screen_util.dart';
import 'package:tredo/src/core/widget/dependencies_scope.dart';
import 'package:tredo/src/core/widget/repository_scope.dart';
import 'package:dio/dio.dart';
import 'package:tredo/src/feature/app/bloc/app_bloc.dart';
import 'package:tredo/src/feature/app/enum/app_language.dart';
import 'package:tredo/src/feature/settings/widget/settings_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension BuildContextX on BuildContext {
  // IEnvironmentStorage get environment => EnvironmentScope.of(this);
  IDependenciesStorage get dependencies => DependenciesScope.of(this);
  Dio get dio => dependencies.dio;
  // AppDatabase get database => dependencies.database;
  SharedPreferences get sharedPreferences => dependencies.sharedPreferences;
  PackageInfo get packageInfo => dependencies.packageInfo;

  IRepositoryStorage get repository => RepositoryScope.of(this);

  // ignore: avoid-non-null-assertion
  /// Перевести через контекст
  AppLocalizations get localized => AppLocalizations.of(this);

  /// Выбранный язык
  AppLanguage get currentLocale => SettingsScope.appLanguageOf(this);

  /// Поддерживаемые языки
  // List<Locale> get supportedLocales => AppLocalizations.supportedLocales;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => MediaQuery.sizeOf(this);
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;

  AppBloc get appBloc => BlocProvider.of<AppBloc>(this);
  // ProfileBloc get profileBloc => BlocProvider.of<ProfileBloc>(this);
  ScreenSize get deviceSize => ScreenUtil.screenSizeOf(this);
  // ScreenSize get deviceSizeOf => ScreenUtil.screenSizeOf(this);
  Orientation get orientation => ScreenUtil.orientation();
  // Scale height with design size
  double get scaleHeight => mediaQuery.size.height / 844;
  // Scale width with design size
  double get scaleWidth => mediaQuery.size.width / 390;
}

extension OrientationX on Orientation {
  T whenByValue<T extends Object?>({
    required T portrait,
    required T landscape,
  }) {
    switch (this) {
      case Orientation.portrait:
        return portrait;
      case Orientation.landscape:
        return landscape;

      }
  }

  T maybeWhenByValue<T extends Object?>({
    required T orElse,
    T? portrait,
    T? landscape,
  }) =>
      whenByValue<T>(
        portrait: portrait ?? orElse,
        landscape: landscape ?? orElse,
      );
}
