import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tredo/src/feature/auth/data/database/user_storage.dart';

part 'app_bloc.freezed.dart';

const _tag = 'AppBloc';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.loadingState()) {
    on<AppEvent>(
      (event, emit) async => event.map(
        checkAuth: (_CheckAuth event) async => _checkAuth(event, emit),
        logining: (_Logining event) async => _login(event, emit),
        exiting: (_Exiting event) async => _exit(event, emit),
      ),
    );
  }

  Future<void> _checkAuth(_CheckAuth event, Emitter<AppState> emit) async {
    emit(const AppState.loadingState());
    log('AppBloc _checkAuth', name: _tag);

    final user = await UserStorage().getUser();
    await Future.delayed(const Duration(milliseconds: 300));

    if (user?.uid != null) {
      emit(const AppState.inAppState());
    } else {
      emit(const AppState.notAuthorizedState());
    }
  }

  Future<void> _login(_Logining event, Emitter<AppState> emit) async {
    emit(const AppState.loadingState());
    log('AppBloc _login', name: _tag);

    await Future.delayed(const Duration(milliseconds: 300));
    emit(const AppState.inAppState());
  }

  Future<void> _exit(_Exiting event, Emitter<AppState> emit) async {
    emit(const AppState.loadingState());
    await UserStorage().removeUser();
    await Future.delayed(const Duration(seconds: 1));
    emit(const AppState.notAuthorizedState());
  }
}

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.checkAuth() = _CheckAuth;
  const factory AppEvent.logining() = _Logining;
  const factory AppEvent.exiting() = _Exiting;
}

@freezed
class AppState with _$AppState {
  const factory AppState.loadingState() = _LoadingState;
  const factory AppState.notAuthorizedState() = _NotAuthorizedState;
  const factory AppState.inAppState() = _InAppState;
}