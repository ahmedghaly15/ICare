// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ai_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeAIFeature {
  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  VoidCallback get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeAIFeatureCopyWith<HomeAIFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAIFeatureCopyWith<$Res> {
  factory $HomeAIFeatureCopyWith(
          HomeAIFeature value, $Res Function(HomeAIFeature) then) =
      _$HomeAIFeatureCopyWithImpl<$Res, HomeAIFeature>;
  @useResult
  $Res call(
      {String title,
      String icon,
      String description,
      String image,
      VoidCallback onPressed});
}

/// @nodoc
class _$HomeAIFeatureCopyWithImpl<$Res, $Val extends HomeAIFeature>
    implements $HomeAIFeatureCopyWith<$Res> {
  _$HomeAIFeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? description = null,
    Object? image = null,
    Object? onPressed = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeAIFeatureImplCopyWith<$Res>
    implements $HomeAIFeatureCopyWith<$Res> {
  factory _$$HomeAIFeatureImplCopyWith(
          _$HomeAIFeatureImpl value, $Res Function(_$HomeAIFeatureImpl) then) =
      __$$HomeAIFeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String icon,
      String description,
      String image,
      VoidCallback onPressed});
}

/// @nodoc
class __$$HomeAIFeatureImplCopyWithImpl<$Res>
    extends _$HomeAIFeatureCopyWithImpl<$Res, _$HomeAIFeatureImpl>
    implements _$$HomeAIFeatureImplCopyWith<$Res> {
  __$$HomeAIFeatureImplCopyWithImpl(
      _$HomeAIFeatureImpl _value, $Res Function(_$HomeAIFeatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? description = null,
    Object? image = null,
    Object? onPressed = null,
  }) {
    return _then(_$HomeAIFeatureImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$HomeAIFeatureImpl implements _HomeAIFeature {
  const _$HomeAIFeatureImpl(
      {required this.title,
      required this.icon,
      required this.description,
      required this.image,
      required this.onPressed});

  @override
  final String title;
  @override
  final String icon;
  @override
  final String description;
  @override
  final String image;
  @override
  final VoidCallback onPressed;

  @override
  String toString() {
    return 'HomeAIFeature(title: $title, icon: $icon, description: $description, image: $image, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeAIFeatureImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, icon, description, image, onPressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeAIFeatureImplCopyWith<_$HomeAIFeatureImpl> get copyWith =>
      __$$HomeAIFeatureImplCopyWithImpl<_$HomeAIFeatureImpl>(this, _$identity);
}

abstract class _HomeAIFeature implements HomeAIFeature {
  const factory _HomeAIFeature(
      {required final String title,
      required final String icon,
      required final String description,
      required final String image,
      required final VoidCallback onPressed}) = _$HomeAIFeatureImpl;

  @override
  String get title;
  @override
  String get icon;
  @override
  String get description;
  @override
  String get image;
  @override
  VoidCallback get onPressed;
  @override
  @JsonKey(ignore: true)
  _$$HomeAIFeatureImplCopyWith<_$HomeAIFeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
