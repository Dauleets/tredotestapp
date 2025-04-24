// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  SettingsData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({SettingsData data});

  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ) as $Val);
  }

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingsDataCopyWith<$Res> get data {
    return $SettingsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateIdleImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateIdleImplCopyWith(_$SettingsStateIdleImpl value,
          $Res Function(_$SettingsStateIdleImpl) then) =
      __$$SettingsStateIdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsStateIdleImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateIdleImpl>
    implements _$$SettingsStateIdleImplCopyWith<$Res> {
  __$$SettingsStateIdleImplCopyWithImpl(_$SettingsStateIdleImpl _value,
      $Res Function(_$SettingsStateIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsStateIdleImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ));
  }
}

/// @nodoc

class _$SettingsStateIdleImpl implements SettingsStateIdle {
  const _$SettingsStateIdleImpl({required this.data});

  @override
  final SettingsData data;

  @override
  String toString() {
    return 'SettingsState.idle(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateIdleImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateIdleImplCopyWith<_$SettingsStateIdleImpl> get copyWith =>
      __$$SettingsStateIdleImplCopyWithImpl<_$SettingsStateIdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) {
    return idle(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) {
    return idle?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class SettingsStateIdle implements SettingsState {
  const factory SettingsStateIdle({required final SettingsData data}) =
      _$SettingsStateIdleImpl;

  @override
  SettingsData get data;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateIdleImplCopyWith<_$SettingsStateIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsStateLoadingImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateLoadingImplCopyWith(_$SettingsStateLoadingImpl value,
          $Res Function(_$SettingsStateLoadingImpl) then) =
      __$$SettingsStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsStateLoadingImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateLoadingImpl>
    implements _$$SettingsStateLoadingImplCopyWith<$Res> {
  __$$SettingsStateLoadingImplCopyWithImpl(_$SettingsStateLoadingImpl _value,
      $Res Function(_$SettingsStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsStateLoadingImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ));
  }
}

/// @nodoc

class _$SettingsStateLoadingImpl implements SettingsStateLoading {
  const _$SettingsStateLoadingImpl({required this.data});

  @override
  final SettingsData data;

  @override
  String toString() {
    return 'SettingsState.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateLoadingImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateLoadingImplCopyWith<_$SettingsStateLoadingImpl>
      get copyWith =>
          __$$SettingsStateLoadingImplCopyWithImpl<_$SettingsStateLoadingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SettingsStateLoading implements SettingsState {
  const factory SettingsStateLoading({required final SettingsData data}) =
      _$SettingsStateLoadingImpl;

  @override
  SettingsData get data;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateLoadingImplCopyWith<_$SettingsStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsStateUpdatedSuccessfullyImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateUpdatedSuccessfullyImplCopyWith(
          _$SettingsStateUpdatedSuccessfullyImpl value,
          $Res Function(_$SettingsStateUpdatedSuccessfullyImpl) then) =
      __$$SettingsStateUpdatedSuccessfullyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsStateUpdatedSuccessfullyImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res,
        _$SettingsStateUpdatedSuccessfullyImpl>
    implements _$$SettingsStateUpdatedSuccessfullyImplCopyWith<$Res> {
  __$$SettingsStateUpdatedSuccessfullyImplCopyWithImpl(
      _$SettingsStateUpdatedSuccessfullyImpl _value,
      $Res Function(_$SettingsStateUpdatedSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsStateUpdatedSuccessfullyImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ));
  }
}

/// @nodoc

class _$SettingsStateUpdatedSuccessfullyImpl
    implements SettingsStateUpdatedSuccessfully {
  const _$SettingsStateUpdatedSuccessfullyImpl({required this.data});

  @override
  final SettingsData data;

  @override
  String toString() {
    return 'SettingsState.updatedSuccessfully(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateUpdatedSuccessfullyImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateUpdatedSuccessfullyImplCopyWith<
          _$SettingsStateUpdatedSuccessfullyImpl>
      get copyWith => __$$SettingsStateUpdatedSuccessfullyImplCopyWithImpl<
          _$SettingsStateUpdatedSuccessfullyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) {
    return updatedSuccessfully(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) {
    return updatedSuccessfully?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) {
    if (updatedSuccessfully != null) {
      return updatedSuccessfully(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) {
    return updatedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) {
    return updatedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (updatedSuccessfully != null) {
      return updatedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class SettingsStateUpdatedSuccessfully implements SettingsState {
  const factory SettingsStateUpdatedSuccessfully(
          {required final SettingsData data}) =
      _$SettingsStateUpdatedSuccessfullyImpl;

  @override
  SettingsData get data;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateUpdatedSuccessfullyImplCopyWith<
          _$SettingsStateUpdatedSuccessfullyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsStateErrorImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateErrorImplCopyWith(_$SettingsStateErrorImpl value,
          $Res Function(_$SettingsStateErrorImpl) then) =
      __$$SettingsStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data, String description});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsStateErrorImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateErrorImpl>
    implements _$$SettingsStateErrorImplCopyWith<$Res> {
  __$$SettingsStateErrorImplCopyWithImpl(_$SettingsStateErrorImpl _value,
      $Res Function(_$SettingsStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? description = null,
  }) {
    return _then(_$SettingsStateErrorImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingsStateErrorImpl implements SettingsStateError {
  const _$SettingsStateErrorImpl(
      {required this.data, required this.description});

  @override
  final SettingsData data;
  @override
  final String description;

  @override
  String toString() {
    return 'SettingsState.error(data: $data, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateErrorImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, description);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateErrorImplCopyWith<_$SettingsStateErrorImpl> get copyWith =>
      __$$SettingsStateErrorImplCopyWithImpl<_$SettingsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) idle,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) updatedSuccessfully,
    required TResult Function(SettingsData data, String description) error,
  }) {
    return error(data, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? idle,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? updatedSuccessfully,
    TResult? Function(SettingsData data, String description)? error,
  }) {
    return error?.call(data, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? idle,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? updatedSuccessfully,
    TResult Function(SettingsData data, String description)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStateIdle value) idle,
    required TResult Function(SettingsStateLoading value) loading,
    required TResult Function(SettingsStateUpdatedSuccessfully value)
        updatedSuccessfully,
    required TResult Function(SettingsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStateIdle value)? idle,
    TResult? Function(SettingsStateLoading value)? loading,
    TResult? Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult? Function(SettingsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStateIdle value)? idle,
    TResult Function(SettingsStateLoading value)? loading,
    TResult Function(SettingsStateUpdatedSuccessfully value)?
        updatedSuccessfully,
    TResult Function(SettingsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SettingsStateError implements SettingsState {
  const factory SettingsStateError(
      {required final SettingsData data,
      required final String description}) = _$SettingsStateErrorImpl;

  @override
  SettingsData get data;
  String get description;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateErrorImplCopyWith<_$SettingsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) setTheme,
    required TResult Function(AppLanguage locale) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTheme theme)? setTheme,
    TResult? Function(AppLanguage locale)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? setTheme,
    TResult Function(AppLanguage locale)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventSetTheme value) setTheme,
    required TResult Function(_SettingsEventSetLocale value) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventSetTheme value)? setTheme,
    TResult? Function(_SettingsEventSetLocale value)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventSetTheme value)? setTheme,
    TResult Function(_SettingsEventSetLocale value)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingsEventSetThemeImplCopyWith<$Res> {
  factory _$$SettingsEventSetThemeImplCopyWith(
          _$SettingsEventSetThemeImpl value,
          $Res Function(_$SettingsEventSetThemeImpl) then) =
      __$$SettingsEventSetThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppTheme theme});
}

/// @nodoc
class __$$SettingsEventSetThemeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventSetThemeImpl>
    implements _$$SettingsEventSetThemeImplCopyWith<$Res> {
  __$$SettingsEventSetThemeImplCopyWithImpl(_$SettingsEventSetThemeImpl _value,
      $Res Function(_$SettingsEventSetThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$SettingsEventSetThemeImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// @nodoc

class _$SettingsEventSetThemeImpl implements _SettingsEventSetTheme {
  const _$SettingsEventSetThemeImpl({required this.theme});

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'SettingsEvent.setTheme(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventSetThemeImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventSetThemeImplCopyWith<_$SettingsEventSetThemeImpl>
      get copyWith => __$$SettingsEventSetThemeImplCopyWithImpl<
          _$SettingsEventSetThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) setTheme,
    required TResult Function(AppLanguage locale) setLocale,
  }) {
    return setTheme(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTheme theme)? setTheme,
    TResult? Function(AppLanguage locale)? setLocale,
  }) {
    return setTheme?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? setTheme,
    TResult Function(AppLanguage locale)? setLocale,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventSetTheme value) setTheme,
    required TResult Function(_SettingsEventSetLocale value) setLocale,
  }) {
    return setTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventSetTheme value)? setTheme,
    TResult? Function(_SettingsEventSetLocale value)? setLocale,
  }) {
    return setTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventSetTheme value)? setTheme,
    TResult Function(_SettingsEventSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventSetTheme implements SettingsEvent {
  const factory _SettingsEventSetTheme({required final AppTheme theme}) =
      _$SettingsEventSetThemeImpl;

  AppTheme get theme;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsEventSetThemeImplCopyWith<_$SettingsEventSetThemeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEventSetLocaleImplCopyWith<$Res> {
  factory _$$SettingsEventSetLocaleImplCopyWith(
          _$SettingsEventSetLocaleImpl value,
          $Res Function(_$SettingsEventSetLocaleImpl) then) =
      __$$SettingsEventSetLocaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppLanguage locale});
}

/// @nodoc
class __$$SettingsEventSetLocaleImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventSetLocaleImpl>
    implements _$$SettingsEventSetLocaleImplCopyWith<$Res> {
  __$$SettingsEventSetLocaleImplCopyWithImpl(
      _$SettingsEventSetLocaleImpl _value,
      $Res Function(_$SettingsEventSetLocaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$SettingsEventSetLocaleImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
    ));
  }
}

/// @nodoc

class _$SettingsEventSetLocaleImpl implements _SettingsEventSetLocale {
  const _$SettingsEventSetLocaleImpl({required this.locale});

  @override
  final AppLanguage locale;

  @override
  String toString() {
    return 'SettingsEvent.setLocale(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventSetLocaleImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventSetLocaleImplCopyWith<_$SettingsEventSetLocaleImpl>
      get copyWith => __$$SettingsEventSetLocaleImplCopyWithImpl<
          _$SettingsEventSetLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) setTheme,
    required TResult Function(AppLanguage locale) setLocale,
  }) {
    return setLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTheme theme)? setTheme,
    TResult? Function(AppLanguage locale)? setLocale,
  }) {
    return setLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? setTheme,
    TResult Function(AppLanguage locale)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventSetTheme value) setTheme,
    required TResult Function(_SettingsEventSetLocale value) setLocale,
  }) {
    return setLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventSetTheme value)? setTheme,
    TResult? Function(_SettingsEventSetLocale value)? setLocale,
  }) {
    return setLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventSetTheme value)? setTheme,
    TResult Function(_SettingsEventSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventSetLocale implements SettingsEvent {
  const factory _SettingsEventSetLocale({required final AppLanguage locale}) =
      _$SettingsEventSetLocaleImpl;

  AppLanguage get locale;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsEventSetLocaleImplCopyWith<_$SettingsEventSetLocaleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
