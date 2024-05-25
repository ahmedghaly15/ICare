// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarkParams {
  int? get level => throw _privateConstructorUsedError;
  int? get ayahNum => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  File get audioFile => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarkParamsCopyWith<MarkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkParamsCopyWith<$Res> {
  factory $MarkParamsCopyWith(
          MarkParams value, $Res Function(MarkParams) then) =
      _$MarkParamsCopyWithImpl<$Res, MarkParams>;
  @useResult
  $Res call({int? level, int? ayahNum, int id, File audioFile, String userId});
}

/// @nodoc
class _$MarkParamsCopyWithImpl<$Res, $Val extends MarkParams>
    implements $MarkParamsCopyWith<$Res> {
  _$MarkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? ayahNum = freezed,
    Object? id = null,
    Object? audioFile = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahNum: freezed == ayahNum
          ? _value.ayahNum
          : ayahNum // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      audioFile: null == audioFile
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as File,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkParamsImplCopyWith<$Res>
    implements $MarkParamsCopyWith<$Res> {
  factory _$$MarkParamsImplCopyWith(
          _$MarkParamsImpl value, $Res Function(_$MarkParamsImpl) then) =
      __$$MarkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? level, int? ayahNum, int id, File audioFile, String userId});
}

/// @nodoc
class __$$MarkParamsImplCopyWithImpl<$Res>
    extends _$MarkParamsCopyWithImpl<$Res, _$MarkParamsImpl>
    implements _$$MarkParamsImplCopyWith<$Res> {
  __$$MarkParamsImplCopyWithImpl(
      _$MarkParamsImpl _value, $Res Function(_$MarkParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? ayahNum = freezed,
    Object? id = null,
    Object? audioFile = null,
    Object? userId = null,
  }) {
    return _then(_$MarkParamsImpl(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      ayahNum: freezed == ayahNum
          ? _value.ayahNum
          : ayahNum // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      audioFile: null == audioFile
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as File,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkParamsImpl implements _MarkParams {
  const _$MarkParamsImpl(
      {this.level,
      this.ayahNum,
      required this.id,
      required this.audioFile,
      required this.userId});

  @override
  final int? level;
  @override
  final int? ayahNum;
  @override
  final int id;
  @override
  final File audioFile;
  @override
  final String userId;

  @override
  String toString() {
    return 'MarkParams(level: $level, ayahNum: $ayahNum, id: $id, audioFile: $audioFile, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkParamsImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.ayahNum, ayahNum) || other.ayahNum == ayahNum) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.audioFile, audioFile) ||
                other.audioFile == audioFile) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, level, ayahNum, id, audioFile, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkParamsImplCopyWith<_$MarkParamsImpl> get copyWith =>
      __$$MarkParamsImplCopyWithImpl<_$MarkParamsImpl>(this, _$identity);
}

abstract class _MarkParams implements MarkParams {
  const factory _MarkParams(
      {final int? level,
      final int? ayahNum,
      required final int id,
      required final File audioFile,
      required final String userId}) = _$MarkParamsImpl;

  @override
  int? get level;
  @override
  int? get ayahNum;
  @override
  int get id;
  @override
  File get audioFile;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$MarkParamsImplCopyWith<_$MarkParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
