// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoreResponse _$ScoreResponseFromJson(Map<String, dynamic> json) {
  return _ScoreResponse.fromJson(json);
}

/// @nodoc
mixin _$ScoreResponse {
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_levels')
  List<ScoreDetail> get subLevels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreResponseCopyWith<ScoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreResponseCopyWith<$Res> {
  factory $ScoreResponseCopyWith(
          ScoreResponse value, $Res Function(ScoreResponse) then) =
      _$ScoreResponseCopyWithImpl<$Res, ScoreResponse>;
  @useResult
  $Res call(
      {int level, @JsonKey(name: 'sub_levels') List<ScoreDetail> subLevels});
}

/// @nodoc
class _$ScoreResponseCopyWithImpl<$Res, $Val extends ScoreResponse>
    implements $ScoreResponseCopyWith<$Res> {
  _$ScoreResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? subLevels = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      subLevels: null == subLevels
          ? _value.subLevels
          : subLevels // ignore: cast_nullable_to_non_nullable
              as List<ScoreDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreResponseImplCopyWith<$Res>
    implements $ScoreResponseCopyWith<$Res> {
  factory _$$ScoreResponseImplCopyWith(
          _$ScoreResponseImpl value, $Res Function(_$ScoreResponseImpl) then) =
      __$$ScoreResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int level, @JsonKey(name: 'sub_levels') List<ScoreDetail> subLevels});
}

