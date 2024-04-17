// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScoreState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getScoreLoading,
    required TResult Function(ScoreResponse data) getScoreSuccess,
    required TResult Function(String error) getScoreError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getScoreLoading,
    TResult? Function(ScoreResponse data)? getScoreSuccess,
    TResult? Function(String error)? getScoreError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getScoreLoading,
    TResult Function(ScoreResponse data)? getScoreSuccess,
    TResult Function(String error)? getScoreError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreInitial<T> value) initial,
    required TResult Function(GetScoreLoading<T> value) getScoreLoading,
    required TResult Function(GetScoreSuccess<T> value) getScoreSuccess,
    required TResult Function(GetScoreError<T> value) getScoreError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScoreInitial<T> value)? initial,
    TResult? Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult? Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult? Function(GetScoreError<T> value)? getScoreError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreInitial<T> value)? initial,
    TResult Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult Function(GetScoreError<T> value)? getScoreError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreStateCopyWith<T, $Res> {
  factory $ScoreStateCopyWith(
          ScoreState<T> value, $Res Function(ScoreState<T>) then) =
      _$ScoreStateCopyWithImpl<T, $Res, ScoreState<T>>;
}

/// @nodoc
class _$ScoreStateCopyWithImpl<T, $Res, $Val extends ScoreState<T>>
    implements $ScoreStateCopyWith<T, $Res> {
  _$ScoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScoreInitialImplCopyWith<T, $Res> {
  factory _$$ScoreInitialImplCopyWith(_$ScoreInitialImpl<T> value,
          $Res Function(_$ScoreInitialImpl<T>) then) =
      __$$ScoreInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ScoreInitialImplCopyWithImpl<T, $Res>
    extends _$ScoreStateCopyWithImpl<T, $Res, _$ScoreInitialImpl<T>>
    implements _$$ScoreInitialImplCopyWith<T, $Res> {
  __$$ScoreInitialImplCopyWithImpl(
      _$ScoreInitialImpl<T> _value, $Res Function(_$ScoreInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScoreInitialImpl<T> implements _ScoreInitial<T> {
  const _$ScoreInitialImpl();

  @override
  String toString() {
    return 'ScoreState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScoreInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getScoreLoading,
    required TResult Function(ScoreResponse data) getScoreSuccess,
    required TResult Function(String error) getScoreError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getScoreLoading,
    TResult? Function(ScoreResponse data)? getScoreSuccess,
    TResult? Function(String error)? getScoreError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getScoreLoading,
    TResult Function(ScoreResponse data)? getScoreSuccess,
    TResult Function(String error)? getScoreError,
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
    required TResult Function(_ScoreInitial<T> value) initial,
    required TResult Function(GetScoreLoading<T> value) getScoreLoading,
    required TResult Function(GetScoreSuccess<T> value) getScoreSuccess,
    required TResult Function(GetScoreError<T> value) getScoreError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScoreInitial<T> value)? initial,
    TResult? Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult? Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult? Function(GetScoreError<T> value)? getScoreError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreInitial<T> value)? initial,
    TResult Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult Function(GetScoreError<T> value)? getScoreError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ScoreInitial<T> implements ScoreState<T> {
  const factory _ScoreInitial() = _$ScoreInitialImpl<T>;
}

/// @nodoc
abstract class _$$GetScoreLoadingImplCopyWith<T, $Res> {
  factory _$$GetScoreLoadingImplCopyWith(_$GetScoreLoadingImpl<T> value,
          $Res Function(_$GetScoreLoadingImpl<T>) then) =
      __$$GetScoreLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetScoreLoadingImplCopyWithImpl<T, $Res>
    extends _$ScoreStateCopyWithImpl<T, $Res, _$GetScoreLoadingImpl<T>>
    implements _$$GetScoreLoadingImplCopyWith<T, $Res> {
  __$$GetScoreLoadingImplCopyWithImpl(_$GetScoreLoadingImpl<T> _value,
      $Res Function(_$GetScoreLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetScoreLoadingImpl<T> implements GetScoreLoading<T> {
  const _$GetScoreLoadingImpl();

  @override
  String toString() {
    return 'ScoreState<$T>.getScoreLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetScoreLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getScoreLoading,
    required TResult Function(ScoreResponse data) getScoreSuccess,
    required TResult Function(String error) getScoreError,
  }) {
    return getScoreLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getScoreLoading,
    TResult? Function(ScoreResponse data)? getScoreSuccess,
    TResult? Function(String error)? getScoreError,
  }) {
    return getScoreLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getScoreLoading,
    TResult Function(ScoreResponse data)? getScoreSuccess,
    TResult Function(String error)? getScoreError,
    required TResult orElse(),
  }) {
    if (getScoreLoading != null) {
      return getScoreLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreInitial<T> value) initial,
    required TResult Function(GetScoreLoading<T> value) getScoreLoading,
    required TResult Function(GetScoreSuccess<T> value) getScoreSuccess,
    required TResult Function(GetScoreError<T> value) getScoreError,
  }) {
    return getScoreLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScoreInitial<T> value)? initial,
    TResult? Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult? Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult? Function(GetScoreError<T> value)? getScoreError,
  }) {
    return getScoreLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreInitial<T> value)? initial,
    TResult Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult Function(GetScoreError<T> value)? getScoreError,
    required TResult orElse(),
  }) {
    if (getScoreLoading != null) {
      return getScoreLoading(this);
    }
    return orElse();
  }
}

abstract class GetScoreLoading<T> implements ScoreState<T> {
  const factory GetScoreLoading() = _$GetScoreLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetScoreSuccessImplCopyWith<T, $Res> {
  factory _$$GetScoreSuccessImplCopyWith(_$GetScoreSuccessImpl<T> value,
          $Res Function(_$GetScoreSuccessImpl<T>) then) =
      __$$GetScoreSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ScoreResponse data});
}

