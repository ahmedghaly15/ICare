// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchUsersLoading,
    required TResult Function(List<ICareUser> searchResult) searchUsersSuccess,
    required TResult Function(String error) searchUsersError,
    required TResult Function(String newValue) setNewTextValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchUsersLoading,
    TResult? Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult? Function(String error)? searchUsersError,
    TResult? Function(String newValue)? setNewTextValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchUsersLoading,
    TResult Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult Function(String error)? searchUsersError,
    TResult Function(String newValue)? setNewTextValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchUsersLoading<T> value) searchUsersLoading,
    required TResult Function(SearchUsersSuccess<T> value) searchUsersSuccess,
    required TResult Function(SearchUsersError<T> value) searchUsersError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult? Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult? Function(SearchUsersError<T> value)? searchUsersError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult Function(SearchUsersError<T> value)? searchUsersError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<T, $Res> {
  factory $SearchStateCopyWith(
          SearchState<T> value, $Res Function(SearchState<T>) then) =
      _$SearchStateCopyWithImpl<T, $Res, SearchState<T>>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<T, $Res, $Val extends SearchState<T>>
    implements $SearchStateCopyWith<T, $Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchInitialImplCopyWith<T, $Res> {
  factory _$$SearchInitialImplCopyWith(_$SearchInitialImpl<T> value,
          $Res Function(_$SearchInitialImpl<T>) then) =
      __$$SearchInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchInitialImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchInitialImpl<T>>
    implements _$$SearchInitialImplCopyWith<T, $Res> {
  __$$SearchInitialImplCopyWithImpl(_$SearchInitialImpl<T> _value,
      $Res Function(_$SearchInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchInitialImpl<T> implements SearchInitial<T> {
  const _$SearchInitialImpl();

  @override
  String toString() {
    return 'SearchState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchUsersLoading,
    required TResult Function(List<ICareUser> searchResult) searchUsersSuccess,
    required TResult Function(String error) searchUsersError,
    required TResult Function(String newValue) setNewTextValue,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchUsersLoading,
    TResult? Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult? Function(String error)? searchUsersError,
    TResult? Function(String newValue)? setNewTextValue,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchUsersLoading,
    TResult Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult Function(String error)? searchUsersError,
    TResult Function(String newValue)? setNewTextValue,
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
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchUsersLoading<T> value) searchUsersLoading,
    required TResult Function(SearchUsersSuccess<T> value) searchUsersSuccess,
    required TResult Function(SearchUsersError<T> value) searchUsersError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult? Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult? Function(SearchUsersError<T> value)? searchUsersError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult Function(SearchUsersError<T> value)? searchUsersError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchInitial<T> implements SearchState<T> {
  const factory SearchInitial() = _$SearchInitialImpl<T>;
}

/// @nodoc
abstract class _$$SearchUsersLoadingImplCopyWith<T, $Res> {
  factory _$$SearchUsersLoadingImplCopyWith(_$SearchUsersLoadingImpl<T> value,
          $Res Function(_$SearchUsersLoadingImpl<T>) then) =
      __$$SearchUsersLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchUsersLoadingImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchUsersLoadingImpl<T>>
    implements _$$SearchUsersLoadingImplCopyWith<T, $Res> {
  __$$SearchUsersLoadingImplCopyWithImpl(_$SearchUsersLoadingImpl<T> _value,
      $Res Function(_$SearchUsersLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchUsersLoadingImpl<T> implements SearchUsersLoading<T> {
  const _$SearchUsersLoadingImpl();

  @override
  String toString() {
    return 'SearchState<$T>.searchUsersLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchUsersLoading,
    required TResult Function(List<ICareUser> searchResult) searchUsersSuccess,
    required TResult Function(String error) searchUsersError,
    required TResult Function(String newValue) setNewTextValue,
  }) {
    return searchUsersLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchUsersLoading,
    TResult? Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult? Function(String error)? searchUsersError,
    TResult? Function(String newValue)? setNewTextValue,
  }) {
    return searchUsersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchUsersLoading,
    TResult Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult Function(String error)? searchUsersError,
    TResult Function(String newValue)? setNewTextValue,
    required TResult orElse(),
  }) {
    if (searchUsersLoading != null) {
      return searchUsersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchUsersLoading<T> value) searchUsersLoading,
    required TResult Function(SearchUsersSuccess<T> value) searchUsersSuccess,
    required TResult Function(SearchUsersError<T> value) searchUsersError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
  }) {
    return searchUsersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult? Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult? Function(SearchUsersError<T> value)? searchUsersError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
  }) {
    return searchUsersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult Function(SearchUsersError<T> value)? searchUsersError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    required TResult orElse(),
  }) {
    if (searchUsersLoading != null) {
      return searchUsersLoading(this);
    }
    return orElse();
  }
}

abstract class SearchUsersLoading<T> implements SearchState<T> {
  const factory SearchUsersLoading() = _$SearchUsersLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SearchUsersSuccessImplCopyWith<T, $Res> {
  factory _$$SearchUsersSuccessImplCopyWith(_$SearchUsersSuccessImpl<T> value,
          $Res Function(_$SearchUsersSuccessImpl<T>) then) =
      __$$SearchUsersSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<ICareUser> searchResult});
}

/// @nodoc
class __$$SearchUsersSuccessImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchUsersSuccessImpl<T>>
    implements _$$SearchUsersSuccessImplCopyWith<T, $Res> {
  __$$SearchUsersSuccessImplCopyWithImpl(_$SearchUsersSuccessImpl<T> _value,
      $Res Function(_$SearchUsersSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
  }) {
    return _then(_$SearchUsersSuccessImpl<T>(
      null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<ICareUser>,
    ));
  }
}

/// @nodoc

class _$SearchUsersSuccessImpl<T> implements SearchUsersSuccess<T> {
  const _$SearchUsersSuccessImpl(final List<ICareUser> searchResult)
      : _searchResult = searchResult;

  final List<ICareUser> _searchResult;
  @override
  List<ICareUser> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'SearchState<$T>.searchUsersSuccess(searchResult: $searchResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersSuccessImplCopyWith<T, _$SearchUsersSuccessImpl<T>>
      get copyWith => __$$SearchUsersSuccessImplCopyWithImpl<T,
          _$SearchUsersSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchUsersLoading,
    required TResult Function(List<ICareUser> searchResult) searchUsersSuccess,
    required TResult Function(String error) searchUsersError,
    required TResult Function(String newValue) setNewTextValue,
  }) {
    return searchUsersSuccess(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchUsersLoading,
    TResult? Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult? Function(String error)? searchUsersError,
    TResult? Function(String newValue)? setNewTextValue,
  }) {
    return searchUsersSuccess?.call(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchUsersLoading,
    TResult Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult Function(String error)? searchUsersError,
    TResult Function(String newValue)? setNewTextValue,
    required TResult orElse(),
  }) {
    if (searchUsersSuccess != null) {
      return searchUsersSuccess(searchResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchUsersLoading<T> value) searchUsersLoading,
    required TResult Function(SearchUsersSuccess<T> value) searchUsersSuccess,
    required TResult Function(SearchUsersError<T> value) searchUsersError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
  }) {
    return searchUsersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult? Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult? Function(SearchUsersError<T> value)? searchUsersError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
  }) {
    return searchUsersSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult Function(SearchUsersError<T> value)? searchUsersError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    required TResult orElse(),
  }) {
    if (searchUsersSuccess != null) {
      return searchUsersSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchUsersSuccess<T> implements SearchState<T> {
  const factory SearchUsersSuccess(final List<ICareUser> searchResult) =
      _$SearchUsersSuccessImpl<T>;

  List<ICareUser> get searchResult;
  @JsonKey(ignore: true)
  _$$SearchUsersSuccessImplCopyWith<T, _$SearchUsersSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchUsersErrorImplCopyWith<T, $Res> {
  factory _$$SearchUsersErrorImplCopyWith(_$SearchUsersErrorImpl<T> value,
          $Res Function(_$SearchUsersErrorImpl<T>) then) =
      __$$SearchUsersErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchUsersErrorImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchUsersErrorImpl<T>>
    implements _$$SearchUsersErrorImplCopyWith<T, $Res> {
  __$$SearchUsersErrorImplCopyWithImpl(_$SearchUsersErrorImpl<T> _value,
      $Res Function(_$SearchUsersErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchUsersErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchUsersErrorImpl<T> implements SearchUsersError<T> {
  const _$SearchUsersErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState<$T>.searchUsersError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersErrorImplCopyWith<T, _$SearchUsersErrorImpl<T>> get copyWith =>
      __$$SearchUsersErrorImplCopyWithImpl<T, _$SearchUsersErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchUsersLoading,
    required TResult Function(List<ICareUser> searchResult) searchUsersSuccess,
    required TResult Function(String error) searchUsersError,
    required TResult Function(String newValue) setNewTextValue,
  }) {
    return searchUsersError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchUsersLoading,
    TResult? Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult? Function(String error)? searchUsersError,
    TResult? Function(String newValue)? setNewTextValue,
  }) {
    return searchUsersError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchUsersLoading,
    TResult Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult Function(String error)? searchUsersError,
    TResult Function(String newValue)? setNewTextValue,
    required TResult orElse(),
  }) {
    if (searchUsersError != null) {
      return searchUsersError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchUsersLoading<T> value) searchUsersLoading,
    required TResult Function(SearchUsersSuccess<T> value) searchUsersSuccess,
    required TResult Function(SearchUsersError<T> value) searchUsersError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
  }) {
    return searchUsersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult? Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult? Function(SearchUsersError<T> value)? searchUsersError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
  }) {
    return searchUsersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult Function(SearchUsersError<T> value)? searchUsersError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    required TResult orElse(),
  }) {
    if (searchUsersError != null) {
      return searchUsersError(this);
    }
    return orElse();
  }
}

