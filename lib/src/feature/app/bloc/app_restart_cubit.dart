
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_restart_cubit.freezed.dart';

class AppRestartCubit extends Cubit<AppRestartState> {
  AppRestartCubit() : super(const AppRestartState.initialState());

  Key _key = UniqueKey();

  Future<void> restartApp() async {
    emit(const AppRestartState.loadingState());

    _key = UniqueKey();

    emit(AppRestartState.loadedState(_key));
  }
}

@freezed
class AppRestartState with _$AppRestartState {
  const factory AppRestartState.initialState() = _InitialPage;

  const factory AppRestartState.loadingState() = _LoadingState;

  const factory AppRestartState.loadedState(Key key) = _LoadedState;

  const factory AppRestartState.errorState({
    required String message,
  }) = _ErrorState;
}
