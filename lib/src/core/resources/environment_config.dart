// import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigService {
  // static final FirebaseRemoteConfig _remoteConfig =
  //     FirebaseRemoteConfig.instance;

  // static Future<void> init() async {
  //   final remoteConfig = FirebaseRemoteConfig.instance;
  //   await remoteConfig.setConfigSettings(RemoteConfigSettings(
  //     fetchTimeout: const Duration(minutes: 1),
  //     minimumFetchInterval: const Duration(minutes: 5),
  //   ));

  //   await remoteConfig.fetch();
  //   await remoteConfig.activate();
  //   await remoteConfig.fetchAndActivate();
  //   remoteConfig.onConfigUpdated.listen((event) async {
  //     await remoteConfig.activate();

  //     // Use the new config values here.
  //   });

  //   print("📡 BASE_URL: ${remoteConfig.getBool('BASE_URL')}");
  //   print("📡 STRIPE_URL: ${remoteConfig.getString('STRIPE_URL')}");
  //   print("📡 PLATFORM_URL: ${remoteConfig.getString('PLATFORM_URL')}");
  // }

  // static String get baseUrl => _remoteConfig.getBool('BASE_URL') ? 'https://behype.club' : 'https://core.stage.behype.club';
  static String get baseUrl => '';

}
