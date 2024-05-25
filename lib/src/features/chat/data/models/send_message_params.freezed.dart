// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendMessageParams _$SendMessageParamsFromJson(Map<String, dynamic> json) {
  return _SendMessageParams.fromJson(json);
}

/// @nodoc
mixin _$SendMessageParams {
  String? get time => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get messageText => throw _privateConstructorUsedError;
  String? get messageImage => throw _privateConstructorUsedError;
  ICareUser? get receiver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageParamsCopyWith<SendMessageParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageParamsCopyWith<$Res> {
  factory $SendMessageParamsCopyWith(
          SendMessageParams value, $Res Function(SendMessageParams) then) =
      _$SendMessageParamsCopyWithImpl<$Res, SendMessageParams>;
  @useResult
  $Res call(
      {String? time,
      String? date,
      String? messageText,
      String? messageImage,
      ICareUser? receiver});

  $ICareUserCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$SendMessageParamsCopyWithImpl<$Res, $Val extends SendMessageParams>
    implements $SendMessageParamsCopyWith<$Res> {
  _$SendMessageParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? date = freezed,
    Object? messageText = freezed,
    Object? messageImage = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      messageText: freezed == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      messageImage: freezed == messageImage
          ? _value.messageImage
          : messageImage // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as ICareUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ICareUserCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $ICareUserCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendMessageParamsImplCopyWith<$Res>
    implements $SendMessageParamsCopyWith<$Res> {
  factory _$$SendMessageParamsImplCopyWith(_$SendMessageParamsImpl value,
          $Res Function(_$SendMessageParamsImpl) then) =
      __$$SendMessageParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      String? date,
      String? messageText,
      String? messageImage,
      ICareUser? receiver});

  @override
  $ICareUserCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$$SendMessageParamsImplCopyWithImpl<$Res>
    extends _$SendMessageParamsCopyWithImpl<$Res, _$SendMessageParamsImpl>
    implements _$$SendMessageParamsImplCopyWith<$Res> {
  __$$SendMessageParamsImplCopyWithImpl(_$SendMessageParamsImpl _value,
      $Res Function(_$SendMessageParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? date = freezed,
    Object? messageText = freezed,
    Object? messageImage = freezed,
    Object? receiver = freezed,
  }) {
    return _then(_$SendMessageParamsImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      messageText: freezed == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      messageImage: freezed == messageImage
          ? _value.messageImage
          : messageImage // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as ICareUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendMessageParamsImpl implements _SendMessageParams {
  const _$SendMessageParamsImpl(
      {this.time,
      this.date,
      this.messageText,
      this.messageImage,
      this.receiver});

  factory _$SendMessageParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageParamsImplFromJson(json);

  @override
  final String? time;
  @override
  final String? date;
  @override
  final String? messageText;
  @override
  final String? messageImage;
  @override
  final ICareUser? receiver;

  @override
  String toString() {
    return 'SendMessageParams(time: $time, date: $date, messageText: $messageText, messageImage: $messageImage, receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageParamsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.messageImage, messageImage) ||
                other.messageImage == messageImage) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, date, messageText, messageImage, receiver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageParamsImplCopyWith<_$SendMessageParamsImpl> get copyWith =>
      __$$SendMessageParamsImplCopyWithImpl<_$SendMessageParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageParamsImplToJson(
      this,
    );
  }
}

abstract class _SendMessageParams implements SendMessageParams {
  const factory _SendMessageParams(
      {final String? time,
      final String? date,
      final String? messageText,
      final String? messageImage,
      final ICareUser? receiver}) = _$SendMessageParamsImpl;

  factory _SendMessageParams.fromJson(Map<String, dynamic> json) =
      _$SendMessageParamsImpl.fromJson;

  @override
  String? get time;
  @override
  String? get date;
  @override
  String? get messageText;
  @override
  String? get messageImage;
  @override
  ICareUser? get receiver;
  @override
  @JsonKey(ignore: true)
  _$$SendMessageParamsImplCopyWith<_$SendMessageParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
