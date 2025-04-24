import 'package:tredo/src/core/gen/l10n/app_localizations.g.dart';
import 'package:tredo/src/core/resources/resources.dart';
import 'package:tredo/src/feature/app/presentation/app_router_builder.dart';
import 'package:tredo/src/feature/app/presentation/theme_scope.dart';
import 'package:tredo/src/feature/app/router/app_router.dart';
import 'package:tredo/src/feature/settings/widget/settings_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppConfiguration extends StatelessWidget {
  const AppConfiguration({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = SettingsScope.themeModeOf(context, listen: true);
    final locale = SettingsScope.localeOf(context, listen: true);

    return AppRouterBuilder(
        createRouter: (context) => AppRouter(),
        builder: (context, parser, delegate) {
          // final videoControllerScope =
          //     Provider.of<VideoControllerScope>(context, listen: true);
          return MaterialApp.router(
            key: navigatorKey,
            routeInformationParser: parser,
            routerDelegate: delegate,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            theme: AppTheme.light,
            darkTheme: AppTheme.light,
            themeMode: themeMode,
            locale: locale,
            builder: (context, child) => ThemeScope(
              child: child!,
            ),
          );
        });
  }
}
