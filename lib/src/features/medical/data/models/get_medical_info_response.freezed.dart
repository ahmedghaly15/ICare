// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_medical_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMedicalInfoResponse _$GetMedicalInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _GetMedicalInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$GetMedicalInfoResponse {
  @JsonKey(name: AppStrings.diseaseType)
  String get diseaseType => throw _privateConstructorUsedError;
  @JsonKey(name: AppStrings.diseaseTypeImage)
  String get diseaseTypeImage => throw _privateConstructorUsedError;
  List<DiseaseData> get diseases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMedicalInfoResponseCopyWith<GetMedicalInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMedicalInfoResponseCopyWith<$Res> {
  factory $GetMedicalInfoResponseCopyWith(GetMedicalInfoResponse value,
          $Res Function(GetMedicalInfoResponse) then) =
      _$GetMedicalInfoResponseCopyWithImpl<$Res, GetMedicalInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: AppStrings.diseaseType) String diseaseType,
      @JsonKey(name: AppStrings.diseaseTypeImage) String diseaseTypeImage,
      List<DiseaseData> diseases});
}

/// @nodoc
class _$GetMedicalInfoResponseCopyWithImpl<$Res,
        $Val extends GetMedicalInfoResponse>
    implements $GetMedicalInfoResponseCopyWith<$Res> {
  _$GetMedicalInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseType = null,
    Object? diseaseTypeImage = null,
    Object? diseases = null,
  }) {
    return _then(_value.copyWith(
      diseaseType: null == diseaseType
          ? _value.diseaseType
          : diseaseType // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseTypeImage: null == diseaseTypeImage
          ? _value.diseaseTypeImage
          : diseaseTypeImage // ignore: cast_nullable_to_non_nullable
              as String,
      diseases: null == diseases
          ? _value.diseases
          : diseases // ignore: cast_nullable_to_non_nullable
              as List<DiseaseData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMedicalInfoResponseImplCopyWith<$Res>
    implements $GetMedicalInfoResponseCopyWith<$Res> {
  factory _$$GetMedicalInfoResponseImplCopyWith(
          _$GetMedicalInfoResponseImpl value,
          $Res Function(_$GetMedicalInfoResponseImpl) then) =
      __$$GetMedicalInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AppStrings.diseaseType) String diseaseType,
      @JsonKey(name: AppStrings.diseaseTypeImage) String diseaseTypeImage,
      List<DiseaseData> diseases});
}

/// @nodoc
class __$$GetMedicalInfoResponseImplCopyWithImpl<$Res>
    extends _$GetMedicalInfoResponseCopyWithImpl<$Res,
        _$GetMedicalInfoResponseImpl>
    implements _$$GetMedicalInfoResponseImplCopyWith<$Res> {
  __$$GetMedicalInfoResponseImplCopyWithImpl(
      _$GetMedicalInfoResponseImpl _value,
      $Res Function(_$GetMedicalInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseType = null,
    Object? diseaseTypeImage = null,
    Object? diseases = null,
  }) {
    return _then(_$GetMedicalInfoResponseImpl(
      diseaseType: null == diseaseType
          ? _value.diseaseType
          : diseaseType // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseTypeImage: null == diseaseTypeImage
          ? _value.diseaseTypeImage
          : diseaseTypeImage // ignore: cast_nullable_to_non_nullable
              as String,
      diseases: null == diseases
          ? _value._diseases
          : diseases // ignore: cast_nullable_to_non_nullable
              as List<DiseaseData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMedicalInfoResponseImpl implements _GetMedicalInfoResponse {
  const _$GetMedicalInfoResponseImpl(
      {@JsonKey(name: AppStrings.diseaseType) required this.diseaseType,
      @JsonKey(name: AppStrings.diseaseTypeImage)
      required this.diseaseTypeImage,
      required final List<DiseaseData> diseases})
      : _diseases = diseases;

  factory _$GetMedicalInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMedicalInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: AppStrings.diseaseType)
  final String diseaseType;
  @override
  @JsonKey(name: AppStrings.diseaseTypeImage)
  final String diseaseTypeImage;
  final List<DiseaseData> _diseases;
  @override
  List<DiseaseData> get diseases {
    if (_diseases is EqualUnmodifiableListView) return _diseases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diseases);
  }

  @override
  String toString() {
    return 'GetMedicalInfoResponse(diseaseType: $diseaseType, diseaseTypeImage: $diseaseTypeImage, diseases: $diseases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMedicalInfoResponseImpl &&
            (identical(other.diseaseType, diseaseType) ||
                other.diseaseType == diseaseType) &&
            (identical(other.diseaseTypeImage, diseaseTypeImage) ||
                other.diseaseTypeImage == diseaseTypeImage) &&
            const DeepCollectionEquality().equals(other._diseases, _diseases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, diseaseType, diseaseTypeImage,
      const DeepCollectionEquality().hash(_diseases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMedicalInfoResponseImplCopyWith<_$GetMedicalInfoResponseImpl>
      get copyWith => __$$GetMedicalInfoResponseImplCopyWithImpl<
          _$GetMedicalInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMedicalInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _GetMedicalInfoResponse implements GetMedicalInfoResponse {
  const factory _GetMedicalInfoResponse(
      {@JsonKey(name: AppStrings.diseaseType) required final String diseaseType,
      @JsonKey(name: AppStrings.diseaseTypeImage)
      required final String diseaseTypeImage,
      required final List<DiseaseData>
          diseases}) = _$GetMedicalInfoResponseImpl;

  factory _GetMedicalInfoResponse.fromJson(Map<String, dynamic> json) =
      _$GetMedicalInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: AppStrings.diseaseType)
  String get diseaseType;
  @override
  @JsonKey(name: AppStrings.diseaseTypeImage)
  String get diseaseTypeImage;
  @override
  List<DiseaseData> get diseases;
  @override
  @JsonKey(ignore: true)
  _$$GetMedicalInfoResponseImplCopyWith<_$GetMedicalInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
