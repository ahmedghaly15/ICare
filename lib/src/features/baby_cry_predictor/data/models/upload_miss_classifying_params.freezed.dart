// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_miss_classifying_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadMissClassifyingParams {
  File get audioFile => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadMissClassifyingParamsCopyWith<UploadMissClassifyingParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadMissClassifyingParamsCopyWith<$Res> {
  factory $UploadMissClassifyingParamsCopyWith(
          UploadMissClassifyingParams value,
          $Res Function(UploadMissClassifyingParams) then) =
      _$UploadMissClassifyingParamsCopyWithImpl<$Res,
          UploadMissClassifyingParams>;
  @useResult
  $Res call({File audioFile, String className});
}

/// @nodoc
class _$UploadMissClassifyingParamsCopyWithImpl<$Res,
        $Val extends UploadMissClassifyingParams>
    implements $UploadMissClassifyingParamsCopyWith<$Res> {
  _$UploadMissClassifyingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFile = null,
    Object? className = null,
  }) {
    return _then(_value.copyWith(
      audioFile: null == audioFile
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as File,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadMissClassifyingParamsImplCopyWith<$Res>
    implements $UploadMissClassifyingParamsCopyWith<$Res> {
  factory _$$UploadMissClassifyingParamsImplCopyWith(
          _$UploadMissClassifyingParamsImpl value,
          $Res Function(_$UploadMissClassifyingParamsImpl) then) =
      __$$UploadMissClassifyingParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File audioFile, String className});
}

/// @nodoc
class __$$UploadMissClassifyingParamsImplCopyWithImpl<$Res>
    extends _$UploadMissClassifyingParamsCopyWithImpl<$Res,
        _$UploadMissClassifyingParamsImpl>
    implements _$$UploadMissClassifyingParamsImplCopyWith<$Res> {
  __$$UploadMissClassifyingParamsImplCopyWithImpl(
      _$UploadMissClassifyingParamsImpl _value,
      $Res Function(_$UploadMissClassifyingParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFile = null,
    Object? className = null,
  }) {
    return _then(_$UploadMissClassifyingParamsImpl(
      audioFile: null == audioFile
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as File,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadMissClassifyingParamsImpl
    implements _UploadMissClassifyingParams {
  const _$UploadMissClassifyingParamsImpl(
      {required this.audioFile, required this.className});

  @override
  final File audioFile;
  @override
  final String className;

  @override
  String toString() {
    return 'UploadMissClassifyingParams(audioFile: $audioFile, className: $className)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadMissClassifyingParamsImpl &&
            (identical(other.audioFile, audioFile) ||
                other.audioFile == audioFile) &&
            (identical(other.className, className) ||
                other.className == className));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioFile, className);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadMissClassifyingParamsImplCopyWith<_$UploadMissClassifyingParamsImpl>
      get copyWith => __$$UploadMissClassifyingParamsImplCopyWithImpl<
          _$UploadMissClassifyingParamsImpl>(this, _$identity);
}

abstract class _UploadMissClassifyingParams
    implements UploadMissClassifyingParams {
  const factory _UploadMissClassifyingParams(
      {required final File audioFile,
      required final String className}) = _$UploadMissClassifyingParamsImpl;

  @override
  File get audioFile;
  @override
  String get className;
  @override
  @JsonKey(ignore: true)
  _$$UploadMissClassifyingParamsImplCopyWith<_$UploadMissClassifyingParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
