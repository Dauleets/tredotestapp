import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tredo/firebase_options.dart';
import 'package:tredo/src/core/model/dependencies_storage.dart';
import 'package:tredo/src/core/model/repository_storage.dart';
import 'package:tredo/src/core/services/notification_service.dart';
import 'package:tredo/src/core/widget/dependencies_scope.dart';
import 'package:tredo/src/core/widget/repository_scope.dart';
import 'package:tredo/src/feature/app/presentation/app_configuration.dart';
import 'package:tredo/src/feature/app/router/app_router.dart';
import 'package:tredo/src/feature/settings/widget/settings_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../bloc/app_restart_cubit.dart';

class TredoApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;
  final PackageInfo packageInfo;

  const TredoApp({
    super.key,
    required this.sharedPreferences,
    required this.packageInfo,
  });

  @override
  Widget build(BuildContext context) => DependenciesScope(
        create: (context) => DependenciesStorage(
          // databaseName: 'digital_bridge_db',
          sharedPreferences: sharedPreferences,
          packageInfo: packageInfo,
        ),
        child: RepositoryScope(
          create: (context) => RepositoryStorage(
            // appDatabase: DependenciesScope.of(context).database,
            sharedPreferences: sharedPreferences,
            networkExecuter: DependenciesScope.of(context).networkExecuter,
          ),
          child: BlocProvider(
            create: (context) => AppRestartCubit(),
            child: const _App(),
          ),
        ),
      );
}

class _App extends StatefulWidget {
  const _App();

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  @override
  void initState() {
    NotificationService().init(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppRestartCubit, AppRestartState>(
      builder: (context, state) => state.maybeWhen(
        loadedState: (key) => KeyedSubtree(
            key: key,
            child: const SettingsScope(
              child: AppConfiguration(),
            )),
        orElse: () => const SettingsScope(
          child: AppConfiguration(),
        ),
      ),
      listener: (context, state) {},
    );
  }
}
