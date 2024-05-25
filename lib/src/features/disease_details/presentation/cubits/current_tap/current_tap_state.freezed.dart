// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_tap_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentTapState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) updateCurrentTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? updateCurrentTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? updateCurrentTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(UpdateCurrentTab<T> value) updateCurrentTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(UpdateCurrentTab<T> value)? updateCurrentTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(UpdateCurrentTab<T> value)? updateCurrentTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTapStateCopyWith<T, $Res> {
  factory $CurrentTapStateCopyWith(
          CurrentTapState<T> value, $Res Function(CurrentTapState<T>) then) =
      _$CurrentTapStateCopyWithImpl<T, $Res, CurrentTapState<T>>;
}

/// @nodoc
class _$CurrentTapStateCopyWithImpl<T, $Res, $Val extends CurrentTapState<T>>
    implements $CurrentTapStateCopyWith<T, $Res> {
  _$CurrentTapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$CurrentTapStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CurrentTapState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) updateCurrentTab,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? updateCurrentTab,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? updateCurrentTab,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(UpdateCurrentTab<T> value) updateCurrentTab,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(UpdateCurrentTab<T> value)? updateCurrentTab,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(UpdateCurrentTab<T> value)? updateCurrentTab,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements CurrentTapState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$UpdateCurrentTabImplCopyWith<T, $Res> {
  factory _$$UpdateCurrentTabImplCopyWith(_$UpdateCurrentTabImpl<T> value,
          $Res Function(_$UpdateCurrentTabImpl<T>) then) =
      __$$UpdateCurrentTabImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateCurrentTabImplCopyWithImpl<T, $Res>
    extends _$CurrentTapStateCopyWithImpl<T, $Res, _$UpdateCurrentTabImpl<T>>
    implements _$$UpdateCurrentTabImplCopyWith<T, $Res> {
  __$$UpdateCurrentTabImplCopyWithImpl(_$UpdateCurrentTabImpl<T> _value,
      $Res Function(_$UpdateCurrentTabImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateCurrentTabImpl<T>(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentTabImpl<T> implements UpdateCurrentTab<T> {
  const _$UpdateCurrentTabImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CurrentTapState<$T>.updateCurrentTab(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentTabImpl<T> &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentTabImplCopyWith<T, _$UpdateCurrentTabImpl<T>> get copyWith =>
      __$$UpdateCurrentTabImplCopyWithImpl<T, _$UpdateCurrentTabImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) updateCurrentTab,
  }) {
    return updateCurrentTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? updateCurrentTab,
  }) {
    return updateCurrentTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? updateCurrentTab,
    required TResult orElse(),
  }) {
    if (updateCurrentTab != null) {
      return updateCurrentTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(UpdateCurrentTab<T> value) updateCurrentTab,
  }) {
    return updateCurrentTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(UpdateCurrentTab<T> value)? updateCurrentTab,
  }) {
    return updateCurrentTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(UpdateCurrentTab<T> value)? updateCurrentTab,
    required TResult orElse(),
  }) {
    if (updateCurrentTab != null) {
      return updateCurrentTab(this);
    }
    return orElse();
  }
}

abstract class UpdateCurrentTab<T> implements CurrentTapState<T> {
  const factory UpdateCurrentTab(final int index) = _$UpdateCurrentTabImpl<T>;

  int get index;
  @JsonKey(ignore: true)
  _$$UpdateCurrentTabImplCopyWith<T, _$UpdateCurrentTabImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
