// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_random_tip_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRandomTipResponse _$GetRandomTipResponseFromJson(Map<String, dynamic> json) {
  return _GetRandomTipResponse.fromJson(json);
}

/// @nodoc
mixin _$GetRandomTipResponse {
  @JsonKey(name: 'what_to_say')
  String get whatToSay => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRandomTipResponseCopyWith<GetRandomTipResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRandomTipResponseCopyWith<$Res> {
  factory $GetRandomTipResponseCopyWith(GetRandomTipResponse value,
          $Res Function(GetRandomTipResponse) then) =
      _$GetRandomTipResponseCopyWithImpl<$Res, GetRandomTipResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'what_to_say') String whatToSay,
      String topic,
      String info});
}

/// @nodoc
class _$GetRandomTipResponseCopyWithImpl<$Res,
        $Val extends GetRandomTipResponse>
    implements $GetRandomTipResponseCopyWith<$Res> {
  _$GetRandomTipResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whatToSay = null,
    Object? topic = null,
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      whatToSay: null == whatToSay
          ? _value.whatToSay
          : whatToSay // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRandomTipResponseImplCopyWith<$Res>
    implements $GetRandomTipResponseCopyWith<$Res> {
  factory _$$GetRandomTipResponseImplCopyWith(_$GetRandomTipResponseImpl value,
          $Res Function(_$GetRandomTipResponseImpl) then) =
      __$$GetRandomTipResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'what_to_say') String whatToSay,
      String topic,
      String info});
}

/// @nodoc
class __$$GetRandomTipResponseImplCopyWithImpl<$Res>
    extends _$GetRandomTipResponseCopyWithImpl<$Res, _$GetRandomTipResponseImpl>
    implements _$$GetRandomTipResponseImplCopyWith<$Res> {
  __$$GetRandomTipResponseImplCopyWithImpl(_$GetRandomTipResponseImpl _value,
      $Res Function(_$GetRandomTipResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whatToSay = null,
    Object? topic = null,
    Object? info = null,
  }) {
    return _then(_$GetRandomTipResponseImpl(
      whatToSay: null == whatToSay
          ? _value.whatToSay
          : whatToSay // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRandomTipResponseImpl implements _GetRandomTipResponse {
  const _$GetRandomTipResponseImpl(
      {@JsonKey(name: 'what_to_say') required this.whatToSay,
      required this.topic,
      required this.info});

  factory _$GetRandomTipResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRandomTipResponseImplFromJson(json);

  @override
  @JsonKey(name: 'what_to_say')
  final String whatToSay;
  @override
  final String topic;
  @override
  final String info;

  @override
  String toString() {
    return 'GetRandomTipResponse(whatToSay: $whatToSay, topic: $topic, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRandomTipResponseImpl &&
            (identical(other.whatToSay, whatToSay) ||
                other.whatToSay == whatToSay) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, whatToSay, topic, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRandomTipResponseImplCopyWith<_$GetRandomTipResponseImpl>
      get copyWith =>
          __$$GetRandomTipResponseImplCopyWithImpl<_$GetRandomTipResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRandomTipResponseImplToJson(
      this,
    );
  }
}

abstract class _GetRandomTipResponse implements GetRandomTipResponse {
  const factory _GetRandomTipResponse(
      {@JsonKey(name: 'what_to_say') required final String whatToSay,
      required final String topic,
      required final String info}) = _$GetRandomTipResponseImpl;

  factory _GetRandomTipResponse.fromJson(Map<String, dynamic> json) =
      _$GetRandomTipResponseImpl.fromJson;

  @override
  @JsonKey(name: 'what_to_say')
  String get whatToSay;
  @override
  String get topic;
  @override
  String get info;
  @override
  @JsonKey(ignore: true)
  _$$GetRandomTipResponseImplCopyWith<_$GetRandomTipResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
