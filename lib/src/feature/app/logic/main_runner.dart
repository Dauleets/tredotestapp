import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tredo/firebase_options.dart';
import 'package:tredo/src/core/widget/bloc_observer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

typedef AsyncDependencies<D> = Future<D> Function();

typedef AppBuilder<D> = Widget Function(D dependencies);

mixin MainRunner {
  static Future<Widget> _initApp<D>(
    AsyncDependencies<D> asyncDependencies,
    AppBuilder<D> app,
  ) async {
    final dependencies = await asyncDependencies();

    return app(dependencies);
  }

  static Future<void> run<D>({
    required AsyncDependencies<D> asyncDependencies,
    required AppBuilder<D> appBuilder,
  }) async {
    ///
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, 
    );

    final app = await _initApp(asyncDependencies, appBuilder);

    Bloc.observer = AppBlocObserver();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    Bloc.transformer = bloc_concurrency.sequential<Object?>();

    _requestPermissions();

    runApp(app);
  }
  
  static Future<void> _requestPermissions() async {
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    if (Platform.isIOS) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    } else if (Platform.isAndroid) {
      flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();
    }
  }
}