/// @nodoc
class __$$GetScoreSuccessImplCopyWithImpl<T, $Res>
    extends _$ScoreStateCopyWithImpl<T, $Res, _$GetScoreSuccessImpl<T>>
    implements _$$GetScoreSuccessImplCopyWith<T, $Res> {
  __$$GetScoreSuccessImplCopyWithImpl(_$GetScoreSuccessImpl<T> _value,
      $Res Function(_$GetScoreSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetScoreSuccessImpl<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ScoreResponse,
    ));
  }
}

/// @nodoc

class _$GetScoreSuccessImpl<T> implements GetScoreSuccess<T> {
  const _$GetScoreSuccessImpl(this.data);

  @override
  final ScoreResponse data;

  @override
  String toString() {
    return 'ScoreState<$T>.getScoreSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetScoreSuccessImpl<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetScoreSuccessImplCopyWith<T, _$GetScoreSuccessImpl<T>> get copyWith =>
      __$$GetScoreSuccessImplCopyWithImpl<T, _$GetScoreSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getScoreLoading,
    required TResult Function(ScoreResponse data) getScoreSuccess,
    required TResult Function(String error) getScoreError,
  }) {
    return getScoreSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getScoreLoading,
    TResult? Function(ScoreResponse data)? getScoreSuccess,
    TResult? Function(String error)? getScoreError,
  }) {
    return getScoreSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getScoreLoading,
    TResult Function(ScoreResponse data)? getScoreSuccess,
    TResult Function(String error)? getScoreError,
    required TResult orElse(),
  }) {
    if (getScoreSuccess != null) {
      return getScoreSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreInitial<T> value) initial,
    required TResult Function(GetScoreLoading<T> value) getScoreLoading,
    required TResult Function(GetScoreSuccess<T> value) getScoreSuccess,
    required TResult Function(GetScoreError<T> value) getScoreError,
  }) {
    return getScoreSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScoreInitial<T> value)? initial,
    TResult? Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult? Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult? Function(GetScoreError<T> value)? getScoreError,
  }) {
    return getScoreSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreInitial<T> value)? initial,
    TResult Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult Function(GetScoreError<T> value)? getScoreError,
    required TResult orElse(),
  }) {
    if (getScoreSuccess != null) {
      return getScoreSuccess(this);
    }
    return orElse();
  }
}

abstract class GetScoreSuccess<T> implements ScoreState<T> {
  const factory GetScoreSuccess(final ScoreResponse data) =
      _$GetScoreSuccessImpl<T>;

  ScoreResponse get data;
  @JsonKey(ignore: true)
  _$$GetScoreSuccessImplCopyWith<T, _$GetScoreSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetScoreErrorImplCopyWith<T, $Res> {
  factory _$$GetScoreErrorImplCopyWith(_$GetScoreErrorImpl<T> value,
          $Res Function(_$GetScoreErrorImpl<T>) then) =
      __$$GetScoreErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetScoreErrorImplCopyWithImpl<T, $Res>
    extends _$ScoreStateCopyWithImpl<T, $Res, _$GetScoreErrorImpl<T>>
    implements _$$GetScoreErrorImplCopyWith<T, $Res> {
  __$$GetScoreErrorImplCopyWithImpl(_$GetScoreErrorImpl<T> _value,
      $Res Function(_$GetScoreErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetScoreErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetScoreErrorImpl<T> implements GetScoreError<T> {
  const _$GetScoreErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ScoreState<$T>.getScoreError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetScoreErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetScoreErrorImplCopyWith<T, _$GetScoreErrorImpl<T>> get copyWith =>
      __$$GetScoreErrorImplCopyWithImpl<T, _$GetScoreErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getScoreLoading,
    required TResult Function(ScoreResponse data) getScoreSuccess,
    required TResult Function(String error) getScoreError,
  }) {
    return getScoreError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getScoreLoading,
    TResult? Function(ScoreResponse data)? getScoreSuccess,
    TResult? Function(String error)? getScoreError,
  }) {
    return getScoreError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getScoreLoading,
    TResult Function(ScoreResponse data)? getScoreSuccess,
    TResult Function(String error)? getScoreError,
    required TResult orElse(),
  }) {
    if (getScoreError != null) {
      return getScoreError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreInitial<T> value) initial,
    required TResult Function(GetScoreLoading<T> value) getScoreLoading,
    required TResult Function(GetScoreSuccess<T> value) getScoreSuccess,
    required TResult Function(GetScoreError<T> value) getScoreError,
  }) {
    return getScoreError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScoreInitial<T> value)? initial,
    TResult? Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult? Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult? Function(GetScoreError<T> value)? getScoreError,
  }) {
    return getScoreError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreInitial<T> value)? initial,
    TResult Function(GetScoreLoading<T> value)? getScoreLoading,
    TResult Function(GetScoreSuccess<T> value)? getScoreSuccess,
    TResult Function(GetScoreError<T> value)? getScoreError,
    required TResult orElse(),
  }) {
    if (getScoreError != null) {
      return getScoreError(this);
    }
    return orElse();
  }
}

abstract class GetScoreError<T> implements ScoreState<T> {
  const factory GetScoreError(final String error) = _$GetScoreErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetScoreErrorImplCopyWith<T, _$GetScoreErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
