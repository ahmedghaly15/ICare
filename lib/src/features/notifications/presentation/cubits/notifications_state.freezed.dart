// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendNotificationSuccess,
    required TResult Function(String error) sendNotificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendNotificationSuccess,
    TResult? Function(String error)? sendNotificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendNotificationSuccess,
    TResult Function(String error)? sendNotificationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_SendNotificationSuccess<T> value)
        sendNotificationSuccess,
    required TResult Function(_SendNotificationError<T> value)
        sendNotificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_SendNotificationSuccess<T> value)?
        sendNotificationSuccess,
    TResult? Function(_SendNotificationError<T> value)? sendNotificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_SendNotificationSuccess<T> value)?
        sendNotificationSuccess,
    TResult Function(_SendNotificationError<T> value)? sendNotificationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<T, $Res> {
  factory $NotificationsStateCopyWith(NotificationsState<T> value,
          $Res Function(NotificationsState<T>) then) =
      _$NotificationsStateCopyWithImpl<T, $Res, NotificationsState<T>>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<T, $Res,
        $Val extends NotificationsState<T>>
    implements $NotificationsStateCopyWith<T, $Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

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
    extends _$NotificationsStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'NotificationsState<$T>.initial()';
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
    required TResult Function() sendNotificationSuccess,
    required TResult Function(String error) sendNotificationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendNotificationSuccess,
    TResult? Function(String error)? sendNotificationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendNotificationSuccess,
    TResult Function(String error)? sendNotificationError,
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
    required TResult Function(_SendNotificationSuccess<T> value)
        sendNotificationSuccess,
    required TResult Function(_SendNotificationError<T> value)
        sendNotificationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_SendNotificationSuccess<T> value)?
        sendNotificationSuccess,
    TResult? Function(_SendNotificationError<T> value)? sendNotificationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_SendNotificationSuccess<T> value)?
        sendNotificationSuccess,
    TResult Function(_SendNotificationError<T> value)? sendNotificationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements NotificationsState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SendNotificationSuccessImplCopyWith<T, $Res> {
  factory _$$SendNotificationSuccessImplCopyWith(
          _$SendNotificationSuccessImpl<T> value,
          $Res Function(_$SendNotificationSuccessImpl<T>) then) =
      __$$SendNotificationSuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SendNotificationSuccessImplCopyWithImpl<T, $Res>
    extends _$NotificationsStateCopyWithImpl<T, $Res,
        _$SendNotificationSuccessImpl<T>>
    implements _$$SendNotificationSuccessImplCopyWith<T, $Res> {
  __$$SendNotificationSuccessImplCopyWithImpl(
      _$SendNotificationSuccessImpl<T> _value,
      $Res Function(_$SendNotificationSuccessImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendNotificationSuccessImpl<T> implements _SendNotificationSuccess<T> {
  const _$SendNotificationSuccessImpl();

  @override
  String toString() {
    return 'NotificationsState<$T>.sendNotificationSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNotificationSuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendNotificationSuccess,
    required TResult Function(String error) sendNotificationError,
  }) {
    return sendNotificationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendNotificationSuccess,
    TResult? Function(String error)? sendNotificationError,
  }) {
    return sendNotificationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendNotificationSuccess,
    TResult Function(String error)? sendNotificationError,
    required TResult orElse(),
  }) {
    if (sendNotificationSuccess != null) {
      return sendNotificationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_SendNotificationSuccess<T> value)
        sendNotificationSuccess,
    required TResult Function(_SendNotificationError<T> value)
        sendNotificationError,
  }) {
    return sendNotificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_SendNotificationSuccess<T> value)?
        sendNotificationSuccess,
    TResult? Function(_SendNotificationError<T> value)? sendNotificationError,
  }) {
    return sendNotificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_SendNotificationSuccess<T> value)?
        sendNotificationSuccess,
    TResult Function(_SendNotificationError<T> value)? sendNotificationError,
    required TResult orElse(),
  }) {
    if (sendNotificationSuccess != null) {
      return sendNotificationSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendNotificationSuccess<T> implements NotificationsState<T> {
  const factory _SendNotificationSuccess() = _$SendNotificationSuccessImpl<T>;
}

/// @nodoc
abstract class _$$SendNotificationErrorImplCopyWith<T, $Res> {
  factory _$$SendNotificationErrorImplCopyWith(
          _$SendNotificationErrorImpl<T> value,
          $Res Function(_$SendNotificationErrorImpl<T>) then) =
      __$$SendNotificationErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SendNotificationErrorImplCopyWithImpl<T, $Res>
    extends _$NotificationsStateCopyWithImpl<T, $Res,
        _$SendNotificationErrorImpl<T>>
    implements _$$SendNotificationErrorImplCopyWith<T, $Res> {
  __$$SendNotificationErrorImplCopyWithImpl(
      _$SendNotificationErrorImpl<T> _value,
      $Res Function(_$SendNotificationErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SendNotificationErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendNotificationErrorImpl<T> implements _SendNotificationError<T> {
  const _$SendNotificationErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'NotificationsState<$T>.sendNotificationError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNotificationErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNotificationErrorImplCopyWith<T, _$SendNotificationErrorImpl<T>>
      get copyWith => __$$SendNotificationErrorImplCopyWithImpl<T,
          _$SendNotificationErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendNotificationSuccess,
    required TResult Function(String error) sendNotificationError,
  }) {
    return sendNotificationError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendNotificationSuccess,
    TResult? Function(String error)? sendNotificationError,
  }) {
    return sendNotificationError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendNotificationSuccess,
    TResult Function(String error)? sendNotificationError,
    required TResult orElse(),
  }) {
    if (sendNotificationError != null) {
      return sendNotificationError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_SendNotificationSuccess<T> value)
        sendNotificationSuccess,
    required TResult Function(_SendNotificationError<T> value)
        sendNotificationError,
  }) {
    return sendNotificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_SendNotificationSuccess<T> value)?
        sendNotificationSuccess,
    TResult? Function(_SendNotificationError<T> value)? sendNotificationError,
  }) {
    return sendNotificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_SendNotificationSuccess<T> value)?
        sendNotificationSuccess,
    TResult Function(_SendNotificationError<T> value)? sendNotificationError,
    required TResult orElse(),
  }) {
    if (sendNotificationError != null) {
      return sendNotificationError(this);
    }
    return orElse();
  }
}

abstract class _SendNotificationError<T> implements NotificationsState<T> {
  const factory _SendNotificationError(final String error) =
      _$SendNotificationErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$SendNotificationErrorImplCopyWith<T, _$SendNotificationErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