/// @nodoc
class __$$ScoreResponseImplCopyWithImpl<$Res>
    extends _$ScoreResponseCopyWithImpl<$Res, _$ScoreResponseImpl>
    implements _$$ScoreResponseImplCopyWith<$Res> {
  __$$ScoreResponseImplCopyWithImpl(
      _$ScoreResponseImpl _value, $Res Function(_$ScoreResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? subLevels = null,
  }) {
    return _then(_$ScoreResponseImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      subLevels: null == subLevels
          ? _value._subLevels
          : subLevels // ignore: cast_nullable_to_non_nullable
              as List<ScoreDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreResponseImpl implements _ScoreResponse {
  const _$ScoreResponseImpl(
      {required this.level,
      @JsonKey(name: 'sub_levels') required final List<ScoreDetail> subLevels})
      : _subLevels = subLevels;

  factory _$ScoreResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreResponseImplFromJson(json);

  @override
  final int level;
  final List<ScoreDetail> _subLevels;
  @override
  @JsonKey(name: 'sub_levels')
  List<ScoreDetail> get subLevels {
    if (_subLevels is EqualUnmodifiableListView) return _subLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subLevels);
  }

  @override
  String toString() {
    return 'ScoreResponse(level: $level, subLevels: $subLevels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreResponseImpl &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality()
                .equals(other._subLevels, _subLevels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, level, const DeepCollectionEquality().hash(_subLevels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreResponseImplCopyWith<_$ScoreResponseImpl> get copyWith =>
      __$$ScoreResponseImplCopyWithImpl<_$ScoreResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreResponseImplToJson(
      this,
    );
  }
}

abstract class _ScoreResponse implements ScoreResponse {
  const factory _ScoreResponse(
      {required final int level,
      @JsonKey(name: 'sub_levels')
      required final List<ScoreDetail> subLevels}) = _$ScoreResponseImpl;

  factory _ScoreResponse.fromJson(Map<String, dynamic> json) =
      _$ScoreResponseImpl.fromJson;

  @override
  int get level;
  @override
  @JsonKey(name: 'sub_levels')
  List<ScoreDetail> get subLevels;
  @override
  @JsonKey(ignore: true)
  _$$ScoreResponseImplCopyWith<_$ScoreResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScoreDetail _$ScoreDetailFromJson(Map<String, dynamic> json) {
  return _ScoreDetails.fromJson(json);
}

/// @nodoc
mixin _$ScoreDetail {
  @JsonKey(name: 'sub_level_name_ar')
  String? get subLevelNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_level_name_en')
  String? get subLevelNameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_level_image_url')
  String? get subLevelImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_level_percent')
  double get subLevelPercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreDetailCopyWith<ScoreDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreDetailCopyWith<$Res> {
  factory $ScoreDetailCopyWith(
          ScoreDetail value, $Res Function(ScoreDetail) then) =
      _$ScoreDetailCopyWithImpl<$Res, ScoreDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sub_level_name_ar') String? subLevelNameAr,
      @JsonKey(name: 'sub_level_name_en') String? subLevelNameEn,
      @JsonKey(name: 'sub_level_image_url') String? subLevelImageUrl,
      @JsonKey(name: 'sub_level_percent') double subLevelPercent});
}

/// @nodoc
class _$ScoreDetailCopyWithImpl<$Res, $Val extends ScoreDetail>
    implements $ScoreDetailCopyWith<$Res> {
  _$ScoreDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subLevelNameAr = freezed,
    Object? subLevelNameEn = freezed,
    Object? subLevelImageUrl = freezed,
    Object? subLevelPercent = null,
  }) {
    return _then(_value.copyWith(
      subLevelNameAr: freezed == subLevelNameAr
          ? _value.subLevelNameAr
          : subLevelNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      subLevelNameEn: freezed == subLevelNameEn
          ? _value.subLevelNameEn
          : subLevelNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      subLevelImageUrl: freezed == subLevelImageUrl
          ? _value.subLevelImageUrl
          : subLevelImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subLevelPercent: null == subLevelPercent
          ? _value.subLevelPercent
          : subLevelPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreDetailsImplCopyWith<$Res>
    implements $ScoreDetailCopyWith<$Res> {
  factory _$$ScoreDetailsImplCopyWith(
          _$ScoreDetailsImpl value, $Res Function(_$ScoreDetailsImpl) then) =
      __$$ScoreDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sub_level_name_ar') String? subLevelNameAr,
      @JsonKey(name: 'sub_level_name_en') String? subLevelNameEn,
      @JsonKey(name: 'sub_level_image_url') String? subLevelImageUrl,
      @JsonKey(name: 'sub_level_percent') double subLevelPercent});
}

/// @nodoc
class __$$ScoreDetailsImplCopyWithImpl<$Res>
    extends _$ScoreDetailCopyWithImpl<$Res, _$ScoreDetailsImpl>
    implements _$$ScoreDetailsImplCopyWith<$Res> {
  __$$ScoreDetailsImplCopyWithImpl(
      _$ScoreDetailsImpl _value, $Res Function(_$ScoreDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subLevelNameAr = freezed,
    Object? subLevelNameEn = freezed,
    Object? subLevelImageUrl = freezed,
    Object? subLevelPercent = null,
  }) {
    return _then(_$ScoreDetailsImpl(
      subLevelNameAr: freezed == subLevelNameAr
          ? _value.subLevelNameAr
          : subLevelNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      subLevelNameEn: freezed == subLevelNameEn
          ? _value.subLevelNameEn
          : subLevelNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      subLevelImageUrl: freezed == subLevelImageUrl
          ? _value.subLevelImageUrl
          : subLevelImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subLevelPercent: null == subLevelPercent
          ? _value.subLevelPercent
          : subLevelPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreDetailsImpl implements _ScoreDetails {
  const _$ScoreDetailsImpl(
      {@JsonKey(name: 'sub_level_name_ar') required this.subLevelNameAr,
      @JsonKey(name: 'sub_level_name_en') required this.subLevelNameEn,
      @JsonKey(name: 'sub_level_image_url') required this.subLevelImageUrl,
      @JsonKey(name: 'sub_level_percent') required this.subLevelPercent});

  factory _$ScoreDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'sub_level_name_ar')
  final String? subLevelNameAr;
  @override
  @JsonKey(name: 'sub_level_name_en')
  final String? subLevelNameEn;
  @override
  @JsonKey(name: 'sub_level_image_url')
  final String? subLevelImageUrl;
  @override
  @JsonKey(name: 'sub_level_percent')
  final double subLevelPercent;

  @override
  String toString() {
    return 'ScoreDetail(subLevelNameAr: $subLevelNameAr, subLevelNameEn: $subLevelNameEn, subLevelImageUrl: $subLevelImageUrl, subLevelPercent: $subLevelPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreDetailsImpl &&
            (identical(other.subLevelNameAr, subLevelNameAr) ||
                other.subLevelNameAr == subLevelNameAr) &&
            (identical(other.subLevelNameEn, subLevelNameEn) ||
                other.subLevelNameEn == subLevelNameEn) &&
            (identical(other.subLevelImageUrl, subLevelImageUrl) ||
                other.subLevelImageUrl == subLevelImageUrl) &&
            (identical(other.subLevelPercent, subLevelPercent) ||
                other.subLevelPercent == subLevelPercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subLevelNameAr, subLevelNameEn,
      subLevelImageUrl, subLevelPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreDetailsImplCopyWith<_$ScoreDetailsImpl> get copyWith =>
      __$$ScoreDetailsImplCopyWithImpl<_$ScoreDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreDetailsImplToJson(
      this,
    );
  }
}

abstract class _ScoreDetails implements ScoreDetail {
  const factory _ScoreDetails(
      {@JsonKey(name: 'sub_level_name_ar')
      required final String? subLevelNameAr,
      @JsonKey(name: 'sub_level_name_en') required final String? subLevelNameEn,
      @JsonKey(name: 'sub_level_image_url')
      required final String? subLevelImageUrl,
      @JsonKey(name: 'sub_level_percent')
      required final double subLevelPercent}) = _$ScoreDetailsImpl;

  factory _ScoreDetails.fromJson(Map<String, dynamic> json) =
      _$ScoreDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'sub_level_name_ar')
  String? get subLevelNameAr;
  @override
  @JsonKey(name: 'sub_level_name_en')
  String? get subLevelNameEn;
  @override
  @JsonKey(name: 'sub_level_image_url')
  String? get subLevelImageUrl;
  @override
  @JsonKey(name: 'sub_level_percent')
  double get subLevelPercent;
  @override
  @JsonKey(ignore: true)
  _$$ScoreDetailsImplCopyWith<_$ScoreDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
