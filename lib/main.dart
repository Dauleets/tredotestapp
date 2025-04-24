import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:tredo/firebase_options.dart';
import 'package:tredo/src/feature/app/logic/main_runner.dart';
import 'package:tredo/src/feature/app/dependencies/async_app_dependencies.dart';
import 'package:tredo/src/feature/app/presentation/tredo.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print("Background message handled: ${message.messageId}");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Обязательно до runApp
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await MainRunner.run<AsyncAppDependencies>(
    asyncDependencies: AsyncAppDependencies.obtain,
    appBuilder: (dependencies) => TredoApp(
      sharedPreferences: dependencies.sharedPreferences,
      packageInfo: dependencies.packageInfo,
    ),
  );
}
