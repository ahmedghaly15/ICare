// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_one_training_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LevelOneTrainingResponse _$LevelOneTrainingResponseFromJson(
    Map<String, dynamic> json) {
  return _LevelOneTrainingResponse.fromJson(json);
}

/// @nodoc
mixin _$LevelOneTrainingResponse {
  int get id => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  LevelOneTrainingDetails get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelOneTrainingResponseCopyWith<LevelOneTrainingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelOneTrainingResponseCopyWith<$Res> {
  factory $LevelOneTrainingResponseCopyWith(LevelOneTrainingResponse value,
          $Res Function(LevelOneTrainingResponse) then) =
      _$LevelOneTrainingResponseCopyWithImpl<$Res, LevelOneTrainingResponse>;
  @useResult
  $Res call({int id, int level, LevelOneTrainingDetails details});

  $LevelOneTrainingDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$LevelOneTrainingResponseCopyWithImpl<$Res,
        $Val extends LevelOneTrainingResponse>
    implements $LevelOneTrainingResponseCopyWith<$Res> {
  _$LevelOneTrainingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as LevelOneTrainingDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelOneTrainingDetailsCopyWith<$Res> get details {
    return $LevelOneTrainingDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LevelOneTrainingResponseImplCopyWith<$Res>
    implements $LevelOneTrainingResponseCopyWith<$Res> {
  factory _$$LevelOneTrainingResponseImplCopyWith(
          _$LevelOneTrainingResponseImpl value,
          $Res Function(_$LevelOneTrainingResponseImpl) then) =
      __$$LevelOneTrainingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int level, LevelOneTrainingDetails details});

  @override
  $LevelOneTrainingDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$LevelOneTrainingResponseImplCopyWithImpl<$Res>
    extends _$LevelOneTrainingResponseCopyWithImpl<$Res,
        _$LevelOneTrainingResponseImpl>
    implements _$$LevelOneTrainingResponseImplCopyWith<$Res> {
  __$$LevelOneTrainingResponseImplCopyWithImpl(
      _$LevelOneTrainingResponseImpl _value,
      $Res Function(_$LevelOneTrainingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? details = null,
  }) {
    return _then(_$LevelOneTrainingResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as LevelOneTrainingDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelOneTrainingResponseImpl implements _LevelOneTrainingResponse {
  const _$LevelOneTrainingResponseImpl(
      {required this.id, required this.level, required this.details});

  factory _$LevelOneTrainingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelOneTrainingResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int level;
  @override
  final LevelOneTrainingDetails details;

  @override
  String toString() {
    return 'LevelOneTrainingResponse(id: $id, level: $level, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelOneTrainingResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, level, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelOneTrainingResponseImplCopyWith<_$LevelOneTrainingResponseImpl>
      get copyWith => __$$LevelOneTrainingResponseImplCopyWithImpl<
          _$LevelOneTrainingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelOneTrainingResponseImplToJson(
      this,
    );
  }
}

abstract class _LevelOneTrainingResponse implements LevelOneTrainingResponse {
  const factory _LevelOneTrainingResponse(
          {required final int id,
          required final int level,
          required final LevelOneTrainingDetails details}) =
      _$LevelOneTrainingResponseImpl;

  factory _LevelOneTrainingResponse.fromJson(Map<String, dynamic> json) =
      _$LevelOneTrainingResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get level;
  @override
  LevelOneTrainingDetails get details;
  @override
  @JsonKey(ignore: true)
  _$$LevelOneTrainingResponseImplCopyWith<_$LevelOneTrainingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LevelOneTrainingDetails _$LevelOneTrainingDetailsFromJson(
    Map<String, dynamic> json) {
  return _LevelOneTrainingDetails.fromJson(json);
}

/// @nodoc
mixin _$LevelOneTrainingDetails {
  @JsonKey(name: 'animal_name')
  String get animalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio_url')
  String get audioUrl => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelOneTrainingDetailsCopyWith<LevelOneTrainingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelOneTrainingDetailsCopyWith<$Res> {
  factory $LevelOneTrainingDetailsCopyWith(LevelOneTrainingDetails value,
          $Res Function(LevelOneTrainingDetails) then) =
      _$LevelOneTrainingDetailsCopyWithImpl<$Res, LevelOneTrainingDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'animal_name') String animalName,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'audio_url') String audioUrl,
      bool available});
}

/// @nodoc
class _$LevelOneTrainingDetailsCopyWithImpl<$Res,
        $Val extends LevelOneTrainingDetails>
    implements $LevelOneTrainingDetailsCopyWith<$Res> {
  _$LevelOneTrainingDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animalName = null,
    Object? imageUrl = null,
    Object? audioUrl = null,
    Object? available = null,
  }) {
    return _then(_value.copyWith(
      animalName: null == animalName
          ? _value.animalName
          : animalName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelOneTrainingDetailsImplCopyWith<$Res>
    implements $LevelOneTrainingDetailsCopyWith<$Res> {
  factory _$$LevelOneTrainingDetailsImplCopyWith(
          _$LevelOneTrainingDetailsImpl value,
          $Res Function(_$LevelOneTrainingDetailsImpl) then) =
      __$$LevelOneTrainingDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'animal_name') String animalName,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'audio_url') String audioUrl,
      bool available});
}

/// @nodoc
class __$$LevelOneTrainingDetailsImplCopyWithImpl<$Res>
    extends _$LevelOneTrainingDetailsCopyWithImpl<$Res,
        _$LevelOneTrainingDetailsImpl>
    implements _$$LevelOneTrainingDetailsImplCopyWith<$Res> {
  __$$LevelOneTrainingDetailsImplCopyWithImpl(
      _$LevelOneTrainingDetailsImpl _value,
      $Res Function(_$LevelOneTrainingDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animalName = null,
    Object? imageUrl = null,
    Object? audioUrl = null,
    Object? available = null,
  }) {
    return _then(_$LevelOneTrainingDetailsImpl(
      animalName: null == animalName
          ? _value.animalName
          : animalName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelOneTrainingDetailsImpl implements _LevelOneTrainingDetails {
  const _$LevelOneTrainingDetailsImpl(
      {@JsonKey(name: 'animal_name') required this.animalName,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'audio_url') required this.audioUrl,
      required this.available});

  factory _$LevelOneTrainingDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelOneTrainingDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'animal_name')
  final String animalName;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'audio_url')
  final String audioUrl;
  @override
  final bool available;

  @override
  String toString() {
    return 'LevelOneTrainingDetails(animalName: $animalName, imageUrl: $imageUrl, audioUrl: $audioUrl, available: $available)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelOneTrainingDetailsImpl &&
            (identical(other.animalName, animalName) ||
                other.animalName == animalName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, animalName, imageUrl, audioUrl, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelOneTrainingDetailsImplCopyWith<_$LevelOneTrainingDetailsImpl>
      get copyWith => __$$LevelOneTrainingDetailsImplCopyWithImpl<
          _$LevelOneTrainingDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelOneTrainingDetailsImplToJson(
      this,
    );
  }
}

abstract class _LevelOneTrainingDetails implements LevelOneTrainingDetails {
  const factory _LevelOneTrainingDetails(
      {@JsonKey(name: 'animal_name') required final String animalName,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: 'audio_url') required final String audioUrl,
      required final bool available}) = _$LevelOneTrainingDetailsImpl;

  factory _LevelOneTrainingDetails.fromJson(Map<String, dynamic> json) =
      _$LevelOneTrainingDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'animal_name')
  String get animalName;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'audio_url')
  String get audioUrl;
  @override
  bool get available;
  @override
  @JsonKey(ignore: true)
  _$$LevelOneTrainingDetailsImplCopyWith<_$LevelOneTrainingDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
