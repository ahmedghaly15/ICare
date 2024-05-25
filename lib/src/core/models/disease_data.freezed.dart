// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disease_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiseaseData _$DiseaseDataFromJson(Map<String, dynamic> json) {
  return _DiseaseData.fromJson(json);
}

/// @nodoc
mixin _$DiseaseData {
  @JsonKey(name: AppStrings.diseaseName)
  String get diseaseName => throw _privateConstructorUsedError;
  @JsonKey(name: AppStrings.diseaseImage)
  String get diseaseImage => throw _privateConstructorUsedError;
  @JsonKey(name: AppStrings.responseItemId)
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiseaseDataCopyWith<DiseaseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiseaseDataCopyWith<$Res> {
  factory $DiseaseDataCopyWith(
          DiseaseData value, $Res Function(DiseaseData) then) =
      _$DiseaseDataCopyWithImpl<$Res, DiseaseData>;
  @useResult
  $Res call(
      {@JsonKey(name: AppStrings.diseaseName) String diseaseName,
      @JsonKey(name: AppStrings.diseaseImage) String diseaseImage,
      @JsonKey(name: AppStrings.responseItemId) String id});
}

/// @nodoc
class _$DiseaseDataCopyWithImpl<$Res, $Val extends DiseaseData>
    implements $DiseaseDataCopyWith<$Res> {
  _$DiseaseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseName = null,
    Object? diseaseImage = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      diseaseName: null == diseaseName
          ? _value.diseaseName
          : diseaseName // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseImage: null == diseaseImage
          ? _value.diseaseImage
          : diseaseImage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiseaseDataImplCopyWith<$Res>
    implements $DiseaseDataCopyWith<$Res> {
  factory _$$DiseaseDataImplCopyWith(
          _$DiseaseDataImpl value, $Res Function(_$DiseaseDataImpl) then) =
      __$$DiseaseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AppStrings.diseaseName) String diseaseName,
      @JsonKey(name: AppStrings.diseaseImage) String diseaseImage,
      @JsonKey(name: AppStrings.responseItemId) String id});
}

/// @nodoc
class __$$DiseaseDataImplCopyWithImpl<$Res>
    extends _$DiseaseDataCopyWithImpl<$Res, _$DiseaseDataImpl>
    implements _$$DiseaseDataImplCopyWith<$Res> {
  __$$DiseaseDataImplCopyWithImpl(
      _$DiseaseDataImpl _value, $Res Function(_$DiseaseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseName = null,
    Object? diseaseImage = null,
    Object? id = null,
  }) {
    return _then(_$DiseaseDataImpl(
      diseaseName: null == diseaseName
          ? _value.diseaseName
          : diseaseName // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseImage: null == diseaseImage
          ? _value.diseaseImage
          : diseaseImage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiseaseDataImpl implements _DiseaseData {
  const _$DiseaseDataImpl(
      {@JsonKey(name: AppStrings.diseaseName) required this.diseaseName,
      @JsonKey(name: AppStrings.diseaseImage) required this.diseaseImage,
      @JsonKey(name: AppStrings.responseItemId) required this.id});

  factory _$DiseaseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiseaseDataImplFromJson(json);

  @override
  @JsonKey(name: AppStrings.diseaseName)
  final String diseaseName;
  @override
  @JsonKey(name: AppStrings.diseaseImage)
  final String diseaseImage;
  @override
  @JsonKey(name: AppStrings.responseItemId)
  final String id;

  @override
  String toString() {
    return 'DiseaseData(diseaseName: $diseaseName, diseaseImage: $diseaseImage, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiseaseDataImpl &&
            (identical(other.diseaseName, diseaseName) ||
                other.diseaseName == diseaseName) &&
            (identical(other.diseaseImage, diseaseImage) ||
                other.diseaseImage == diseaseImage) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, diseaseName, diseaseImage, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiseaseDataImplCopyWith<_$DiseaseDataImpl> get copyWith =>
      __$$DiseaseDataImplCopyWithImpl<_$DiseaseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiseaseDataImplToJson(
      this,
    );
  }
}

abstract class _DiseaseData implements DiseaseData {
  const factory _DiseaseData(
      {@JsonKey(name: AppStrings.diseaseName) required final String diseaseName,
      @JsonKey(name: AppStrings.diseaseImage)
      required final String diseaseImage,
      @JsonKey(name: AppStrings.responseItemId)
      required final String id}) = _$DiseaseDataImpl;

  factory _DiseaseData.fromJson(Map<String, dynamic> json) =
      _$DiseaseDataImpl.fromJson;

  @override
  @JsonKey(name: AppStrings.diseaseName)
  String get diseaseName;
  @override
  @JsonKey(name: AppStrings.diseaseImage)
  String get diseaseImage;
  @override
  @JsonKey(name: AppStrings.responseItemId)
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$DiseaseDataImplCopyWith<_$DiseaseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
