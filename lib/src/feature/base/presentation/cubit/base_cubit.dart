import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tredo/src/feature/app/model/user/user_dto.dart';

part 'base_state.dart';

class BaseCubit extends Cubit<BaseState> {
  BaseCubit() : super(UserListInitial());

  Future<void> fetchAllUsers() async {
    try {
      emit(UserListLoading());

      final snapshot =
          await FirebaseFirestore.instance.collection('users').get();

      final users = snapshot.docs.map((doc) {
        final data = doc.data();
        return UserDTO(
          uid: data['uid'],
          name: data['name'] ?? '',
          email: data['email'] ?? '',
        );
      }).toList();

      for (final user in users) {
        log('User: ${user.uid}, name: ${user.name}');
      }
        


      emit(UserListLoaded(users));
    } catch (e) {
      emit(UserListError("Ошибка загрузки пользователей: $e"));
    }
  }
}
