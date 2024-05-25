// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_two_training_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LevelTwoTrainingResponse _$LevelTwoTrainingResponseFromJson(
    Map<String, dynamic> json) {
  return _LevelTwoTrainingResponse.fromJson(json);
}

/// @nodoc
mixin _$LevelTwoTrainingResponse {
  int get level => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  LevelTwoTrainingDetails get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelTwoTrainingResponseCopyWith<LevelTwoTrainingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelTwoTrainingResponseCopyWith<$Res> {
  factory $LevelTwoTrainingResponseCopyWith(LevelTwoTrainingResponse value,
          $Res Function(LevelTwoTrainingResponse) then) =
      _$LevelTwoTrainingResponseCopyWithImpl<$Res, LevelTwoTrainingResponse>;
  @useResult
  $Res call({int level, int id, LevelTwoTrainingDetails details});

  $LevelTwoTrainingDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$LevelTwoTrainingResponseCopyWithImpl<$Res,
        $Val extends LevelTwoTrainingResponse>
    implements $LevelTwoTrainingResponseCopyWith<$Res> {
  _$LevelTwoTrainingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? id = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as LevelTwoTrainingDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelTwoTrainingDetailsCopyWith<$Res> get details {
    return $LevelTwoTrainingDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LevelTwoTrainingResponseImplCopyWith<$Res>
    implements $LevelTwoTrainingResponseCopyWith<$Res> {
  factory _$$LevelTwoTrainingResponseImplCopyWith(
          _$LevelTwoTrainingResponseImpl value,
          $Res Function(_$LevelTwoTrainingResponseImpl) then) =
      __$$LevelTwoTrainingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level, int id, LevelTwoTrainingDetails details});

  @override
  $LevelTwoTrainingDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$LevelTwoTrainingResponseImplCopyWithImpl<$Res>
    extends _$LevelTwoTrainingResponseCopyWithImpl<$Res,
        _$LevelTwoTrainingResponseImpl>
    implements _$$LevelTwoTrainingResponseImplCopyWith<$Res> {
  __$$LevelTwoTrainingResponseImplCopyWithImpl(
      _$LevelTwoTrainingResponseImpl _value,
      $Res Function(_$LevelTwoTrainingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? id = null,
    Object? details = null,
  }) {
    return _then(_$LevelTwoTrainingResponseImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as LevelTwoTrainingDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelTwoTrainingResponseImpl implements _LevelTwoTrainingResponse {
  const _$LevelTwoTrainingResponseImpl(
      {required this.level, required this.id, required this.details});

  factory _$LevelTwoTrainingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelTwoTrainingResponseImplFromJson(json);

  @override
  final int level;
  @override
  final int id;
  @override
  final LevelTwoTrainingDetails details;

  @override
  String toString() {
    return 'LevelTwoTrainingResponse(level: $level, id: $id, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelTwoTrainingResponseImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level, id, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelTwoTrainingResponseImplCopyWith<_$LevelTwoTrainingResponseImpl>
      get copyWith => __$$LevelTwoTrainingResponseImplCopyWithImpl<
          _$LevelTwoTrainingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelTwoTrainingResponseImplToJson(
      this,
    );
  }
}

abstract class _LevelTwoTrainingResponse implements LevelTwoTrainingResponse {
  const factory _LevelTwoTrainingResponse(
          {required final int level,
          required final int id,
          required final LevelTwoTrainingDetails details}) =
      _$LevelTwoTrainingResponseImpl;

  factory _LevelTwoTrainingResponse.fromJson(Map<String, dynamic> json) =
      _$LevelTwoTrainingResponseImpl.fromJson;

  @override
  int get level;
  @override
  int get id;
  @override
  LevelTwoTrainingDetails get details;
  @override
  @JsonKey(ignore: true)
  _$$LevelTwoTrainingResponseImplCopyWith<_$LevelTwoTrainingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LevelTwoTrainingDetails _$LevelTwoTrainingDetailsFromJson(
    Map<String, dynamic> json) {
  return _LevelTwoTrainingDetails.fromJson(json);
}

/// @nodoc
mixin _$LevelTwoTrainingDetails {
  bool get available => throw _privateConstructorUsedError;
  @JsonKey(name: 'shape_name')
  String get shapeName => throw _privateConstructorUsedError;
  String get sentence => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_url')
  String get audioUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelTwoTrainingDetailsCopyWith<LevelTwoTrainingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelTwoTrainingDetailsCopyWith<$Res> {
  factory $LevelTwoTrainingDetailsCopyWith(LevelTwoTrainingDetails value,
          $Res Function(LevelTwoTrainingDetails) then) =
      _$LevelTwoTrainingDetailsCopyWithImpl<$Res, LevelTwoTrainingDetails>;
  @useResult
  $Res call(
      {bool available,
      @JsonKey(name: 'shape_name') String shapeName,
      String sentence,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'audio_url') String audioUrl});
}

/// @nodoc
class _$LevelTwoTrainingDetailsCopyWithImpl<$Res,
        $Val extends LevelTwoTrainingDetails>
    implements $LevelTwoTrainingDetailsCopyWith<$Res> {
  _$LevelTwoTrainingDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? shapeName = null,
    Object? sentence = null,
    Object? imageUrl = null,
    Object? audioUrl = null,
  }) {
    return _then(_value.copyWith(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      shapeName: null == shapeName
          ? _value.shapeName
          : shapeName // ignore: cast_nullable_to_non_nullable
              as String,
      sentence: null == sentence
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelTwoTrainingDetailsImplCopyWith<$Res>
    implements $LevelTwoTrainingDetailsCopyWith<$Res> {
  factory _$$LevelTwoTrainingDetailsImplCopyWith(
          _$LevelTwoTrainingDetailsImpl value,
          $Res Function(_$LevelTwoTrainingDetailsImpl) then) =
      __$$LevelTwoTrainingDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool available,
      @JsonKey(name: 'shape_name') String shapeName,
      String sentence,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'audio_url') String audioUrl});
}

/// @nodoc
class __$$LevelTwoTrainingDetailsImplCopyWithImpl<$Res>
    extends _$LevelTwoTrainingDetailsCopyWithImpl<$Res,
        _$LevelTwoTrainingDetailsImpl>
    implements _$$LevelTwoTrainingDetailsImplCopyWith<$Res> {
  __$$LevelTwoTrainingDetailsImplCopyWithImpl(
      _$LevelTwoTrainingDetailsImpl _value,
      $Res Function(_$LevelTwoTrainingDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? shapeName = null,
    Object? sentence = null,
    Object? imageUrl = null,
    Object? audioUrl = null,
  }) {
    return _then(_$LevelTwoTrainingDetailsImpl(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      shapeName: null == shapeName
          ? _value.shapeName
          : shapeName // ignore: cast_nullable_to_non_nullable
              as String,
      sentence: null == sentence
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelTwoTrainingDetailsImpl implements _LevelTwoTrainingDetails {
  const _$LevelTwoTrainingDetailsImpl(
      {required this.available,
      @JsonKey(name: 'shape_name') required this.shapeName,
      required this.sentence,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'audio_url') required this.audioUrl});

  factory _$LevelTwoTrainingDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelTwoTrainingDetailsImplFromJson(json);

  @override
  final bool available;
  @override
  @JsonKey(name: 'shape_name')
  final String shapeName;
  @override
  final String sentence;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'audio_url')
  final String audioUrl;

  @override
  String toString() {
    return 'LevelTwoTrainingDetails(available: $available, shapeName: $shapeName, sentence: $sentence, imageUrl: $imageUrl, audioUrl: $audioUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelTwoTrainingDetailsImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.shapeName, shapeName) ||
                other.shapeName == shapeName) &&
            (identical(other.sentence, sentence) ||
                other.sentence == sentence) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, available, shapeName, sentence, imageUrl, audioUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelTwoTrainingDetailsImplCopyWith<_$LevelTwoTrainingDetailsImpl>
      get copyWith => __$$LevelTwoTrainingDetailsImplCopyWithImpl<
          _$LevelTwoTrainingDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelTwoTrainingDetailsImplToJson(
      this,
    );
  }
}

abstract class _LevelTwoTrainingDetails implements LevelTwoTrainingDetails {
  const factory _LevelTwoTrainingDetails(
          {required final bool available,
          @JsonKey(name: 'shape_name') required final String shapeName,
          required final String sentence,
          @JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'audio_url') required final String audioUrl}) =
      _$LevelTwoTrainingDetailsImpl;

  factory _LevelTwoTrainingDetails.fromJson(Map<String, dynamic> json) =
      _$LevelTwoTrainingDetailsImpl.fromJson;

  @override
  bool get available;
  @override
  @JsonKey(name: 'shape_name')
  String get shapeName;
  @override
  String get sentence;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'audio_url')
  String get audioUrl;
  @override
  @JsonKey(ignore: true)
  _$$LevelTwoTrainingDetailsImplCopyWith<_$LevelTwoTrainingDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
