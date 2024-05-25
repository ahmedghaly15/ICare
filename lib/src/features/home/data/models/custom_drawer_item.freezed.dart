// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_drawer_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomDrawerItem {
  String get title => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  VoidCallback get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomDrawerItemCopyWith<CustomDrawerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomDrawerItemCopyWith<$Res> {
  factory $CustomDrawerItemCopyWith(
          CustomDrawerItem value, $Res Function(CustomDrawerItem) then) =
      _$CustomDrawerItemCopyWithImpl<$Res, CustomDrawerItem>;
  @useResult
  $Res call({String title, IconData icon, VoidCallback onPressed});
}

/// @nodoc
class _$CustomDrawerItemCopyWithImpl<$Res, $Val extends CustomDrawerItem>
    implements $CustomDrawerItemCopyWith<$Res> {
  _$CustomDrawerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
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
              as IconData,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomDrawerItemImplCopyWith<$Res>
    implements $CustomDrawerItemCopyWith<$Res> {
  factory _$$CustomDrawerItemImplCopyWith(_$CustomDrawerItemImpl value,
          $Res Function(_$CustomDrawerItemImpl) then) =
      __$$CustomDrawerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, IconData icon, VoidCallback onPressed});
}

/// @nodoc
class __$$CustomDrawerItemImplCopyWithImpl<$Res>
    extends _$CustomDrawerItemCopyWithImpl<$Res, _$CustomDrawerItemImpl>
    implements _$$CustomDrawerItemImplCopyWith<$Res> {
  __$$CustomDrawerItemImplCopyWithImpl(_$CustomDrawerItemImpl _value,
      $Res Function(_$CustomDrawerItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? onPressed = null,
  }) {
    return _then(_$CustomDrawerItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$CustomDrawerItemImpl implements _CustomDrawerItem {
  const _$CustomDrawerItemImpl(
      {required this.title, required this.icon, required this.onPressed});

  @override
  final String title;
  @override
  final IconData icon;
  @override
  final VoidCallback onPressed;

  @override
  String toString() {
    return 'CustomDrawerItem(title: $title, icon: $icon, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomDrawerItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, icon, onPressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomDrawerItemImplCopyWith<_$CustomDrawerItemImpl> get copyWith =>
      __$$CustomDrawerItemImplCopyWithImpl<_$CustomDrawerItemImpl>(
          this, _$identity);
}

abstract class _CustomDrawerItem implements CustomDrawerItem {
  const factory _CustomDrawerItem(
      {required final String title,
      required final IconData icon,
      required final VoidCallback onPressed}) = _$CustomDrawerItemImpl;

  @override
  String get title;
  @override
  IconData get icon;
  @override
  VoidCallback get onPressed;
  @override
  @JsonKey(ignore: true)
  _$$CustomDrawerItemImplCopyWith<_$CustomDrawerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
