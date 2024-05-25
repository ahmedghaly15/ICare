// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speech_therapy_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpeechTherapyLevel _$SpeechTherapyLevelFromJson(Map<String, dynamic> json) {
  return __SpeechTherapyLevel.fromJson(json);
}

/// @nodoc
mixin _$SpeechTherapyLevel {
  String get level => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeechTherapyLevelCopyWith<SpeechTherapyLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechTherapyLevelCopyWith<$Res> {
  factory $SpeechTherapyLevelCopyWith(
          SpeechTherapyLevel value, $Res Function(SpeechTherapyLevel) then) =
      _$SpeechTherapyLevelCopyWithImpl<$Res, SpeechTherapyLevel>;
  @useResult
  $Res call(
      {String level,
      String description,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$SpeechTherapyLevelCopyWithImpl<$Res, $Val extends SpeechTherapyLevel>
    implements $SpeechTherapyLevelCopyWith<$Res> {
  _$SpeechTherapyLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? description = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpeechTherapyLevelImplCopyWith<$Res>
    implements $SpeechTherapyLevelCopyWith<$Res> {
  factory _$$_SpeechTherapyLevelImplCopyWith(_$_SpeechTherapyLevelImpl value,
          $Res Function(_$_SpeechTherapyLevelImpl) then) =
      __$$_SpeechTherapyLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String level,
      String description,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$_SpeechTherapyLevelImplCopyWithImpl<$Res>
    extends _$SpeechTherapyLevelCopyWithImpl<$Res, _$_SpeechTherapyLevelImpl>
    implements _$$_SpeechTherapyLevelImplCopyWith<$Res> {
  __$$_SpeechTherapyLevelImplCopyWithImpl(_$_SpeechTherapyLevelImpl _value,
      $Res Function(_$_SpeechTherapyLevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? description = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_SpeechTherapyLevelImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpeechTherapyLevelImpl implements __SpeechTherapyLevel {
  const _$_SpeechTherapyLevelImpl(
      {required this.level,
      required this.description,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$_SpeechTherapyLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$_SpeechTherapyLevelImplFromJson(json);

  @override
  final String level;
  @override
  final String description;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'SpeechTherapyLevel(level: $level, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeechTherapyLevelImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level, description, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpeechTherapyLevelImplCopyWith<_$_SpeechTherapyLevelImpl> get copyWith =>
      __$$_SpeechTherapyLevelImplCopyWithImpl<_$_SpeechTherapyLevelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeechTherapyLevelImplToJson(
      this,
    );
  }
}

abstract class __SpeechTherapyLevel implements SpeechTherapyLevel {
  const factory __SpeechTherapyLevel(
          {required final String level,
          required final String description,
          @JsonKey(name: 'image_url') required final String imageUrl}) =
      _$_SpeechTherapyLevelImpl;

  factory __SpeechTherapyLevel.fromJson(Map<String, dynamic> json) =
      _$_SpeechTherapyLevelImpl.fromJson;

  @override
  String get level;
  @override
  String get description;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SpeechTherapyLevelImplCopyWith<_$_SpeechTherapyLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
