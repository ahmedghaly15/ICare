// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MedicalState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getMedicalLoading,
    required TResult Function(List<GetMedicalResponse> data) getMedicalSuccess,
    required TResult Function(String error) getMedicalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getMedicalLoading,
    TResult? Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult? Function(String error)? getMedicalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getMedicalLoading,
    TResult Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult Function(String error)? getMedicalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MedicalInitial<T> value) initial,
    required TResult Function(GetMedicalLoading<T> value) getMedicalLoading,
    required TResult Function(GetMedicalSuccess<T> value) getMedicalSuccess,
    required TResult Function(GetMedicalError<T> value) getMedicalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicalInitial<T> value)? initial,
    TResult? Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult? Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult? Function(GetMedicalError<T> value)? getMedicalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicalInitial<T> value)? initial,
    TResult Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult Function(GetMedicalError<T> value)? getMedicalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalStateCopyWith<T, $Res> {
  factory $MedicalStateCopyWith(
          MedicalState<T> value, $Res Function(MedicalState<T>) then) =
      _$MedicalStateCopyWithImpl<T, $Res, MedicalState<T>>;
}

/// @nodoc
class _$MedicalStateCopyWithImpl<T, $Res, $Val extends MedicalState<T>>
    implements $MedicalStateCopyWith<T, $Res> {
  _$MedicalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MedicalInitialImplCopyWith<T, $Res> {
  factory _$$MedicalInitialImplCopyWith(_$MedicalInitialImpl<T> value,
          $Res Function(_$MedicalInitialImpl<T>) then) =
      __$$MedicalInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MedicalInitialImplCopyWithImpl<T, $Res>
    extends _$MedicalStateCopyWithImpl<T, $Res, _$MedicalInitialImpl<T>>
    implements _$$MedicalInitialImplCopyWith<T, $Res> {
  __$$MedicalInitialImplCopyWithImpl(_$MedicalInitialImpl<T> _value,
      $Res Function(_$MedicalInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MedicalInitialImpl<T> implements _MedicalInitial<T> {
  const _$MedicalInitialImpl();

  @override
  String toString() {
    return 'MedicalState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MedicalInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getMedicalLoading,
    required TResult Function(List<GetMedicalResponse> data) getMedicalSuccess,
    required TResult Function(String error) getMedicalError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getMedicalLoading,
    TResult? Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult? Function(String error)? getMedicalError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getMedicalLoading,
    TResult Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult Function(String error)? getMedicalError,
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
    required TResult Function(_MedicalInitial<T> value) initial,
    required TResult Function(GetMedicalLoading<T> value) getMedicalLoading,
    required TResult Function(GetMedicalSuccess<T> value) getMedicalSuccess,
    required TResult Function(GetMedicalError<T> value) getMedicalError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicalInitial<T> value)? initial,
    TResult? Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult? Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult? Function(GetMedicalError<T> value)? getMedicalError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicalInitial<T> value)? initial,
    TResult Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult Function(GetMedicalError<T> value)? getMedicalError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MedicalInitial<T> implements MedicalState<T> {
  const factory _MedicalInitial() = _$MedicalInitialImpl<T>;
}

/// @nodoc
abstract class _$$GetMedicalLoadingImplCopyWith<T, $Res> {
  factory _$$GetMedicalLoadingImplCopyWith(_$GetMedicalLoadingImpl<T> value,
          $Res Function(_$GetMedicalLoadingImpl<T>) then) =
      __$$GetMedicalLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetMedicalLoadingImplCopyWithImpl<T, $Res>
    extends _$MedicalStateCopyWithImpl<T, $Res, _$GetMedicalLoadingImpl<T>>
    implements _$$GetMedicalLoadingImplCopyWith<T, $Res> {
  __$$GetMedicalLoadingImplCopyWithImpl(_$GetMedicalLoadingImpl<T> _value,
      $Res Function(_$GetMedicalLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMedicalLoadingImpl<T> implements GetMedicalLoading<T> {
  const _$GetMedicalLoadingImpl();

  @override
  String toString() {
    return 'MedicalState<$T>.getMedicalLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMedicalLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getMedicalLoading,
    required TResult Function(List<GetMedicalResponse> data) getMedicalSuccess,
    required TResult Function(String error) getMedicalError,
  }) {
    return getMedicalLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getMedicalLoading,
    TResult? Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult? Function(String error)? getMedicalError,
  }) {
    return getMedicalLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getMedicalLoading,
    TResult Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult Function(String error)? getMedicalError,
    required TResult orElse(),
  }) {
    if (getMedicalLoading != null) {
      return getMedicalLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MedicalInitial<T> value) initial,
    required TResult Function(GetMedicalLoading<T> value) getMedicalLoading,
    required TResult Function(GetMedicalSuccess<T> value) getMedicalSuccess,
    required TResult Function(GetMedicalError<T> value) getMedicalError,
  }) {
    return getMedicalLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicalInitial<T> value)? initial,
    TResult? Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult? Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult? Function(GetMedicalError<T> value)? getMedicalError,
  }) {
    return getMedicalLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicalInitial<T> value)? initial,
    TResult Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult Function(GetMedicalError<T> value)? getMedicalError,
    required TResult orElse(),
  }) {
    if (getMedicalLoading != null) {
      return getMedicalLoading(this);
    }
    return orElse();
  }
}

abstract class GetMedicalLoading<T> implements MedicalState<T> {
  const factory GetMedicalLoading() = _$GetMedicalLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetMedicalSuccessImplCopyWith<T, $Res> {
  factory _$$GetMedicalSuccessImplCopyWith(_$GetMedicalSuccessImpl<T> value,
          $Res Function(_$GetMedicalSuccessImpl<T>) then) =
      __$$GetMedicalSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<GetMedicalResponse> data});
}

