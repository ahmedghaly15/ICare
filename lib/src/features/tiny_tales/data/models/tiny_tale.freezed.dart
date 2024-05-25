// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tiny_tale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TinyTale _$TinyTaleFromJson(Map<String, dynamic> json) {
  return _TinyTale.fromJson(json);
}

/// @nodoc
mixin _$TinyTale {
  ICareUser? get user => throw _privateConstructorUsedError;
  TinyTaleData? get tinyTaleData => throw _privateConstructorUsedError;
  String? get tinyTaleId => throw _privateConstructorUsedError;
  Timestamp? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TinyTaleCopyWith<TinyTale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TinyTaleCopyWith<$Res> {
  factory $TinyTaleCopyWith(TinyTale value, $Res Function(TinyTale) then) =
      _$TinyTaleCopyWithImpl<$Res, TinyTale>;
  @useResult
  $Res call(
      {ICareUser? user,
      TinyTaleData? tinyTaleData,
      String? tinyTaleId,
      Timestamp? dateTime});

  $ICareUserCopyWith<$Res>? get user;
  $TinyTaleDataCopyWith<$Res>? get tinyTaleData;
}

/// @nodoc
class _$TinyTaleCopyWithImpl<$Res, $Val extends TinyTale>
    implements $TinyTaleCopyWith<$Res> {
  _$TinyTaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? tinyTaleData = freezed,
    Object? tinyTaleId = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ICareUser?,
      tinyTaleData: freezed == tinyTaleData
          ? _value.tinyTaleData
          : tinyTaleData // ignore: cast_nullable_to_non_nullable
              as TinyTaleData?,
      tinyTaleId: freezed == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ICareUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ICareUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TinyTaleDataCopyWith<$Res>? get tinyTaleData {
    if (_value.tinyTaleData == null) {
      return null;
    }

    return $TinyTaleDataCopyWith<$Res>(_value.tinyTaleData!, (value) {
      return _then(_value.copyWith(tinyTaleData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TinyTaleImplCopyWith<$Res>
    implements $TinyTaleCopyWith<$Res> {
  factory _$$TinyTaleImplCopyWith(
          _$TinyTaleImpl value, $Res Function(_$TinyTaleImpl) then) =
      __$$TinyTaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ICareUser? user,
      TinyTaleData? tinyTaleData,
      String? tinyTaleId,
      Timestamp? dateTime});

  @override
  $ICareUserCopyWith<$Res>? get user;
  @override
  $TinyTaleDataCopyWith<$Res>? get tinyTaleData;
}

/// @nodoc
class __$$TinyTaleImplCopyWithImpl<$Res>
    extends _$TinyTaleCopyWithImpl<$Res, _$TinyTaleImpl>
    implements _$$TinyTaleImplCopyWith<$Res> {
  __$$TinyTaleImplCopyWithImpl(
      _$TinyTaleImpl _value, $Res Function(_$TinyTaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? tinyTaleData = freezed,
    Object? tinyTaleId = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$TinyTaleImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ICareUser?,
      tinyTaleData: freezed == tinyTaleData
          ? _value.tinyTaleData
          : tinyTaleData // ignore: cast_nullable_to_non_nullable
              as TinyTaleData?,
      tinyTaleId: freezed == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TinyTaleImpl implements _TinyTale {
  const _$TinyTaleImpl(
      {this.user, this.tinyTaleData, this.tinyTaleId, this.dateTime});

  factory _$TinyTaleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TinyTaleImplFromJson(json);

  @override
  final ICareUser? user;
  @override
  final TinyTaleData? tinyTaleData;
  @override
  final String? tinyTaleId;
  @override
  final Timestamp? dateTime;

  @override
  String toString() {
    return 'TinyTale(user: $user, tinyTaleData: $tinyTaleData, tinyTaleId: $tinyTaleId, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TinyTaleImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tinyTaleData, tinyTaleData) ||
                other.tinyTaleData == tinyTaleData) &&
            (identical(other.tinyTaleId, tinyTaleId) ||
                other.tinyTaleId == tinyTaleId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user, tinyTaleData, tinyTaleId, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TinyTaleImplCopyWith<_$TinyTaleImpl> get copyWith =>
      __$$TinyTaleImplCopyWithImpl<_$TinyTaleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TinyTaleImplToJson(
      this,
    );
  }
}

abstract class _TinyTale implements TinyTale {
  const factory _TinyTale(
      {final ICareUser? user,
      final TinyTaleData? tinyTaleData,
      final String? tinyTaleId,
      final Timestamp? dateTime}) = _$TinyTaleImpl;

  factory _TinyTale.fromJson(Map<String, dynamic> json) =
      _$TinyTaleImpl.fromJson;

  @override
  ICareUser? get user;
  @override
  TinyTaleData? get tinyTaleData;
  @override
  String? get tinyTaleId;
  @override
  Timestamp? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$TinyTaleImplCopyWith<_$TinyTaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TinyTaleData _$TinyTaleDataFromJson(Map<String, dynamic> json) {
  return _TinyTaleData.fromJson(json);
}

/// @nodoc
mixin _$TinyTaleData {
  String? get time => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get tinyTaleImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TinyTaleDataCopyWith<TinyTaleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TinyTaleDataCopyWith<$Res> {
  factory $TinyTaleDataCopyWith(
          TinyTaleData value, $Res Function(TinyTaleData) then) =
      _$TinyTaleDataCopyWithImpl<$Res, TinyTaleData>;
  @useResult
  $Res call({String? time, String? date, String? text, String? tinyTaleImage});
}

/// @nodoc
class _$TinyTaleDataCopyWithImpl<$Res, $Val extends TinyTaleData>
    implements $TinyTaleDataCopyWith<$Res> {
  _$TinyTaleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? date = freezed,
    Object? text = freezed,
    Object? tinyTaleImage = freezed,
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
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      tinyTaleImage: freezed == tinyTaleImage
          ? _value.tinyTaleImage
          : tinyTaleImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TinyTaleDataImplCopyWith<$Res>
    implements $TinyTaleDataCopyWith<$Res> {
  factory _$$TinyTaleDataImplCopyWith(
          _$TinyTaleDataImpl value, $Res Function(_$TinyTaleDataImpl) then) =
      __$$TinyTaleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? time, String? date, String? text, String? tinyTaleImage});
}

/// @nodoc
class __$$TinyTaleDataImplCopyWithImpl<$Res>
    extends _$TinyTaleDataCopyWithImpl<$Res, _$TinyTaleDataImpl>
    implements _$$TinyTaleDataImplCopyWith<$Res> {
  __$$TinyTaleDataImplCopyWithImpl(
      _$TinyTaleDataImpl _value, $Res Function(_$TinyTaleDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? date = freezed,
    Object? text = freezed,
    Object? tinyTaleImage = freezed,
  }) {
    return _then(_$TinyTaleDataImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      tinyTaleImage: freezed == tinyTaleImage
          ? _value.tinyTaleImage
          : tinyTaleImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TinyTaleDataImpl implements _TinyTaleData {
  const _$TinyTaleDataImpl(
      {this.time, this.date, this.text, this.tinyTaleImage});

  factory _$TinyTaleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TinyTaleDataImplFromJson(json);

  @override
  final String? time;
  @override
  final String? date;
  @override
  final String? text;
  @override
  final String? tinyTaleImage;

  @override
  String toString() {
    return 'TinyTaleData(time: $time, date: $date, text: $text, tinyTaleImage: $tinyTaleImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TinyTaleDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.tinyTaleImage, tinyTaleImage) ||
                other.tinyTaleImage == tinyTaleImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, date, text, tinyTaleImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TinyTaleDataImplCopyWith<_$TinyTaleDataImpl> get copyWith =>
      __$$TinyTaleDataImplCopyWithImpl<_$TinyTaleDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TinyTaleDataImplToJson(
      this,
    );
  }
}

abstract class _TinyTaleData implements TinyTaleData {
  const factory _TinyTaleData(
      {final String? time,
      final String? date,
      final String? text,
      final String? tinyTaleImage}) = _$TinyTaleDataImpl;

  factory _TinyTaleData.fromJson(Map<String, dynamic> json) =
      _$TinyTaleDataImpl.fromJson;

  @override
  String? get time;
  @override
  String? get date;
  @override
  String? get text;
  @override
  String? get tinyTaleImage;
  @override
  @JsonKey(ignore: true)
  _$$TinyTaleDataImplCopyWith<_$TinyTaleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
