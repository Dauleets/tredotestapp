// Хранилище пользователя
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tredo/src/feature/app/model/user/user_dto.dart';

class UserStorage {
  static const String _userKey = 'user_data';

  Future<void> saveUser(UserDTO user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userKey, jsonEncode(user.toJson()));
  }

  Future<UserDTO?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_userKey);

    if (jsonString == null) return null;
    return UserDTO.fromJson(jsonDecode(jsonString));
  }

  Future<void> removeUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userKey);
  }
}