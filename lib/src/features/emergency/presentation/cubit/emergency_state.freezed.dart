// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmergencyState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEmergencyDiseasesLoading,
    required TResult Function(List<GetEmergencyDiseasesResponse> data)
        getEmergencyDiseasesSuccess,
    required TResult Function(String error) getEmergencyDiseasesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEmergencyDiseasesLoading,
    TResult? Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult? Function(String error)? getEmergencyDiseasesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEmergencyDiseasesLoading,
    TResult Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult Function(String error)? getEmergencyDiseasesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmergencyInitial<T> value) initial,
    required TResult Function(GetEmergencyDiseasesLoading<T> value)
        getEmergencyDiseasesLoading,
    required TResult Function(GetEmergencyDiseasesSuccess<T> value)
        getEmergencyDiseasesSuccess,
    required TResult Function(GetEmergencyDiseasesError<T> value)
        getEmergencyDiseasesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmergencyInitial<T> value)? initial,
    TResult? Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult? Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult? Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmergencyInitial<T> value)? initial,
    TResult Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyStateCopyWith<T, $Res> {
  factory $EmergencyStateCopyWith(
          EmergencyState<T> value, $Res Function(EmergencyState<T>) then) =
      _$EmergencyStateCopyWithImpl<T, $Res, EmergencyState<T>>;
}

