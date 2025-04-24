// import 'dart:math';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:zego_express_engine/zego_express_engine.dart' show ZegoScenario;

// class ZegoConfig {
//   static final ZegoConfig instance = ZegoConfig._internal();
//   ZegoConfig._internal();

//   int appID = 178617029;
//   String appSign = '944be6c5745d223be03f28de8661e0f03c24a5369b03e68a654f162b501228b3';
//   String token = ""; // Используется для Web

//   ZegoScenario scenario = ZegoScenario.Default;
//   bool enablePlatformView = false; 

//   late String userID;
//   late String userName;

//   Future<void> init() async {
//     final prefs = await SharedPreferences.getInstance();
//     userID = prefs.getString('userID') ?? Random().nextInt(100000).toString();
//     userName = "Tester $userID";
    
//     // Сохраняем userID, чтобы он не менялся при каждом запуске
//     await prefs.setString('userID', userID);
//   }

//   String getStreamID() {
//     return "stream_$userID"; // Уникальный Stream ID для каждого пользователя
//   }
// }
