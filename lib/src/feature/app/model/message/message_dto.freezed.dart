// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageDTO _$MessageDTOFromJson(Map<String, dynamic> json) {
  return _MessageDTO.fromJson(json);
}

/// @nodoc
mixin _$MessageDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this MessageDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageDTOCopyWith<MessageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDTOCopyWith<$Res> {
  factory $MessageDTOCopyWith(
          MessageDTO value, $Res Function(MessageDTO) then) =
      _$MessageDTOCopyWithImpl<$Res, MessageDTO>;
  @useResult
  $Res call({String? id, String? senderId, String? text, DateTime? timestamp});
}

/// @nodoc
class _$MessageDTOCopyWithImpl<$Res, $Val extends MessageDTO>
    implements $MessageDTOCopyWith<$Res> {
  _$MessageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderId = freezed,
    Object? text = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDTOImplCopyWith<$Res>
    implements $MessageDTOCopyWith<$Res> {
  factory _$$MessageDTOImplCopyWith(
          _$MessageDTOImpl value, $Res Function(_$MessageDTOImpl) then) =
      __$$MessageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? senderId, String? text, DateTime? timestamp});
}

/// @nodoc
class __$$MessageDTOImplCopyWithImpl<$Res>
    extends _$MessageDTOCopyWithImpl<$Res, _$MessageDTOImpl>
    implements _$$MessageDTOImplCopyWith<$Res> {
  __$$MessageDTOImplCopyWithImpl(
      _$MessageDTOImpl _value, $Res Function(_$MessageDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderId = freezed,
    Object? text = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$MessageDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDTOImpl implements _MessageDTO {
  const _$MessageDTOImpl({this.id, this.senderId, this.text, this.timestamp});

  factory _$MessageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDTOImplFromJson(json);

  @override
  final String? id;
  @override
  final String? senderId;
  @override
  final String? text;
  @override
  final DateTime? timestamp;

  @override
  String toString() {
    return 'MessageDTO(id: $id, senderId: $senderId, text: $text, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderId, text, timestamp);

  /// Create a copy of MessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDTOImplCopyWith<_$MessageDTOImpl> get copyWith =>
      __$$MessageDTOImplCopyWithImpl<_$MessageDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDTOImplToJson(
      this,
    );
  }
}

abstract class _MessageDTO implements MessageDTO {
  const factory _MessageDTO(
      {final String? id,
      final String? senderId,
      final String? text,
      final DateTime? timestamp}) = _$MessageDTOImpl;

  factory _MessageDTO.fromJson(Map<String, dynamic> json) =
      _$MessageDTOImpl.fromJson;

  @override
  String? get id;
  @override
  String? get senderId;
  @override
  String? get text;
  @override
  DateTime? get timestamp;

  /// Create a copy of MessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDTOImplCopyWith<_$MessageDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
