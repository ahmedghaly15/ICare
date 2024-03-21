// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tiny_tales_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TinyTalesState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TinyTalesInitial<T> value) initial,
    required TResult Function(CreateTinyTaleLoading<T> value) loading,
    required TResult Function(CreateTinyTaleSuccess<T> value) success,
    required TResult Function(CreateTinyTaleError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TinyTalesInitial<T> value)? initial,
    TResult? Function(CreateTinyTaleLoading<T> value)? loading,
    TResult? Function(CreateTinyTaleSuccess<T> value)? success,
    TResult? Function(CreateTinyTaleError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TinyTalesInitial<T> value)? initial,
    TResult Function(CreateTinyTaleLoading<T> value)? loading,
    TResult Function(CreateTinyTaleSuccess<T> value)? success,
    TResult Function(CreateTinyTaleError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TinyTalesStateCopyWith<T, $Res> {
  factory $TinyTalesStateCopyWith(
          TinyTalesState<T> value, $Res Function(TinyTalesState<T>) then) =
      _$TinyTalesStateCopyWithImpl<T, $Res, TinyTalesState<T>>;
}

/// @nodoc
class _$TinyTalesStateCopyWithImpl<T, $Res, $Val extends TinyTalesState<T>>
    implements $TinyTalesStateCopyWith<T, $Res> {
  _$TinyTalesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TinyTalesInitialImplCopyWith<T, $Res> {
  factory _$$TinyTalesInitialImplCopyWith(_$TinyTalesInitialImpl<T> value,
          $Res Function(_$TinyTalesInitialImpl<T>) then) =
      __$$TinyTalesInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TinyTalesInitialImplCopyWithImpl<T, $Res>
    extends _$TinyTalesStateCopyWithImpl<T, $Res, _$TinyTalesInitialImpl<T>>
    implements _$$TinyTalesInitialImplCopyWith<T, $Res> {
  __$$TinyTalesInitialImplCopyWithImpl(_$TinyTalesInitialImpl<T> _value,
      $Res Function(_$TinyTalesInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TinyTalesInitialImpl<T> implements _TinyTalesInitial<T> {
  const _$TinyTalesInitialImpl();

  @override
  String toString() {
    return 'TinyTalesState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TinyTalesInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
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
    required TResult Function(_TinyTalesInitial<T> value) initial,
    required TResult Function(CreateTinyTaleLoading<T> value) loading,
    required TResult Function(CreateTinyTaleSuccess<T> value) success,
    required TResult Function(CreateTinyTaleError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TinyTalesInitial<T> value)? initial,
    TResult? Function(CreateTinyTaleLoading<T> value)? loading,
    TResult? Function(CreateTinyTaleSuccess<T> value)? success,
    TResult? Function(CreateTinyTaleError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TinyTalesInitial<T> value)? initial,
    TResult Function(CreateTinyTaleLoading<T> value)? loading,
    TResult Function(CreateTinyTaleSuccess<T> value)? success,
    TResult Function(CreateTinyTaleError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TinyTalesInitial<T> implements TinyTalesState<T> {
  const factory _TinyTalesInitial() = _$TinyTalesInitialImpl<T>;
}

/// @nodoc
abstract class _$$CreateTinyTaleLoadingImplCopyWith<T, $Res> {
  factory _$$CreateTinyTaleLoadingImplCopyWith(
          _$CreateTinyTaleLoadingImpl<T> value,
          $Res Function(_$CreateTinyTaleLoadingImpl<T>) then) =
      __$$CreateTinyTaleLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CreateTinyTaleLoadingImplCopyWithImpl<T, $Res>
    extends _$TinyTalesStateCopyWithImpl<T, $Res,
        _$CreateTinyTaleLoadingImpl<T>>
    implements _$$CreateTinyTaleLoadingImplCopyWith<T, $Res> {
  __$$CreateTinyTaleLoadingImplCopyWithImpl(
      _$CreateTinyTaleLoadingImpl<T> _value,
      $Res Function(_$CreateTinyTaleLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateTinyTaleLoadingImpl<T> implements CreateTinyTaleLoading<T> {
  const _$CreateTinyTaleLoadingImpl();

  @override
  String toString() {
    return 'TinyTalesState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTinyTaleLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TinyTalesInitial<T> value) initial,
    required TResult Function(CreateTinyTaleLoading<T> value) loading,
    required TResult Function(CreateTinyTaleSuccess<T> value) success,
    required TResult Function(CreateTinyTaleError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TinyTalesInitial<T> value)? initial,
    TResult? Function(CreateTinyTaleLoading<T> value)? loading,
    TResult? Function(CreateTinyTaleSuccess<T> value)? success,
    TResult? Function(CreateTinyTaleError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TinyTalesInitial<T> value)? initial,
    TResult Function(CreateTinyTaleLoading<T> value)? loading,
    TResult Function(CreateTinyTaleSuccess<T> value)? success,
    TResult Function(CreateTinyTaleError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateTinyTaleLoading<T> implements TinyTalesState<T> {
  const factory CreateTinyTaleLoading() = _$CreateTinyTaleLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CreateTinyTaleSuccessImplCopyWith<T, $Res> {
  factory _$$CreateTinyTaleSuccessImplCopyWith(
          _$CreateTinyTaleSuccessImpl<T> value,
          $Res Function(_$CreateTinyTaleSuccessImpl<T>) then) =
      __$$CreateTinyTaleSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CreateTinyTaleSuccessImplCopyWithImpl<T, $Res>
    extends _$TinyTalesStateCopyWithImpl<T, $Res,
        _$CreateTinyTaleSuccessImpl<T>>
    implements _$$CreateTinyTaleSuccessImplCopyWith<T, $Res> {
  __$$CreateTinyTaleSuccessImplCopyWithImpl(
      _$CreateTinyTaleSuccessImpl<T> _value,
      $Res Function(_$CreateTinyTaleSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CreateTinyTaleSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CreateTinyTaleSuccessImpl<T> implements CreateTinyTaleSuccess<T> {
  const _$CreateTinyTaleSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'TinyTalesState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTinyTaleSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTinyTaleSuccessImplCopyWith<T, _$CreateTinyTaleSuccessImpl<T>>
      get copyWith => __$$CreateTinyTaleSuccessImplCopyWithImpl<T,
          _$CreateTinyTaleSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TinyTalesInitial<T> value) initial,
    required TResult Function(CreateTinyTaleLoading<T> value) loading,
    required TResult Function(CreateTinyTaleSuccess<T> value) success,
    required TResult Function(CreateTinyTaleError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TinyTalesInitial<T> value)? initial,
    TResult? Function(CreateTinyTaleLoading<T> value)? loading,
    TResult? Function(CreateTinyTaleSuccess<T> value)? success,
    TResult? Function(CreateTinyTaleError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TinyTalesInitial<T> value)? initial,
    TResult Function(CreateTinyTaleLoading<T> value)? loading,
    TResult Function(CreateTinyTaleSuccess<T> value)? success,
    TResult Function(CreateTinyTaleError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CreateTinyTaleSuccess<T> implements TinyTalesState<T> {
  const factory CreateTinyTaleSuccess(final T data) =
      _$CreateTinyTaleSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$CreateTinyTaleSuccessImplCopyWith<T, _$CreateTinyTaleSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTinyTaleErrorImplCopyWith<T, $Res> {
  factory _$$CreateTinyTaleErrorImplCopyWith(_$CreateTinyTaleErrorImpl<T> value,
          $Res Function(_$CreateTinyTaleErrorImpl<T>) then) =
      __$$CreateTinyTaleErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreateTinyTaleErrorImplCopyWithImpl<T, $Res>
    extends _$TinyTalesStateCopyWithImpl<T, $Res, _$CreateTinyTaleErrorImpl<T>>
    implements _$$CreateTinyTaleErrorImplCopyWith<T, $Res> {
  __$$CreateTinyTaleErrorImplCopyWithImpl(_$CreateTinyTaleErrorImpl<T> _value,
      $Res Function(_$CreateTinyTaleErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreateTinyTaleErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateTinyTaleErrorImpl<T> implements CreateTinyTaleError<T> {
  const _$CreateTinyTaleErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TinyTalesState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTinyTaleErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTinyTaleErrorImplCopyWith<T, _$CreateTinyTaleErrorImpl<T>>
      get copyWith => __$$CreateTinyTaleErrorImplCopyWithImpl<T,
          _$CreateTinyTaleErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TinyTalesInitial<T> value) initial,
    required TResult Function(CreateTinyTaleLoading<T> value) loading,
    required TResult Function(CreateTinyTaleSuccess<T> value) success,
    required TResult Function(CreateTinyTaleError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TinyTalesInitial<T> value)? initial,
    TResult? Function(CreateTinyTaleLoading<T> value)? loading,
    TResult? Function(CreateTinyTaleSuccess<T> value)? success,
    TResult? Function(CreateTinyTaleError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TinyTalesInitial<T> value)? initial,
    TResult Function(CreateTinyTaleLoading<T> value)? loading,
    TResult Function(CreateTinyTaleSuccess<T> value)? success,
    TResult Function(CreateTinyTaleError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateTinyTaleError<T> implements TinyTalesState<T> {
  const factory CreateTinyTaleError(final String message) =
      _$CreateTinyTaleErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$CreateTinyTaleErrorImplCopyWith<T, _$CreateTinyTaleErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
