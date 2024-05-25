// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingItem {
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingItemCopyWith<OnboardingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingItemCopyWith<$Res> {
  factory $OnboardingItemCopyWith(
          OnboardingItem value, $Res Function(OnboardingItem) then) =
      _$OnboardingItemCopyWithImpl<$Res, OnboardingItem>;
  @useResult
  $Res call({String image, String description});
}

/// @nodoc
class _$OnboardingItemCopyWithImpl<$Res, $Val extends OnboardingItem>
    implements $OnboardingItemCopyWith<$Res> {
  _$OnboardingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingItemImplCopyWith<$Res>
    implements $OnboardingItemCopyWith<$Res> {
  factory _$$OnboardingItemImplCopyWith(_$OnboardingItemImpl value,
          $Res Function(_$OnboardingItemImpl) then) =
      __$$OnboardingItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String description});
}

/// @nodoc
class __$$OnboardingItemImplCopyWithImpl<$Res>
    extends _$OnboardingItemCopyWithImpl<$Res, _$OnboardingItemImpl>
    implements _$$OnboardingItemImplCopyWith<$Res> {
  __$$OnboardingItemImplCopyWithImpl(
      _$OnboardingItemImpl _value, $Res Function(_$OnboardingItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$OnboardingItemImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnboardingItemImpl implements _OnboardingItem {
  const _$OnboardingItemImpl({required this.image, required this.description});

  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'OnboardingItem(image: $image, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingItemImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingItemImplCopyWith<_$OnboardingItemImpl> get copyWith =>
      __$$OnboardingItemImplCopyWithImpl<_$OnboardingItemImpl>(
          this, _$identity);
}

abstract class _OnboardingItem implements OnboardingItem {
  const factory _OnboardingItem(
      {required final String image,
      required final String description}) = _$OnboardingItemImpl;

  @override
  String get image;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingItemImplCopyWith<_$OnboardingItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
