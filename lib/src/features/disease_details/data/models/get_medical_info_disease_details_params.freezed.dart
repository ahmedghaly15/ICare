// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_medical_info_disease_details_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetMedicalInfoDiseaseDetailsParams {
  String get diseaseId => throw _privateConstructorUsedError;
  String get diseaseType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetMedicalInfoDiseaseDetailsParamsCopyWith<
          GetMedicalInfoDiseaseDetailsParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMedicalInfoDiseaseDetailsParamsCopyWith<$Res> {
  factory $GetMedicalInfoDiseaseDetailsParamsCopyWith(
          GetMedicalInfoDiseaseDetailsParams value,
          $Res Function(GetMedicalInfoDiseaseDetailsParams) then) =
      _$GetMedicalInfoDiseaseDetailsParamsCopyWithImpl<$Res,
          GetMedicalInfoDiseaseDetailsParams>;
  @useResult
  $Res call({String diseaseId, String diseaseType});
}

/// @nodoc
class _$GetMedicalInfoDiseaseDetailsParamsCopyWithImpl<$Res,
        $Val extends GetMedicalInfoDiseaseDetailsParams>
    implements $GetMedicalInfoDiseaseDetailsParamsCopyWith<$Res> {
  _$GetMedicalInfoDiseaseDetailsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseId = null,
    Object? diseaseType = null,
  }) {
    return _then(_value.copyWith(
      diseaseId: null == diseaseId
          ? _value.diseaseId
          : diseaseId // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseType: null == diseaseType
          ? _value.diseaseType
          : diseaseType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMedicalInfoDiseaseDetailsParamsImplCopyWith<$Res>
    implements $GetMedicalInfoDiseaseDetailsParamsCopyWith<$Res> {
  factory _$$GetMedicalInfoDiseaseDetailsParamsImplCopyWith(
          _$GetMedicalInfoDiseaseDetailsParamsImpl value,
          $Res Function(_$GetMedicalInfoDiseaseDetailsParamsImpl) then) =
      __$$GetMedicalInfoDiseaseDetailsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String diseaseId, String diseaseType});
}

/// @nodoc
class __$$GetMedicalInfoDiseaseDetailsParamsImplCopyWithImpl<$Res>
    extends _$GetMedicalInfoDiseaseDetailsParamsCopyWithImpl<$Res,
        _$GetMedicalInfoDiseaseDetailsParamsImpl>
    implements _$$GetMedicalInfoDiseaseDetailsParamsImplCopyWith<$Res> {
  __$$GetMedicalInfoDiseaseDetailsParamsImplCopyWithImpl(
      _$GetMedicalInfoDiseaseDetailsParamsImpl _value,
      $Res Function(_$GetMedicalInfoDiseaseDetailsParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseId = null,
    Object? diseaseType = null,
  }) {
    return _then(_$GetMedicalInfoDiseaseDetailsParamsImpl(
      diseaseId: null == diseaseId
          ? _value.diseaseId
          : diseaseId // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseType: null == diseaseType
          ? _value.diseaseType
          : diseaseType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMedicalInfoDiseaseDetailsParamsImpl
    implements _GetMedicalInfoDiseaseDetailsParams {
  const _$GetMedicalInfoDiseaseDetailsParamsImpl(
      {required this.diseaseId, required this.diseaseType});

  @override
  final String diseaseId;
  @override
  final String diseaseType;

  @override
  String toString() {
    return 'GetMedicalInfoDiseaseDetailsParams(diseaseId: $diseaseId, diseaseType: $diseaseType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMedicalInfoDiseaseDetailsParamsImpl &&
            (identical(other.diseaseId, diseaseId) ||
                other.diseaseId == diseaseId) &&
            (identical(other.diseaseType, diseaseType) ||
                other.diseaseType == diseaseType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, diseaseId, diseaseType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMedicalInfoDiseaseDetailsParamsImplCopyWith<
          _$GetMedicalInfoDiseaseDetailsParamsImpl>
      get copyWith => __$$GetMedicalInfoDiseaseDetailsParamsImplCopyWithImpl<
          _$GetMedicalInfoDiseaseDetailsParamsImpl>(this, _$identity);
}

abstract class _GetMedicalInfoDiseaseDetailsParams
    implements GetMedicalInfoDiseaseDetailsParams {
  const factory _GetMedicalInfoDiseaseDetailsParams(
          {required final String diseaseId,
          required final String diseaseType}) =
      _$GetMedicalInfoDiseaseDetailsParamsImpl;

  @override
  String get diseaseId;
  @override
  String get diseaseType;
  @override
  @JsonKey(ignore: true)
  _$$GetMedicalInfoDiseaseDetailsParamsImplCopyWith<
          _$GetMedicalInfoDiseaseDetailsParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