/// @nodoc
class __$$GetMedicalSuccessImplCopyWithImpl<T, $Res>
    extends _$MedicalStateCopyWithImpl<T, $Res, _$GetMedicalSuccessImpl<T>>
    implements _$$GetMedicalSuccessImplCopyWith<T, $Res> {
  __$$GetMedicalSuccessImplCopyWithImpl(_$GetMedicalSuccessImpl<T> _value,
      $Res Function(_$GetMedicalSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetMedicalSuccessImpl<T>(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetMedicalResponse>,
    ));
  }
}

/// @nodoc

class _$GetMedicalSuccessImpl<T> implements GetMedicalSuccess<T> {
  const _$GetMedicalSuccessImpl(final List<GetMedicalResponse> data)
      : _data = data;

  final List<GetMedicalResponse> _data;
  @override
  List<GetMedicalResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MedicalState<$T>.getMedicalSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMedicalSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMedicalSuccessImplCopyWith<T, _$GetMedicalSuccessImpl<T>>
      get copyWith =>
          __$$GetMedicalSuccessImplCopyWithImpl<T, _$GetMedicalSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getMedicalLoading,
    required TResult Function(List<GetMedicalResponse> data) getMedicalSuccess,
    required TResult Function(String error) getMedicalError,
  }) {
    return getMedicalSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getMedicalLoading,
    TResult? Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult? Function(String error)? getMedicalError,
  }) {
    return getMedicalSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getMedicalLoading,
    TResult Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult Function(String error)? getMedicalError,
    required TResult orElse(),
  }) {
    if (getMedicalSuccess != null) {
      return getMedicalSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MedicalInitial<T> value) initial,
    required TResult Function(GetMedicalLoading<T> value) getMedicalLoading,
    required TResult Function(GetMedicalSuccess<T> value) getMedicalSuccess,
    required TResult Function(GetMedicalError<T> value) getMedicalError,
  }) {
    return getMedicalSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicalInitial<T> value)? initial,
    TResult? Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult? Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult? Function(GetMedicalError<T> value)? getMedicalError,
  }) {
    return getMedicalSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicalInitial<T> value)? initial,
    TResult Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult Function(GetMedicalError<T> value)? getMedicalError,
    required TResult orElse(),
  }) {
    if (getMedicalSuccess != null) {
      return getMedicalSuccess(this);
    }
    return orElse();
  }
}

abstract class GetMedicalSuccess<T> implements MedicalState<T> {
  const factory GetMedicalSuccess(final List<GetMedicalResponse> data) =
      _$GetMedicalSuccessImpl<T>;

  List<GetMedicalResponse> get data;
  @JsonKey(ignore: true)
  _$$GetMedicalSuccessImplCopyWith<T, _$GetMedicalSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMedicalErrorImplCopyWith<T, $Res> {
  factory _$$GetMedicalErrorImplCopyWith(_$GetMedicalErrorImpl<T> value,
          $Res Function(_$GetMedicalErrorImpl<T>) then) =
      __$$GetMedicalErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetMedicalErrorImplCopyWithImpl<T, $Res>
    extends _$MedicalStateCopyWithImpl<T, $Res, _$GetMedicalErrorImpl<T>>
    implements _$$GetMedicalErrorImplCopyWith<T, $Res> {
  __$$GetMedicalErrorImplCopyWithImpl(_$GetMedicalErrorImpl<T> _value,
      $Res Function(_$GetMedicalErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetMedicalErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMedicalErrorImpl<T> implements GetMedicalError<T> {
  const _$GetMedicalErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'MedicalState<$T>.getMedicalError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMedicalErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMedicalErrorImplCopyWith<T, _$GetMedicalErrorImpl<T>> get copyWith =>
      __$$GetMedicalErrorImplCopyWithImpl<T, _$GetMedicalErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getMedicalLoading,
    required TResult Function(List<GetMedicalResponse> data) getMedicalSuccess,
    required TResult Function(String error) getMedicalError,
  }) {
    return getMedicalError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getMedicalLoading,
    TResult? Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult? Function(String error)? getMedicalError,
  }) {
    return getMedicalError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getMedicalLoading,
    TResult Function(List<GetMedicalResponse> data)? getMedicalSuccess,
    TResult Function(String error)? getMedicalError,
    required TResult orElse(),
  }) {
    if (getMedicalError != null) {
      return getMedicalError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MedicalInitial<T> value) initial,
    required TResult Function(GetMedicalLoading<T> value) getMedicalLoading,
    required TResult Function(GetMedicalSuccess<T> value) getMedicalSuccess,
    required TResult Function(GetMedicalError<T> value) getMedicalError,
  }) {
    return getMedicalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MedicalInitial<T> value)? initial,
    TResult? Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult? Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult? Function(GetMedicalError<T> value)? getMedicalError,
  }) {
    return getMedicalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MedicalInitial<T> value)? initial,
    TResult Function(GetMedicalLoading<T> value)? getMedicalLoading,
    TResult Function(GetMedicalSuccess<T> value)? getMedicalSuccess,
    TResult Function(GetMedicalError<T> value)? getMedicalError,
    required TResult orElse(),
  }) {
    if (getMedicalError != null) {
      return getMedicalError(this);
    }
    return orElse();
  }
}

abstract class GetMedicalError<T> implements MedicalState<T> {
  const factory GetMedicalError(final String error) = _$GetMedicalErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetMedicalErrorImplCopyWith<T, _$GetMedicalErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
