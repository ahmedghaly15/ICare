// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_icare_bot_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookmarkICareBotMessageResponse _$BookmarkICareBotMessageResponseFromJson(
    Map<String, dynamic> json) {
  return _BookmarkICareBotMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$BookmarkICareBotMessageResponse {
  @JsonKey(name: 'chat_response_id')
  String get chatResponseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_response')
  String get chatResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkICareBotMessageResponseCopyWith<BookmarkICareBotMessageResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkICareBotMessageResponseCopyWith<$Res> {
  factory $BookmarkICareBotMessageResponseCopyWith(
          BookmarkICareBotMessageResponse value,
          $Res Function(BookmarkICareBotMessageResponse) then) =
      _$BookmarkICareBotMessageResponseCopyWithImpl<$Res,
          BookmarkICareBotMessageResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_response_id') String chatResponseId,
      @JsonKey(name: 'chat_response') String chatResponse});
}

/// @nodoc
class _$BookmarkICareBotMessageResponseCopyWithImpl<$Res,
        $Val extends BookmarkICareBotMessageResponse>
    implements $BookmarkICareBotMessageResponseCopyWith<$Res> {
  _$BookmarkICareBotMessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatResponseId = null,
    Object? chatResponse = null,
  }) {
    return _then(_value.copyWith(
      chatResponseId: null == chatResponseId
          ? _value.chatResponseId
          : chatResponseId // ignore: cast_nullable_to_non_nullable
              as String,
      chatResponse: null == chatResponse
          ? _value.chatResponse
          : chatResponse // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkICareBotMessageResponseImplCopyWith<$Res>
    implements $BookmarkICareBotMessageResponseCopyWith<$Res> {
  factory _$$BookmarkICareBotMessageResponseImplCopyWith(
          _$BookmarkICareBotMessageResponseImpl value,
          $Res Function(_$BookmarkICareBotMessageResponseImpl) then) =
      __$$BookmarkICareBotMessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_response_id') String chatResponseId,
      @JsonKey(name: 'chat_response') String chatResponse});
}

/// @nodoc
class __$$BookmarkICareBotMessageResponseImplCopyWithImpl<$Res>
    extends _$BookmarkICareBotMessageResponseCopyWithImpl<$Res,
        _$BookmarkICareBotMessageResponseImpl>
    implements _$$BookmarkICareBotMessageResponseImplCopyWith<$Res> {
  __$$BookmarkICareBotMessageResponseImplCopyWithImpl(
      _$BookmarkICareBotMessageResponseImpl _value,
      $Res Function(_$BookmarkICareBotMessageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatResponseId = null,
    Object? chatResponse = null,
  }) {
    return _then(_$BookmarkICareBotMessageResponseImpl(
      chatResponseId: null == chatResponseId
          ? _value.chatResponseId
          : chatResponseId // ignore: cast_nullable_to_non_nullable
              as String,
      chatResponse: null == chatResponse
          ? _value.chatResponse
          : chatResponse // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkICareBotMessageResponseImpl
    implements _BookmarkICareBotMessageResponse {
  const _$BookmarkICareBotMessageResponseImpl(
      {@JsonKey(name: 'chat_response_id') required this.chatResponseId,
      @JsonKey(name: 'chat_response') required this.chatResponse});

  factory _$BookmarkICareBotMessageResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BookmarkICareBotMessageResponseImplFromJson(json);

  @override
  @JsonKey(name: 'chat_response_id')
  final String chatResponseId;
  @override
  @JsonKey(name: 'chat_response')
  final String chatResponse;

  @override
  String toString() {
    return 'BookmarkICareBotMessageResponse(chatResponseId: $chatResponseId, chatResponse: $chatResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkICareBotMessageResponseImpl &&
            (identical(other.chatResponseId, chatResponseId) ||
                other.chatResponseId == chatResponseId) &&
            (identical(other.chatResponse, chatResponse) ||
                other.chatResponse == chatResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatResponseId, chatResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkICareBotMessageResponseImplCopyWith<
          _$BookmarkICareBotMessageResponseImpl>
      get copyWith => __$$BookmarkICareBotMessageResponseImplCopyWithImpl<
          _$BookmarkICareBotMessageResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkICareBotMessageResponseImplToJson(
      this,
    );
  }
}

abstract class _BookmarkICareBotMessageResponse
    implements BookmarkICareBotMessageResponse {
  const factory _BookmarkICareBotMessageResponse(
      {@JsonKey(name: 'chat_response_id') required final String chatResponseId,
      @JsonKey(name: 'chat_response')
      required final String
          chatResponse}) = _$BookmarkICareBotMessageResponseImpl;

  factory _BookmarkICareBotMessageResponse.fromJson(Map<String, dynamic> json) =
      _$BookmarkICareBotMessageResponseImpl.fromJson;

  @override
  @JsonKey(name: 'chat_response_id')
  String get chatResponseId;
  @override
  @JsonKey(name: 'chat_response')
  String get chatResponse;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkICareBotMessageResponseImplCopyWith<
          _$BookmarkICareBotMessageResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
