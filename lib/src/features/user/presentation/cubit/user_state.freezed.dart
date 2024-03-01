// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserDataLoading,
    required TResult Function(ICareUser user) getUserData,
    required TResult Function(String error) getUserDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserDataLoading,
    TResult? Function(ICareUser user)? getUserData,
    TResult? Function(String error)? getUserDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserDataLoading,
    TResult Function(ICareUser user)? getUserData,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitial<T> value) initial,
    required TResult Function(GetUserDataLoading<T> value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess<T> value) getUserData,
    required TResult Function(GetUserDataError<T> value) getUserDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitial<T> value)? initial,
    TResult? Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess<T> value)? getUserData,
    TResult? Function(GetUserDataError<T> value)? getUserDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitial<T> value)? initial,
    TResult Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess<T> value)? getUserData,
    TResult Function(GetUserDataError<T> value)? getUserDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<T, $Res> {
  factory $UserStateCopyWith(
          UserState<T> value, $Res Function(UserState<T>) then) =
      _$UserStateCopyWithImpl<T, $Res, UserState<T>>;
}

/// @nodoc
class _$UserStateCopyWithImpl<T, $Res, $Val extends UserState<T>>
    implements $UserStateCopyWith<T, $Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserInitialImplCopyWith<T, $Res> {
  factory _$$UserInitialImplCopyWith(_$UserInitialImpl<T> value,
          $Res Function(_$UserInitialImpl<T>) then) =
      __$$UserInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UserInitialImplCopyWithImpl<T, $Res>
    extends _$UserStateCopyWithImpl<T, $Res, _$UserInitialImpl<T>>
    implements _$$UserInitialImplCopyWith<T, $Res> {
  __$$UserInitialImplCopyWithImpl(
      _$UserInitialImpl<T> _value, $Res Function(_$UserInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInitialImpl<T> implements _UserInitial<T> {
  const _$UserInitialImpl();

  @override
  String toString() {
    return 'UserState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserDataLoading,
    required TResult Function(ICareUser user) getUserData,
    required TResult Function(String error) getUserDataError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserDataLoading,
    TResult? Function(ICareUser user)? getUserData,
    TResult? Function(String error)? getUserDataError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserDataLoading,
    TResult Function(ICareUser user)? getUserData,
    TResult Function(String error)? getUserDataError,
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
    required TResult Function(_UserInitial<T> value) initial,
    required TResult Function(GetUserDataLoading<T> value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess<T> value) getUserData,
    required TResult Function(GetUserDataError<T> value) getUserDataError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitial<T> value)? initial,
    TResult? Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess<T> value)? getUserData,
    TResult? Function(GetUserDataError<T> value)? getUserDataError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitial<T> value)? initial,
    TResult Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess<T> value)? getUserData,
    TResult Function(GetUserDataError<T> value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserInitial<T> implements UserState<T> {
  const factory _UserInitial() = _$UserInitialImpl<T>;
}

/// @nodoc
abstract class _$$GetUserDataLoadingImplCopyWith<T, $Res> {
  factory _$$GetUserDataLoadingImplCopyWith(_$GetUserDataLoadingImpl<T> value,
          $Res Function(_$GetUserDataLoadingImpl<T>) then) =
      __$$GetUserDataLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetUserDataLoadingImplCopyWithImpl<T, $Res>
    extends _$UserStateCopyWithImpl<T, $Res, _$GetUserDataLoadingImpl<T>>
    implements _$$GetUserDataLoadingImplCopyWith<T, $Res> {
  __$$GetUserDataLoadingImplCopyWithImpl(_$GetUserDataLoadingImpl<T> _value,
      $Res Function(_$GetUserDataLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserDataLoadingImpl<T> implements GetUserDataLoading<T> {
  const _$GetUserDataLoadingImpl();

  @override
  String toString() {
    return 'UserState<$T>.getUserDataLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserDataLoading,
    required TResult Function(ICareUser user) getUserData,
    required TResult Function(String error) getUserDataError,
  }) {
    return getUserDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserDataLoading,
    TResult? Function(ICareUser user)? getUserData,
    TResult? Function(String error)? getUserDataError,
  }) {
    return getUserDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserDataLoading,
    TResult Function(ICareUser user)? getUserData,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataLoading != null) {
      return getUserDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitial<T> value) initial,
    required TResult Function(GetUserDataLoading<T> value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess<T> value) getUserData,
    required TResult Function(GetUserDataError<T> value) getUserDataError,
  }) {
    return getUserDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitial<T> value)? initial,
    TResult? Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess<T> value)? getUserData,
    TResult? Function(GetUserDataError<T> value)? getUserDataError,
  }) {
    return getUserDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitial<T> value)? initial,
    TResult Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess<T> value)? getUserData,
    TResult Function(GetUserDataError<T> value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataLoading != null) {
      return getUserDataLoading(this);
    }
    return orElse();
  }
}

