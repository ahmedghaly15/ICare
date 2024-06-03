// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_icare_bot_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AskICareBotParams {
  ChatSession get chat => throw _privateConstructorUsedError;
  Content get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AskICareBotParamsCopyWith<AskICareBotParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskICareBotParamsCopyWith<$Res> {
  factory $AskICareBotParamsCopyWith(
          AskICareBotParams value, $Res Function(AskICareBotParams) then) =
      _$AskICareBotParamsCopyWithImpl<$Res, AskICareBotParams>;
  @useResult
  $Res call({ChatSession chat, Content content});
}

/// @nodoc
class _$AskICareBotParamsCopyWithImpl<$Res, $Val extends AskICareBotParams>
    implements $AskICareBotParamsCopyWith<$Res> {
  _$AskICareBotParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatSession,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskICareBotParamsImplCopyWith<$Res>
    implements $AskICareBotParamsCopyWith<$Res> {
  factory _$$AskICareBotParamsImplCopyWith(_$AskICareBotParamsImpl value,
          $Res Function(_$AskICareBotParamsImpl) then) =
      __$$AskICareBotParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatSession chat, Content content});
}

/// @nodoc
class __$$AskICareBotParamsImplCopyWithImpl<$Res>
    extends _$AskICareBotParamsCopyWithImpl<$Res, _$AskICareBotParamsImpl>
    implements _$$AskICareBotParamsImplCopyWith<$Res> {
  __$$AskICareBotParamsImplCopyWithImpl(_$AskICareBotParamsImpl _value,
      $Res Function(_$AskICareBotParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? content = null,
  }) {
    return _then(_$AskICareBotParamsImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatSession,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content,
    ));
  }
}

/// @nodoc

class _$AskICareBotParamsImpl implements _AskICareBotParams {
  const _$AskICareBotParamsImpl({required this.chat, required this.content});

  @override
  final ChatSession chat;
  @override
  final Content content;

  @override
  String toString() {
    return 'AskICareBotParams(chat: $chat, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskICareBotParamsImpl &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskICareBotParamsImplCopyWith<_$AskICareBotParamsImpl> get copyWith =>
      __$$AskICareBotParamsImplCopyWithImpl<_$AskICareBotParamsImpl>(
          this, _$identity);
}

abstract class _AskICareBotParams implements AskICareBotParams {
  const factory _AskICareBotParams(
      {required final ChatSession chat,
      required final Content content}) = _$AskICareBotParamsImpl;

  @override
  ChatSession get chat;
  @override
  Content get content;
  @override
  @JsonKey(ignore: true)
  _$$AskICareBotParamsImplCopyWith<_$AskICareBotParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
