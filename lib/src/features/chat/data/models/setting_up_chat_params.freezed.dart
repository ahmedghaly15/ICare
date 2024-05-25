// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_up_chat_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingUpChatParams {
  String get receiverId => throw _privateConstructorUsedError;
  MessageModel get messageModel => throw _privateConstructorUsedError;
  ICareUser? get receiver => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingUpChatParamsCopyWith<SettingUpChatParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingUpChatParamsCopyWith<$Res> {
  factory $SettingUpChatParamsCopyWith(
          SettingUpChatParams value, $Res Function(SettingUpChatParams) then) =
      _$SettingUpChatParamsCopyWithImpl<$Res, SettingUpChatParams>;
  @useResult
  $Res call(
      {String receiverId, MessageModel messageModel, ICareUser? receiver});

  $MessageModelCopyWith<$Res> get messageModel;
  $ICareUserCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$SettingUpChatParamsCopyWithImpl<$Res, $Val extends SettingUpChatParams>
    implements $SettingUpChatParamsCopyWith<$Res> {
  _$SettingUpChatParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? messageModel = null,
    Object? receiver = freezed,
  }) {
    return _then(_value.copyWith(
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      messageModel: null == messageModel
          ? _value.messageModel
          : messageModel // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as ICareUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res> get messageModel {
    return $MessageModelCopyWith<$Res>(_value.messageModel, (value) {
      return _then(_value.copyWith(messageModel: value) as $Val);
    });
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
abstract class _$$SettingUpChatParamsImplCopyWith<$Res>
    implements $SettingUpChatParamsCopyWith<$Res> {
  factory _$$SettingUpChatParamsImplCopyWith(_$SettingUpChatParamsImpl value,
          $Res Function(_$SettingUpChatParamsImpl) then) =
      __$$SettingUpChatParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String receiverId, MessageModel messageModel, ICareUser? receiver});

  @override
  $MessageModelCopyWith<$Res> get messageModel;
  @override
  $ICareUserCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$$SettingUpChatParamsImplCopyWithImpl<$Res>
    extends _$SettingUpChatParamsCopyWithImpl<$Res, _$SettingUpChatParamsImpl>
    implements _$$SettingUpChatParamsImplCopyWith<$Res> {
  __$$SettingUpChatParamsImplCopyWithImpl(_$SettingUpChatParamsImpl _value,
      $Res Function(_$SettingUpChatParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? messageModel = null,
    Object? receiver = freezed,
  }) {
    return _then(_$SettingUpChatParamsImpl(
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      messageModel: null == messageModel
          ? _value.messageModel
          : messageModel // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as ICareUser?,
    ));
  }
}

/// @nodoc

class _$SettingUpChatParamsImpl implements _SettingUpChatParams {
  const _$SettingUpChatParamsImpl(
      {required this.receiverId, required this.messageModel, this.receiver});

  @override
  final String receiverId;
  @override
  final MessageModel messageModel;
  @override
  final ICareUser? receiver;

  @override
  String toString() {
    return 'SettingUpChatParams(receiverId: $receiverId, messageModel: $messageModel, receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingUpChatParamsImpl &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.messageModel, messageModel) ||
                other.messageModel == messageModel) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, receiverId, messageModel, receiver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingUpChatParamsImplCopyWith<_$SettingUpChatParamsImpl> get copyWith =>
      __$$SettingUpChatParamsImplCopyWithImpl<_$SettingUpChatParamsImpl>(
          this, _$identity);
}

abstract class _SettingUpChatParams implements SettingUpChatParams {
  const factory _SettingUpChatParams(
      {required final String receiverId,
      required final MessageModel messageModel,
      final ICareUser? receiver}) = _$SettingUpChatParamsImpl;

  @override
  String get receiverId;
  @override
  MessageModel get messageModel;
  @override
  ICareUser? get receiver;
  @override
  @JsonKey(ignore: true)
  _$$SettingUpChatParamsImplCopyWith<_$SettingUpChatParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
