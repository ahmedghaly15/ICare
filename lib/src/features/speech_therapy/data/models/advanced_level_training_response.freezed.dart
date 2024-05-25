// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_level_training_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvancedLevelTrainingResponse _$AdvancedLevelTrainingResponseFromJson(
    Map<String, dynamic> json) {
  return _AdvancedLevelTrainingResponse.fromJson(json);
}

/// @nodoc
mixin _$AdvancedLevelTrainingResponse {
  int get id => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  AdvancedLevelTrainingDetails get details =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvancedLevelTrainingResponseCopyWith<AdvancedLevelTrainingResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedLevelTrainingResponseCopyWith<$Res> {
  factory $AdvancedLevelTrainingResponseCopyWith(
          AdvancedLevelTrainingResponse value,
          $Res Function(AdvancedLevelTrainingResponse) then) =
      _$AdvancedLevelTrainingResponseCopyWithImpl<$Res,
          AdvancedLevelTrainingResponse>;
  @useResult
  $Res call({int id, int level, AdvancedLevelTrainingDetails details});

  $AdvancedLevelTrainingDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$AdvancedLevelTrainingResponseCopyWithImpl<$Res,
        $Val extends AdvancedLevelTrainingResponse>
    implements $AdvancedLevelTrainingResponseCopyWith<$Res> {
  _$AdvancedLevelTrainingResponseCopyWithImpl(this._value, this._then);

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
              as AdvancedLevelTrainingDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdvancedLevelTrainingDetailsCopyWith<$Res> get details {
    return $AdvancedLevelTrainingDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdvancedLevelTrainingResponseImplCopyWith<$Res>
    implements $AdvancedLevelTrainingResponseCopyWith<$Res> {
  factory _$$AdvancedLevelTrainingResponseImplCopyWith(
          _$AdvancedLevelTrainingResponseImpl value,
          $Res Function(_$AdvancedLevelTrainingResponseImpl) then) =
      __$$AdvancedLevelTrainingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int level, AdvancedLevelTrainingDetails details});

  @override
  $AdvancedLevelTrainingDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$AdvancedLevelTrainingResponseImplCopyWithImpl<$Res>
    extends _$AdvancedLevelTrainingResponseCopyWithImpl<$Res,
        _$AdvancedLevelTrainingResponseImpl>
    implements _$$AdvancedLevelTrainingResponseImplCopyWith<$Res> {
  __$$AdvancedLevelTrainingResponseImplCopyWithImpl(
      _$AdvancedLevelTrainingResponseImpl _value,
      $Res Function(_$AdvancedLevelTrainingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? details = null,
  }) {
    return _then(_$AdvancedLevelTrainingResponseImpl(
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
              as AdvancedLevelTrainingDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedLevelTrainingResponseImpl
    implements _AdvancedLevelTrainingResponse {
  const _$AdvancedLevelTrainingResponseImpl(
      {required this.id, required this.level, required this.details});

  factory _$AdvancedLevelTrainingResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdvancedLevelTrainingResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int level;
  @override
  final AdvancedLevelTrainingDetails details;

  @override
  String toString() {
    return 'AdvancedLevelTrainingResponse(id: $id, level: $level, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedLevelTrainingResponseImpl &&
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
  _$$AdvancedLevelTrainingResponseImplCopyWith<
          _$AdvancedLevelTrainingResponseImpl>
      get copyWith => __$$AdvancedLevelTrainingResponseImplCopyWithImpl<
          _$AdvancedLevelTrainingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedLevelTrainingResponseImplToJson(
      this,
    );
  }
}

abstract class _AdvancedLevelTrainingResponse
    implements AdvancedLevelTrainingResponse {
  const factory _AdvancedLevelTrainingResponse(
          {required final int id,
          required final int level,
          required final AdvancedLevelTrainingDetails details}) =
      _$AdvancedLevelTrainingResponseImpl;

  factory _AdvancedLevelTrainingResponse.fromJson(Map<String, dynamic> json) =
      _$AdvancedLevelTrainingResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get level;
  @override
  AdvancedLevelTrainingDetails get details;
  @override
  @JsonKey(ignore: true)
  _$$AdvancedLevelTrainingResponseImplCopyWith<
          _$AdvancedLevelTrainingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdvancedLevelTrainingDetails _$AdvancedLevelTrainingDetailsFromJson(
    Map<String, dynamic> json) {
  return _AdvancedLevelTrainingDetails.fromJson(json);
}

/// @nodoc
mixin _$AdvancedLevelTrainingDetails {
  @JsonKey(name: 'surah_name_ar')
  String get surahNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'surah_name_en')
  String get surahNameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_ar')
  String get typeAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_en')
  String get typeEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'ayahs_num')
  int get ayahsNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_surah')
  List<Ayah> get fullSurah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvancedLevelTrainingDetailsCopyWith<AdvancedLevelTrainingDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedLevelTrainingDetailsCopyWith<$Res> {
  factory $AdvancedLevelTrainingDetailsCopyWith(
          AdvancedLevelTrainingDetails value,
          $Res Function(AdvancedLevelTrainingDetails) then) =
      _$AdvancedLevelTrainingDetailsCopyWithImpl<$Res,
          AdvancedLevelTrainingDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'surah_name_ar') String surahNameAr,
      @JsonKey(name: 'surah_name_en') String surahNameEn,
      @JsonKey(name: 'type_ar') String typeAr,
      @JsonKey(name: 'type_en') String typeEn,
      @JsonKey(name: 'ayahs_num') int ayahsNum,
      @JsonKey(name: 'full_surah') List<Ayah> fullSurah});
}

/// @nodoc
class _$AdvancedLevelTrainingDetailsCopyWithImpl<$Res,
        $Val extends AdvancedLevelTrainingDetails>
    implements $AdvancedLevelTrainingDetailsCopyWith<$Res> {
  _$AdvancedLevelTrainingDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNameAr = null,
    Object? surahNameEn = null,
    Object? typeAr = null,
    Object? typeEn = null,
    Object? ayahsNum = null,
    Object? fullSurah = null,
  }) {
    return _then(_value.copyWith(
      surahNameAr: null == surahNameAr
          ? _value.surahNameAr
          : surahNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      surahNameEn: null == surahNameEn
          ? _value.surahNameEn
          : surahNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      typeAr: null == typeAr
          ? _value.typeAr
          : typeAr // ignore: cast_nullable_to_non_nullable
              as String,
      typeEn: null == typeEn
          ? _value.typeEn
          : typeEn // ignore: cast_nullable_to_non_nullable
              as String,
      ayahsNum: null == ayahsNum
          ? _value.ayahsNum
          : ayahsNum // ignore: cast_nullable_to_non_nullable
              as int,
      fullSurah: null == fullSurah
          ? _value.fullSurah
          : fullSurah // ignore: cast_nullable_to_non_nullable
              as List<Ayah>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvancedLevelTrainingDetailsImplCopyWith<$Res>
    implements $AdvancedLevelTrainingDetailsCopyWith<$Res> {
  factory _$$AdvancedLevelTrainingDetailsImplCopyWith(
          _$AdvancedLevelTrainingDetailsImpl value,
          $Res Function(_$AdvancedLevelTrainingDetailsImpl) then) =
      __$$AdvancedLevelTrainingDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'surah_name_ar') String surahNameAr,
      @JsonKey(name: 'surah_name_en') String surahNameEn,
      @JsonKey(name: 'type_ar') String typeAr,
      @JsonKey(name: 'type_en') String typeEn,
      @JsonKey(name: 'ayahs_num') int ayahsNum,
      @JsonKey(name: 'full_surah') List<Ayah> fullSurah});
}

/// @nodoc
class __$$AdvancedLevelTrainingDetailsImplCopyWithImpl<$Res>
    extends _$AdvancedLevelTrainingDetailsCopyWithImpl<$Res,
        _$AdvancedLevelTrainingDetailsImpl>
    implements _$$AdvancedLevelTrainingDetailsImplCopyWith<$Res> {
  __$$AdvancedLevelTrainingDetailsImplCopyWithImpl(
      _$AdvancedLevelTrainingDetailsImpl _value,
      $Res Function(_$AdvancedLevelTrainingDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNameAr = null,
    Object? surahNameEn = null,
    Object? typeAr = null,
    Object? typeEn = null,
    Object? ayahsNum = null,
    Object? fullSurah = null,
  }) {
    return _then(_$AdvancedLevelTrainingDetailsImpl(
      surahNameAr: null == surahNameAr
          ? _value.surahNameAr
          : surahNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      surahNameEn: null == surahNameEn
          ? _value.surahNameEn
          : surahNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      typeAr: null == typeAr
          ? _value.typeAr
          : typeAr // ignore: cast_nullable_to_non_nullable
              as String,
      typeEn: null == typeEn
          ? _value.typeEn
          : typeEn // ignore: cast_nullable_to_non_nullable
              as String,
      ayahsNum: null == ayahsNum
          ? _value.ayahsNum
          : ayahsNum // ignore: cast_nullable_to_non_nullable
              as int,
      fullSurah: null == fullSurah
          ? _value._fullSurah
          : fullSurah // ignore: cast_nullable_to_non_nullable
              as List<Ayah>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedLevelTrainingDetailsImpl
    implements _AdvancedLevelTrainingDetails {
  const _$AdvancedLevelTrainingDetailsImpl(
      {@JsonKey(name: 'surah_name_ar') required this.surahNameAr,
      @JsonKey(name: 'surah_name_en') required this.surahNameEn,
      @JsonKey(name: 'type_ar') required this.typeAr,
      @JsonKey(name: 'type_en') required this.typeEn,
      @JsonKey(name: 'ayahs_num') required this.ayahsNum,
      @JsonKey(name: 'full_surah') required final List<Ayah> fullSurah})
      : _fullSurah = fullSurah;

  factory _$AdvancedLevelTrainingDetailsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdvancedLevelTrainingDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'surah_name_ar')
  final String surahNameAr;
  @override
  @JsonKey(name: 'surah_name_en')
  final String surahNameEn;
  @override
  @JsonKey(name: 'type_ar')
  final String typeAr;
  @override
  @JsonKey(name: 'type_en')
  final String typeEn;
  @override
  @JsonKey(name: 'ayahs_num')
  final int ayahsNum;
  final List<Ayah> _fullSurah;
  @override
  @JsonKey(name: 'full_surah')
  List<Ayah> get fullSurah {
    if (_fullSurah is EqualUnmodifiableListView) return _fullSurah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fullSurah);
  }

  @override
  String toString() {
    return 'AdvancedLevelTrainingDetails(surahNameAr: $surahNameAr, surahNameEn: $surahNameEn, typeAr: $typeAr, typeEn: $typeEn, ayahsNum: $ayahsNum, fullSurah: $fullSurah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedLevelTrainingDetailsImpl &&
            (identical(other.surahNameAr, surahNameAr) ||
                other.surahNameAr == surahNameAr) &&
            (identical(other.surahNameEn, surahNameEn) ||
                other.surahNameEn == surahNameEn) &&
            (identical(other.typeAr, typeAr) || other.typeAr == typeAr) &&
            (identical(other.typeEn, typeEn) || other.typeEn == typeEn) &&
            (identical(other.ayahsNum, ayahsNum) ||
                other.ayahsNum == ayahsNum) &&
            const DeepCollectionEquality()
                .equals(other._fullSurah, _fullSurah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, surahNameAr, surahNameEn, typeAr,
      typeEn, ayahsNum, const DeepCollectionEquality().hash(_fullSurah));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedLevelTrainingDetailsImplCopyWith<
          _$AdvancedLevelTrainingDetailsImpl>
      get copyWith => __$$AdvancedLevelTrainingDetailsImplCopyWithImpl<
          _$AdvancedLevelTrainingDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedLevelTrainingDetailsImplToJson(
      this,
    );
  }
}

abstract class _AdvancedLevelTrainingDetails
    implements AdvancedLevelTrainingDetails {
  const factory _AdvancedLevelTrainingDetails(
          {@JsonKey(name: 'surah_name_ar') required final String surahNameAr,
          @JsonKey(name: 'surah_name_en') required final String surahNameEn,
          @JsonKey(name: 'type_ar') required final String typeAr,
          @JsonKey(name: 'type_en') required final String typeEn,
          @JsonKey(name: 'ayahs_num') required final int ayahsNum,
          @JsonKey(name: 'full_surah') required final List<Ayah> fullSurah}) =
      _$AdvancedLevelTrainingDetailsImpl;

  factory _AdvancedLevelTrainingDetails.fromJson(Map<String, dynamic> json) =
      _$AdvancedLevelTrainingDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'surah_name_ar')
  String get surahNameAr;
  @override
  @JsonKey(name: 'surah_name_en')
  String get surahNameEn;
  @override
  @JsonKey(name: 'type_ar')
  String get typeAr;
  @override
  @JsonKey(name: 'type_en')
  String get typeEn;
  @override
  @JsonKey(name: 'ayahs_num')
  int get ayahsNum;
  @override
  @JsonKey(name: 'full_surah')
  List<Ayah> get fullSurah;
  @override
  @JsonKey(ignore: true)
  _$$AdvancedLevelTrainingDetailsImplCopyWith<
          _$AdvancedLevelTrainingDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Ayah _$AyahFromJson(Map<String, dynamic> json) {
  return _Ayah.fromJson(json);
}

/// @nodoc
mixin _$Ayah {
  @JsonKey(name: 'ayah_num')
  int get ayahNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'ayah_ar')
  String get ayahAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'ayah_en')
  String get ayahEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'ayah_audio_url')
  String get ayahAudioUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AyahCopyWith<Ayah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahCopyWith<$Res> {
  factory $AyahCopyWith(Ayah value, $Res Function(Ayah) then) =
      _$AyahCopyWithImpl<$Res, Ayah>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ayah_num') int ayahNum,
      @JsonKey(name: 'ayah_ar') String ayahAr,
      @JsonKey(name: 'ayah_en') String ayahEn,
      @JsonKey(name: 'ayah_audio_url') String ayahAudioUrl});
}

/// @nodoc
class _$AyahCopyWithImpl<$Res, $Val extends Ayah>
    implements $AyahCopyWith<$Res> {
  _$AyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayahNum = null,
    Object? ayahAr = null,
    Object? ayahEn = null,
    Object? ayahAudioUrl = null,
  }) {
    return _then(_value.copyWith(
      ayahNum: null == ayahNum
          ? _value.ayahNum
          : ayahNum // ignore: cast_nullable_to_non_nullable
              as int,
      ayahAr: null == ayahAr
          ? _value.ayahAr
          : ayahAr // ignore: cast_nullable_to_non_nullable
              as String,
      ayahEn: null == ayahEn
          ? _value.ayahEn
          : ayahEn // ignore: cast_nullable_to_non_nullable
              as String,
      ayahAudioUrl: null == ayahAudioUrl
          ? _value.ayahAudioUrl
          : ayahAudioUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyahImplCopyWith<$Res> implements $AyahCopyWith<$Res> {
  factory _$$AyahImplCopyWith(
          _$AyahImpl value, $Res Function(_$AyahImpl) then) =
      __$$AyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ayah_num') int ayahNum,
      @JsonKey(name: 'ayah_ar') String ayahAr,
      @JsonKey(name: 'ayah_en') String ayahEn,
      @JsonKey(name: 'ayah_audio_url') String ayahAudioUrl});
}

/// @nodoc
class __$$AyahImplCopyWithImpl<$Res>
    extends _$AyahCopyWithImpl<$Res, _$AyahImpl>
    implements _$$AyahImplCopyWith<$Res> {
  __$$AyahImplCopyWithImpl(_$AyahImpl _value, $Res Function(_$AyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayahNum = null,
    Object? ayahAr = null,
    Object? ayahEn = null,
    Object? ayahAudioUrl = null,
  }) {
    return _then(_$AyahImpl(
      ayahNum: null == ayahNum
          ? _value.ayahNum
          : ayahNum // ignore: cast_nullable_to_non_nullable
              as int,
      ayahAr: null == ayahAr
          ? _value.ayahAr
          : ayahAr // ignore: cast_nullable_to_non_nullable
              as String,
      ayahEn: null == ayahEn
          ? _value.ayahEn
          : ayahEn // ignore: cast_nullable_to_non_nullable
              as String,
      ayahAudioUrl: null == ayahAudioUrl
          ? _value.ayahAudioUrl
          : ayahAudioUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyahImpl implements _Ayah {
  const _$AyahImpl(
      {@JsonKey(name: 'ayah_num') required this.ayahNum,
      @JsonKey(name: 'ayah_ar') required this.ayahAr,
      @JsonKey(name: 'ayah_en') required this.ayahEn,
      @JsonKey(name: 'ayah_audio_url') required this.ayahAudioUrl});

  factory _$AyahImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahImplFromJson(json);

  @override
  @JsonKey(name: 'ayah_num')
  final int ayahNum;
  @override
  @JsonKey(name: 'ayah_ar')
  final String ayahAr;
  @override
  @JsonKey(name: 'ayah_en')
  final String ayahEn;
  @override
  @JsonKey(name: 'ayah_audio_url')
  final String ayahAudioUrl;

  @override
  String toString() {
    return 'Ayah(ayahNum: $ayahNum, ayahAr: $ayahAr, ayahEn: $ayahEn, ayahAudioUrl: $ayahAudioUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahImpl &&
            (identical(other.ayahNum, ayahNum) || other.ayahNum == ayahNum) &&
            (identical(other.ayahAr, ayahAr) || other.ayahAr == ayahAr) &&
            (identical(other.ayahEn, ayahEn) || other.ayahEn == ayahEn) &&
            (identical(other.ayahAudioUrl, ayahAudioUrl) ||
                other.ayahAudioUrl == ayahAudioUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ayahNum, ayahAr, ayahEn, ayahAudioUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      __$$AyahImplCopyWithImpl<_$AyahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahImplToJson(
      this,
    );
  }
}

abstract class _Ayah implements Ayah {
  const factory _Ayah(
      {@JsonKey(name: 'ayah_num') required final int ayahNum,
      @JsonKey(name: 'ayah_ar') required final String ayahAr,
      @JsonKey(name: 'ayah_en') required final String ayahEn,
      @JsonKey(name: 'ayah_audio_url')
      required final String ayahAudioUrl}) = _$AyahImpl;

  factory _Ayah.fromJson(Map<String, dynamic> json) = _$AyahImpl.fromJson;

  @override
  @JsonKey(name: 'ayah_num')
  int get ayahNum;
  @override
  @JsonKey(name: 'ayah_ar')
  String get ayahAr;
  @override
  @JsonKey(name: 'ayah_en')
  String get ayahEn;
  @override
  @JsonKey(name: 'ayah_audio_url')
  String get ayahAudioUrl;
  @override
  @JsonKey(ignore: true)
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