abstract class SearchUsersError<T> implements SearchState<T> {
  const factory SearchUsersError(final String error) =
      _$SearchUsersErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$SearchUsersErrorImplCopyWith<T, _$SearchUsersErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetNewTextValueImplCopyWith<T, $Res> {
  factory _$$SetNewTextValueImplCopyWith(_$SetNewTextValueImpl<T> value,
          $Res Function(_$SetNewTextValueImpl<T>) then) =
      __$$SetNewTextValueImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String newValue});
}

/// @nodoc
class __$$SetNewTextValueImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SetNewTextValueImpl<T>>
    implements _$$SetNewTextValueImplCopyWith<T, $Res> {
  __$$SetNewTextValueImplCopyWithImpl(_$SetNewTextValueImpl<T> _value,
      $Res Function(_$SetNewTextValueImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$SetNewTextValueImpl<T>(
      null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetNewTextValueImpl<T> implements SetNewTextValue<T> {
  const _$SetNewTextValueImpl(this.newValue);

  @override
  final String newValue;

  @override
  String toString() {
    return 'SearchState<$T>.setNewTextValue(newValue: $newValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNewTextValueImpl<T> &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNewTextValueImplCopyWith<T, _$SetNewTextValueImpl<T>> get copyWith =>
      __$$SetNewTextValueImplCopyWithImpl<T, _$SetNewTextValueImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchUsersLoading,
    required TResult Function(List<ICareUser> searchResult) searchUsersSuccess,
    required TResult Function(String error) searchUsersError,
    required TResult Function(String newValue) setNewTextValue,
  }) {
    return setNewTextValue(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchUsersLoading,
    TResult? Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult? Function(String error)? searchUsersError,
    TResult? Function(String newValue)? setNewTextValue,
  }) {
    return setNewTextValue?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchUsersLoading,
    TResult Function(List<ICareUser> searchResult)? searchUsersSuccess,
    TResult Function(String error)? searchUsersError,
    TResult Function(String newValue)? setNewTextValue,
    required TResult orElse(),
  }) {
    if (setNewTextValue != null) {
      return setNewTextValue(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial<T> value) initial,
    required TResult Function(SearchUsersLoading<T> value) searchUsersLoading,
    required TResult Function(SearchUsersSuccess<T> value) searchUsersSuccess,
    required TResult Function(SearchUsersError<T> value) searchUsersError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
  }) {
    return setNewTextValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial<T> value)? initial,
    TResult? Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult? Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult? Function(SearchUsersError<T> value)? searchUsersError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
  }) {
    return setNewTextValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial<T> value)? initial,
    TResult Function(SearchUsersLoading<T> value)? searchUsersLoading,
    TResult Function(SearchUsersSuccess<T> value)? searchUsersSuccess,
    TResult Function(SearchUsersError<T> value)? searchUsersError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    required TResult orElse(),
  }) {
    if (setNewTextValue != null) {
      return setNewTextValue(this);
    }
    return orElse();
  }
}

abstract class SetNewTextValue<T> implements SearchState<T> {
  const factory SetNewTextValue(final String newValue) =
      _$SetNewTextValueImpl<T>;

  String get newValue;
  @JsonKey(ignore: true)
  _$$SetNewTextValueImplCopyWith<T, _$SetNewTextValueImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