/// @nodoc
class _$EmergencyStateCopyWithImpl<T, $Res, $Val extends EmergencyState<T>>
    implements $EmergencyStateCopyWith<T, $Res> {
  _$EmergencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmergencyInitialImplCopyWith<T, $Res> {
  factory _$$EmergencyInitialImplCopyWith(_$EmergencyInitialImpl<T> value,
          $Res Function(_$EmergencyInitialImpl<T>) then) =
      __$$EmergencyInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmergencyInitialImplCopyWithImpl<T, $Res>
    extends _$EmergencyStateCopyWithImpl<T, $Res, _$EmergencyInitialImpl<T>>
    implements _$$EmergencyInitialImplCopyWith<T, $Res> {
  __$$EmergencyInitialImplCopyWithImpl(_$EmergencyInitialImpl<T> _value,
      $Res Function(_$EmergencyInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmergencyInitialImpl<T> implements _EmergencyInitial<T> {
  const _$EmergencyInitialImpl();

  @override
  String toString() {
    return 'EmergencyState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergencyInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEmergencyDiseasesLoading,
    required TResult Function(List<GetEmergencyDiseasesResponse> data)
        getEmergencyDiseasesSuccess,
    required TResult Function(String error) getEmergencyDiseasesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEmergencyDiseasesLoading,
    TResult? Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult? Function(String error)? getEmergencyDiseasesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEmergencyDiseasesLoading,
    TResult Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult Function(String error)? getEmergencyDiseasesError,
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
    required TResult Function(_EmergencyInitial<T> value) initial,
    required TResult Function(GetEmergencyDiseasesLoading<T> value)
        getEmergencyDiseasesLoading,
    required TResult Function(GetEmergencyDiseasesSuccess<T> value)
        getEmergencyDiseasesSuccess,
    required TResult Function(GetEmergencyDiseasesError<T> value)
        getEmergencyDiseasesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmergencyInitial<T> value)? initial,
    TResult? Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult? Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult? Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmergencyInitial<T> value)? initial,
    TResult Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EmergencyInitial<T> implements EmergencyState<T> {
  const factory _EmergencyInitial() = _$EmergencyInitialImpl<T>;
}

/// @nodoc
abstract class _$$GetEmergencyDiseasesLoadingImplCopyWith<T, $Res> {
  factory _$$GetEmergencyDiseasesLoadingImplCopyWith(
          _$GetEmergencyDiseasesLoadingImpl<T> value,
          $Res Function(_$GetEmergencyDiseasesLoadingImpl<T>) then) =
      __$$GetEmergencyDiseasesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetEmergencyDiseasesLoadingImplCopyWithImpl<T, $Res>
    extends _$EmergencyStateCopyWithImpl<T, $Res,
        _$GetEmergencyDiseasesLoadingImpl<T>>
    implements _$$GetEmergencyDiseasesLoadingImplCopyWith<T, $Res> {
  __$$GetEmergencyDiseasesLoadingImplCopyWithImpl(
      _$GetEmergencyDiseasesLoadingImpl<T> _value,
      $Res Function(_$GetEmergencyDiseasesLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEmergencyDiseasesLoadingImpl<T>
    implements GetEmergencyDiseasesLoading<T> {
  const _$GetEmergencyDiseasesLoadingImpl();

  @override
  String toString() {
    return 'EmergencyState<$T>.getEmergencyDiseasesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmergencyDiseasesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEmergencyDiseasesLoading,
    required TResult Function(List<GetEmergencyDiseasesResponse> data)
        getEmergencyDiseasesSuccess,
    required TResult Function(String error) getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEmergencyDiseasesLoading,
    TResult? Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult? Function(String error)? getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEmergencyDiseasesLoading,
    TResult Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult Function(String error)? getEmergencyDiseasesError,
    required TResult orElse(),
  }) {
    if (getEmergencyDiseasesLoading != null) {
      return getEmergencyDiseasesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmergencyInitial<T> value) initial,
    required TResult Function(GetEmergencyDiseasesLoading<T> value)
        getEmergencyDiseasesLoading,
    required TResult Function(GetEmergencyDiseasesSuccess<T> value)
        getEmergencyDiseasesSuccess,
    required TResult Function(GetEmergencyDiseasesError<T> value)
        getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmergencyInitial<T> value)? initial,
    TResult? Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult? Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult? Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmergencyInitial<T> value)? initial,
    TResult Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
    required TResult orElse(),
  }) {
    if (getEmergencyDiseasesLoading != null) {
      return getEmergencyDiseasesLoading(this);
    }
    return orElse();
  }
}

abstract class GetEmergencyDiseasesLoading<T> implements EmergencyState<T> {
  const factory GetEmergencyDiseasesLoading() =
      _$GetEmergencyDiseasesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetEmergencyDiseasesSuccessImplCopyWith<T, $Res> {
  factory _$$GetEmergencyDiseasesSuccessImplCopyWith(
          _$GetEmergencyDiseasesSuccessImpl<T> value,
          $Res Function(_$GetEmergencyDiseasesSuccessImpl<T>) then) =
      __$$GetEmergencyDiseasesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<GetEmergencyDiseasesResponse> data});
}

/// @nodoc
class __$$GetEmergencyDiseasesSuccessImplCopyWithImpl<T, $Res>
    extends _$EmergencyStateCopyWithImpl<T, $Res,
        _$GetEmergencyDiseasesSuccessImpl<T>>
    implements _$$GetEmergencyDiseasesSuccessImplCopyWith<T, $Res> {
  __$$GetEmergencyDiseasesSuccessImplCopyWithImpl(
      _$GetEmergencyDiseasesSuccessImpl<T> _value,
      $Res Function(_$GetEmergencyDiseasesSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetEmergencyDiseasesSuccessImpl<T>(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetEmergencyDiseasesResponse>,
    ));
  }
}

/// @nodoc

class _$GetEmergencyDiseasesSuccessImpl<T>
    implements GetEmergencyDiseasesSuccess<T> {
  const _$GetEmergencyDiseasesSuccessImpl(
      final List<GetEmergencyDiseasesResponse> data)
      : _data = data;

  final List<GetEmergencyDiseasesResponse> _data;
  @override
  List<GetEmergencyDiseasesResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EmergencyState<$T>.getEmergencyDiseasesSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmergencyDiseasesSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmergencyDiseasesSuccessImplCopyWith<T,
          _$GetEmergencyDiseasesSuccessImpl<T>>
      get copyWith => __$$GetEmergencyDiseasesSuccessImplCopyWithImpl<T,
          _$GetEmergencyDiseasesSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEmergencyDiseasesLoading,
    required TResult Function(List<GetEmergencyDiseasesResponse> data)
        getEmergencyDiseasesSuccess,
    required TResult Function(String error) getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEmergencyDiseasesLoading,
    TResult? Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult? Function(String error)? getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEmergencyDiseasesLoading,
    TResult Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult Function(String error)? getEmergencyDiseasesError,
    required TResult orElse(),
  }) {
    if (getEmergencyDiseasesSuccess != null) {
      return getEmergencyDiseasesSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmergencyInitial<T> value) initial,
    required TResult Function(GetEmergencyDiseasesLoading<T> value)
        getEmergencyDiseasesLoading,
    required TResult Function(GetEmergencyDiseasesSuccess<T> value)
        getEmergencyDiseasesSuccess,
    required TResult Function(GetEmergencyDiseasesError<T> value)
        getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmergencyInitial<T> value)? initial,
    TResult? Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult? Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult? Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmergencyInitial<T> value)? initial,
    TResult Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
    required TResult orElse(),
  }) {
    if (getEmergencyDiseasesSuccess != null) {
      return getEmergencyDiseasesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetEmergencyDiseasesSuccess<T> implements EmergencyState<T> {
  const factory GetEmergencyDiseasesSuccess(
          final List<GetEmergencyDiseasesResponse> data) =
      _$GetEmergencyDiseasesSuccessImpl<T>;

  List<GetEmergencyDiseasesResponse> get data;
  @JsonKey(ignore: true)
  _$$GetEmergencyDiseasesSuccessImplCopyWith<T,
          _$GetEmergencyDiseasesSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEmergencyDiseasesErrorImplCopyWith<T, $Res> {
  factory _$$GetEmergencyDiseasesErrorImplCopyWith(
          _$GetEmergencyDiseasesErrorImpl<T> value,
          $Res Function(_$GetEmergencyDiseasesErrorImpl<T>) then) =
      __$$GetEmergencyDiseasesErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetEmergencyDiseasesErrorImplCopyWithImpl<T, $Res>
    extends _$EmergencyStateCopyWithImpl<T, $Res,
        _$GetEmergencyDiseasesErrorImpl<T>>
    implements _$$GetEmergencyDiseasesErrorImplCopyWith<T, $Res> {
  __$$GetEmergencyDiseasesErrorImplCopyWithImpl(
      _$GetEmergencyDiseasesErrorImpl<T> _value,
      $Res Function(_$GetEmergencyDiseasesErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetEmergencyDiseasesErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetEmergencyDiseasesErrorImpl<T>
    implements GetEmergencyDiseasesError<T> {
  const _$GetEmergencyDiseasesErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'EmergencyState<$T>.getEmergencyDiseasesError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmergencyDiseasesErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmergencyDiseasesErrorImplCopyWith<T,
          _$GetEmergencyDiseasesErrorImpl<T>>
      get copyWith => __$$GetEmergencyDiseasesErrorImplCopyWithImpl<T,
          _$GetEmergencyDiseasesErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getEmergencyDiseasesLoading,
    required TResult Function(List<GetEmergencyDiseasesResponse> data)
        getEmergencyDiseasesSuccess,
    required TResult Function(String error) getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getEmergencyDiseasesLoading,
    TResult? Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult? Function(String error)? getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getEmergencyDiseasesLoading,
    TResult Function(List<GetEmergencyDiseasesResponse> data)?
        getEmergencyDiseasesSuccess,
    TResult Function(String error)? getEmergencyDiseasesError,
    required TResult orElse(),
  }) {
    if (getEmergencyDiseasesError != null) {
      return getEmergencyDiseasesError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmergencyInitial<T> value) initial,
    required TResult Function(GetEmergencyDiseasesLoading<T> value)
        getEmergencyDiseasesLoading,
    required TResult Function(GetEmergencyDiseasesSuccess<T> value)
        getEmergencyDiseasesSuccess,
    required TResult Function(GetEmergencyDiseasesError<T> value)
        getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmergencyInitial<T> value)? initial,
    TResult? Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult? Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult? Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
  }) {
    return getEmergencyDiseasesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmergencyInitial<T> value)? initial,
    TResult Function(GetEmergencyDiseasesLoading<T> value)?
        getEmergencyDiseasesLoading,
    TResult Function(GetEmergencyDiseasesSuccess<T> value)?
        getEmergencyDiseasesSuccess,
    TResult Function(GetEmergencyDiseasesError<T> value)?
        getEmergencyDiseasesError,
    required TResult orElse(),
  }) {
    if (getEmergencyDiseasesError != null) {
      return getEmergencyDiseasesError(this);
    }
    return orElse();
  }
}

abstract class GetEmergencyDiseasesError<T> implements EmergencyState<T> {
  const factory GetEmergencyDiseasesError(final String error) =
      _$GetEmergencyDiseasesErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetEmergencyDiseasesErrorImplCopyWith<T,
          _$GetEmergencyDiseasesErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