abstract class GetUserDataLoading<T> implements UserState<T> {
  const factory GetUserDataLoading() = _$GetUserDataLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetUserDataSuccessImplCopyWith<T, $Res> {
  factory _$$GetUserDataSuccessImplCopyWith(_$GetUserDataSuccessImpl<T> value,
          $Res Function(_$GetUserDataSuccessImpl<T>) then) =
      __$$GetUserDataSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ICareUser user});
}

/// @nodoc
class __$$GetUserDataSuccessImplCopyWithImpl<T, $Res>
    extends _$UserStateCopyWithImpl<T, $Res, _$GetUserDataSuccessImpl<T>>
    implements _$$GetUserDataSuccessImplCopyWith<T, $Res> {
  __$$GetUserDataSuccessImplCopyWithImpl(_$GetUserDataSuccessImpl<T> _value,
      $Res Function(_$GetUserDataSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$GetUserDataSuccessImpl<T>(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ICareUser,
    ));
  }
}

/// @nodoc

class _$GetUserDataSuccessImpl<T> implements GetUserDataSuccess<T> {
  const _$GetUserDataSuccessImpl(this.user);

  @override
  final ICareUser user;

  @override
  String toString() {
    return 'UserState<$T>.getUserData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataSuccessImpl<T> &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDataSuccessImplCopyWith<T, _$GetUserDataSuccessImpl<T>>
      get copyWith => __$$GetUserDataSuccessImplCopyWithImpl<T,
          _$GetUserDataSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserDataLoading,
    required TResult Function(ICareUser user) getUserData,
    required TResult Function(String error) getUserDataError,
  }) {
    return getUserData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserDataLoading,
    TResult? Function(ICareUser user)? getUserData,
    TResult? Function(String error)? getUserDataError,
  }) {
    return getUserData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserDataLoading,
    TResult Function(ICareUser user)? getUserData,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitial<T> value) initial,
    required TResult Function(GetUserDataLoading<T> value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess<T> value) getUserData,
    required TResult Function(GetUserDataError<T> value) getUserDataError,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitial<T> value)? initial,
    TResult? Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess<T> value)? getUserData,
    TResult? Function(GetUserDataError<T> value)? getUserDataError,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitial<T> value)? initial,
    TResult Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess<T> value)? getUserData,
    TResult Function(GetUserDataError<T> value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class GetUserDataSuccess<T> implements UserState<T> {
  const factory GetUserDataSuccess(final ICareUser user) =
      _$GetUserDataSuccessImpl<T>;

  ICareUser get user;
  @JsonKey(ignore: true)
  _$$GetUserDataSuccessImplCopyWith<T, _$GetUserDataSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDataErrorImplCopyWith<T, $Res> {
  factory _$$GetUserDataErrorImplCopyWith(_$GetUserDataErrorImpl<T> value,
          $Res Function(_$GetUserDataErrorImpl<T>) then) =
      __$$GetUserDataErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetUserDataErrorImplCopyWithImpl<T, $Res>
    extends _$UserStateCopyWithImpl<T, $Res, _$GetUserDataErrorImpl<T>>
    implements _$$GetUserDataErrorImplCopyWith<T, $Res> {
  __$$GetUserDataErrorImplCopyWithImpl(_$GetUserDataErrorImpl<T> _value,
      $Res Function(_$GetUserDataErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetUserDataErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserDataErrorImpl<T> implements GetUserDataError<T> {
  const _$GetUserDataErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'UserState<$T>.getUserDataError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDataErrorImplCopyWith<T, _$GetUserDataErrorImpl<T>> get copyWith =>
      __$$GetUserDataErrorImplCopyWithImpl<T, _$GetUserDataErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getUserDataLoading,
    required TResult Function(ICareUser user) getUserData,
    required TResult Function(String error) getUserDataError,
  }) {
    return getUserDataError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getUserDataLoading,
    TResult? Function(ICareUser user)? getUserData,
    TResult? Function(String error)? getUserDataError,
  }) {
    return getUserDataError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getUserDataLoading,
    TResult Function(ICareUser user)? getUserData,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataError != null) {
      return getUserDataError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitial<T> value) initial,
    required TResult Function(GetUserDataLoading<T> value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess<T> value) getUserData,
    required TResult Function(GetUserDataError<T> value) getUserDataError,
  }) {
    return getUserDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitial<T> value)? initial,
    TResult? Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess<T> value)? getUserData,
    TResult? Function(GetUserDataError<T> value)? getUserDataError,
  }) {
    return getUserDataError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitial<T> value)? initial,
    TResult Function(GetUserDataLoading<T> value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess<T> value)? getUserData,
    TResult Function(GetUserDataError<T> value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataError != null) {
      return getUserDataError(this);
    }
    return orElse();
  }
}

abstract class GetUserDataError<T> implements UserState<T> {
  const factory GetUserDataError(final String error) =
      _$GetUserDataErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetUserDataErrorImplCopyWith<T, _$GetUserDataErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
