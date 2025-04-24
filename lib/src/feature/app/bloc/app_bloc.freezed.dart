// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() logining,
    required TResult Function() exiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function()? logining,
    TResult? Function()? exiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckAuthImplCopyWith<$Res> {
  factory _$$CheckAuthImplCopyWith(
          _$CheckAuthImpl value, $Res Function(_$CheckAuthImpl) then) =
      __$$CheckAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$CheckAuthImpl>
    implements _$$CheckAuthImplCopyWith<$Res> {
  __$$CheckAuthImplCopyWithImpl(
      _$CheckAuthImpl _value, $Res Function(_$CheckAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAuthImpl implements _CheckAuth {
  const _$CheckAuthImpl();

  @override
  String toString() {
    return 'AppEvent.checkAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() logining,
    required TResult Function() exiting,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function()? logining,
    TResult? Function()? exiting,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AppEvent {
  const factory _CheckAuth() = _$CheckAuthImpl;
}

/// @nodoc
abstract class _$$LoginingImplCopyWith<$Res> {
  factory _$$LoginingImplCopyWith(
          _$LoginingImpl value, $Res Function(_$LoginingImpl) then) =
      __$$LoginingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginingImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$LoginingImpl>
    implements _$$LoginingImplCopyWith<$Res> {
  __$$LoginingImplCopyWithImpl(
      _$LoginingImpl _value, $Res Function(_$LoginingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginingImpl implements _Logining {
  const _$LoginingImpl();

  @override
  String toString() {
    return 'AppEvent.logining()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() logining,
    required TResult Function() exiting,
  }) {
    return logining();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function()? logining,
    TResult? Function()? exiting,
  }) {
    return logining?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) {
    if (logining != null) {
      return logining();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) {
    return logining(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
  }) {
    return logining?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) {
    if (logining != null) {
      return logining(this);
    }
    return orElse();
  }
}

abstract class _Logining implements AppEvent {
  const factory _Logining() = _$LoginingImpl;
}

/// @nodoc
abstract class _$$ExitingImplCopyWith<$Res> {
  factory _$$ExitingImplCopyWith(
          _$ExitingImpl value, $Res Function(_$ExitingImpl) then) =
      __$$ExitingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitingImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$ExitingImpl>
    implements _$$ExitingImplCopyWith<$Res> {
  __$$ExitingImplCopyWithImpl(
      _$ExitingImpl _value, $Res Function(_$ExitingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExitingImpl implements _Exiting {
  const _$ExitingImpl();

  @override
  String toString() {
    return 'AppEvent.exiting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() logining,
    required TResult Function() exiting,
  }) {
    return exiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function()? logining,
    TResult? Function()? exiting,
  }) {
    return exiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? logining,
    TResult Function()? exiting,
    required TResult orElse(),
  }) {
    if (exiting != null) {
      return exiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_Logining value) logining,
    required TResult Function(_Exiting value) exiting,
  }) {
    return exiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_Logining value)? logining,
    TResult? Function(_Exiting value)? exiting,
  }) {
    return exiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_Logining value)? logining,
    TResult Function(_Exiting value)? exiting,
    required TResult orElse(),
  }) {
    if (exiting != null) {
      return exiting(this);
    }
    return orElse();
  }
}

abstract class _Exiting implements AppEvent {
  const factory _Exiting() = _$ExitingImpl;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() notAuthorizedState,
    required TResult Function() inAppState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function()? notAuthorizedState,
    TResult? Function()? inAppState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? notAuthorizedState,
    TResult Function()? inAppState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_NotAuthorizedState value) notAuthorizedState,
    required TResult Function(_InAppState value) inAppState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult? Function(_InAppState value)? inAppState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult Function(_InAppState value)? inAppState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AppState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() notAuthorizedState,
    required TResult Function() inAppState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function()? notAuthorizedState,
    TResult? Function()? inAppState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? notAuthorizedState,
    TResult Function()? inAppState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_NotAuthorizedState value) notAuthorizedState,
    required TResult Function(_InAppState value) inAppState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult? Function(_InAppState value)? inAppState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult Function(_InAppState value)? inAppState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AppState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$NotAuthorizedStateImplCopyWith<$Res> {
  factory _$$NotAuthorizedStateImplCopyWith(_$NotAuthorizedStateImpl value,
          $Res Function(_$NotAuthorizedStateImpl) then) =
      __$$NotAuthorizedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthorizedStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$NotAuthorizedStateImpl>
    implements _$$NotAuthorizedStateImplCopyWith<$Res> {
  __$$NotAuthorizedStateImplCopyWithImpl(_$NotAuthorizedStateImpl _value,
      $Res Function(_$NotAuthorizedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotAuthorizedStateImpl implements _NotAuthorizedState {
  const _$NotAuthorizedStateImpl();

  @override
  String toString() {
    return 'AppState.notAuthorizedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAuthorizedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() notAuthorizedState,
    required TResult Function() inAppState,
  }) {
    return notAuthorizedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function()? notAuthorizedState,
    TResult? Function()? inAppState,
  }) {
    return notAuthorizedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? notAuthorizedState,
    TResult Function()? inAppState,
    required TResult orElse(),
  }) {
    if (notAuthorizedState != null) {
      return notAuthorizedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_NotAuthorizedState value) notAuthorizedState,
    required TResult Function(_InAppState value) inAppState,
  }) {
    return notAuthorizedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult? Function(_InAppState value)? inAppState,
  }) {
    return notAuthorizedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult Function(_InAppState value)? inAppState,
    required TResult orElse(),
  }) {
    if (notAuthorizedState != null) {
      return notAuthorizedState(this);
    }
    return orElse();
  }
}

abstract class _NotAuthorizedState implements AppState {
  const factory _NotAuthorizedState() = _$NotAuthorizedStateImpl;
}

/// @nodoc
abstract class _$$InAppStateImplCopyWith<$Res> {
  factory _$$InAppStateImplCopyWith(
          _$InAppStateImpl value, $Res Function(_$InAppStateImpl) then) =
      __$$InAppStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InAppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InAppStateImpl>
    implements _$$InAppStateImplCopyWith<$Res> {
  __$$InAppStateImplCopyWithImpl(
      _$InAppStateImpl _value, $Res Function(_$InAppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InAppStateImpl implements _InAppState {
  const _$InAppStateImpl();

  @override
  String toString() {
    return 'AppState.inAppState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InAppStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function() notAuthorizedState,
    required TResult Function() inAppState,
  }) {
    return inAppState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function()? notAuthorizedState,
    TResult? Function()? inAppState,
  }) {
    return inAppState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function()? notAuthorizedState,
    TResult Function()? inAppState,
    required TResult orElse(),
  }) {
    if (inAppState != null) {
      return inAppState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_NotAuthorizedState value) notAuthorizedState,
    required TResult Function(_InAppState value) inAppState,
  }) {
    return inAppState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult? Function(_InAppState value)? inAppState,
  }) {
    return inAppState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_NotAuthorizedState value)? notAuthorizedState,
    TResult Function(_InAppState value)? inAppState,
    required TResult orElse(),
  }) {
    if (inAppState != null) {
      return inAppState(this);
    }
    return orElse();
  }
}

abstract class _InAppState implements AppState {
  const factory _InAppState() = _$InAppStateImpl;
}
