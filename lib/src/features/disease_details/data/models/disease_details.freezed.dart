// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disease_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiseaseDetails _$DiseaseDetailsFromJson(Map<String, dynamic> json) {
  return _DiseaseDetails.fromJson(json);
}

/// @nodoc
mixin _$DiseaseDetails {
  @JsonKey(name: AppStrings.symptoms)
  List<dynamic> get symptoms => throw _privateConstructorUsedError;
  @JsonKey(name: AppStrings.redFlags)
  List<dynamic> get redFlags => throw _privateConstructorUsedError;
  @JsonKey(name: AppStrings.initialManagement)
  List<dynamic> get initialManagement => throw _privateConstructorUsedError;
  @JsonKey(name: AppStrings.doOrNot)
  DoOrNot get doOrNot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiseaseDetailsCopyWith<DiseaseDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiseaseDetailsCopyWith<$Res> {
  factory $DiseaseDetailsCopyWith(
          DiseaseDetails value, $Res Function(DiseaseDetails) then) =
      _$DiseaseDetailsCopyWithImpl<$Res, DiseaseDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: AppStrings.symptoms) List<dynamic> symptoms,
      @JsonKey(name: AppStrings.redFlags) List<dynamic> redFlags,
      @JsonKey(name: AppStrings.initialManagement)
      List<dynamic> initialManagement,
      @JsonKey(name: AppStrings.doOrNot) DoOrNot doOrNot});

  $DoOrNotCopyWith<$Res> get doOrNot;
}

/// @nodoc
class _$DiseaseDetailsCopyWithImpl<$Res, $Val extends DiseaseDetails>
    implements $DiseaseDetailsCopyWith<$Res> {
  _$DiseaseDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? redFlags = null,
    Object? initialManagement = null,
    Object? doOrNot = null,
  }) {
    return _then(_value.copyWith(
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      redFlags: null == redFlags
          ? _value.redFlags
          : redFlags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      initialManagement: null == initialManagement
          ? _value.initialManagement
          : initialManagement // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      doOrNot: null == doOrNot
          ? _value.doOrNot
          : doOrNot // ignore: cast_nullable_to_non_nullable
              as DoOrNot,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoOrNotCopyWith<$Res> get doOrNot {
    return $DoOrNotCopyWith<$Res>(_value.doOrNot, (value) {
      return _then(_value.copyWith(doOrNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiseaseDetailsImplCopyWith<$Res>
    implements $DiseaseDetailsCopyWith<$Res> {
  factory _$$DiseaseDetailsImplCopyWith(_$DiseaseDetailsImpl value,
          $Res Function(_$DiseaseDetailsImpl) then) =
      __$$DiseaseDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AppStrings.symptoms) List<dynamic> symptoms,
      @JsonKey(name: AppStrings.redFlags) List<dynamic> redFlags,
      @JsonKey(name: AppStrings.initialManagement)
      List<dynamic> initialManagement,
      @JsonKey(name: AppStrings.doOrNot) DoOrNot doOrNot});

  @override
  $DoOrNotCopyWith<$Res> get doOrNot;
}

/// @nodoc
class __$$DiseaseDetailsImplCopyWithImpl<$Res>
    extends _$DiseaseDetailsCopyWithImpl<$Res, _$DiseaseDetailsImpl>
    implements _$$DiseaseDetailsImplCopyWith<$Res> {
  __$$DiseaseDetailsImplCopyWithImpl(
      _$DiseaseDetailsImpl _value, $Res Function(_$DiseaseDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symptoms = null,
    Object? redFlags = null,
    Object? initialManagement = null,
    Object? doOrNot = null,
  }) {
    return _then(_$DiseaseDetailsImpl(
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      redFlags: null == redFlags
          ? _value._redFlags
          : redFlags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      initialManagement: null == initialManagement
          ? _value._initialManagement
          : initialManagement // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      doOrNot: null == doOrNot
          ? _value.doOrNot
          : doOrNot // ignore: cast_nullable_to_non_nullable
              as DoOrNot,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiseaseDetailsImpl implements _DiseaseDetails {
  const _$DiseaseDetailsImpl(
      {@JsonKey(name: AppStrings.symptoms)
      required final List<dynamic> symptoms,
      @JsonKey(name: AppStrings.redFlags) required final List<dynamic> redFlags,
      @JsonKey(name: AppStrings.initialManagement)
      required final List<dynamic> initialManagement,
      @JsonKey(name: AppStrings.doOrNot) required this.doOrNot})
      : _symptoms = symptoms,
        _redFlags = redFlags,
        _initialManagement = initialManagement;

  factory _$DiseaseDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiseaseDetailsImplFromJson(json);

  final List<dynamic> _symptoms;
  @override
  @JsonKey(name: AppStrings.symptoms)
  List<dynamic> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  final List<dynamic> _redFlags;
  @override
  @JsonKey(name: AppStrings.redFlags)
  List<dynamic> get redFlags {
    if (_redFlags is EqualUnmodifiableListView) return _redFlags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_redFlags);
  }

  final List<dynamic> _initialManagement;
  @override
  @JsonKey(name: AppStrings.initialManagement)
  List<dynamic> get initialManagement {
    if (_initialManagement is EqualUnmodifiableListView)
      return _initialManagement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initialManagement);
  }

  @override
  @JsonKey(name: AppStrings.doOrNot)
  final DoOrNot doOrNot;

  @override
  String toString() {
    return 'DiseaseDetails(symptoms: $symptoms, redFlags: $redFlags, initialManagement: $initialManagement, doOrNot: $doOrNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiseaseDetailsImpl &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            const DeepCollectionEquality().equals(other._redFlags, _redFlags) &&
            const DeepCollectionEquality()
                .equals(other._initialManagement, _initialManagement) &&
            (identical(other.doOrNot, doOrNot) || other.doOrNot == doOrNot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_symptoms),
      const DeepCollectionEquality().hash(_redFlags),
      const DeepCollectionEquality().hash(_initialManagement),
      doOrNot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiseaseDetailsImplCopyWith<_$DiseaseDetailsImpl> get copyWith =>
      __$$DiseaseDetailsImplCopyWithImpl<_$DiseaseDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiseaseDetailsImplToJson(
      this,
    );
  }
}

abstract class _DiseaseDetails implements DiseaseDetails {
  const factory _DiseaseDetails(
      {@JsonKey(name: AppStrings.symptoms)
      required final List<dynamic> symptoms,
      @JsonKey(name: AppStrings.redFlags) required final List<dynamic> redFlags,
      @JsonKey(name: AppStrings.initialManagement)
      required final List<dynamic> initialManagement,
      @JsonKey(name: AppStrings.doOrNot)
      required final DoOrNot doOrNot}) = _$DiseaseDetailsImpl;

  factory _DiseaseDetails.fromJson(Map<String, dynamic> json) =
      _$DiseaseDetailsImpl.fromJson;

  @override
  @JsonKey(name: AppStrings.symptoms)
  List<dynamic> get symptoms;
  @override
  @JsonKey(name: AppStrings.redFlags)
  List<dynamic> get redFlags;
  @override
  @JsonKey(name: AppStrings.initialManagement)
  List<dynamic> get initialManagement;
  @override
  @JsonKey(name: AppStrings.doOrNot)
  DoOrNot get doOrNot;
  @override
  @JsonKey(ignore: true)
  _$$DiseaseDetailsImplCopyWith<_$DiseaseDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoOrNot _$DoOrNotFromJson(Map<String, dynamic> json) {
  return _DoOrNot.fromJson(json);
}

/// @nodoc
mixin _$DoOrNot {
  @JsonKey(name: AppStrings.dO)
  List<dynamic> get dO => throw _privateConstructorUsedError;
  @JsonKey(name: AppStrings.dont)
  List<dynamic> get doNot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoOrNotCopyWith<DoOrNot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoOrNotCopyWith<$Res> {
  factory $DoOrNotCopyWith(DoOrNot value, $Res Function(DoOrNot) then) =
      _$DoOrNotCopyWithImpl<$Res, DoOrNot>;
  @useResult
  $Res call(
      {@JsonKey(name: AppStrings.dO) List<dynamic> dO,
      @JsonKey(name: AppStrings.dont) List<dynamic> doNot});
}

/// @nodoc
class _$DoOrNotCopyWithImpl<$Res, $Val extends DoOrNot>
    implements $DoOrNotCopyWith<$Res> {
  _$DoOrNotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dO = null,
    Object? doNot = null,
  }) {
    return _then(_value.copyWith(
      dO: null == dO
          ? _value.dO
          : dO // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      doNot: null == doNot
          ? _value.doNot
          : doNot // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoOrNotImplCopyWith<$Res> implements $DoOrNotCopyWith<$Res> {
  factory _$$DoOrNotImplCopyWith(
          _$DoOrNotImpl value, $Res Function(_$DoOrNotImpl) then) =
      __$$DoOrNotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AppStrings.dO) List<dynamic> dO,
      @JsonKey(name: AppStrings.dont) List<dynamic> doNot});
}

/// @nodoc
class __$$DoOrNotImplCopyWithImpl<$Res>
    extends _$DoOrNotCopyWithImpl<$Res, _$DoOrNotImpl>
    implements _$$DoOrNotImplCopyWith<$Res> {
  __$$DoOrNotImplCopyWithImpl(
      _$DoOrNotImpl _value, $Res Function(_$DoOrNotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dO = null,
    Object? doNot = null,
  }) {
    return _then(_$DoOrNotImpl(
      dO: null == dO
          ? _value._dO
          : dO // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      doNot: null == doNot
          ? _value._doNot
          : doNot // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoOrNotImpl implements _DoOrNot {
  const _$DoOrNotImpl(
      {@JsonKey(name: AppStrings.dO) required final List<dynamic> dO,
      @JsonKey(name: AppStrings.dont) required final List<dynamic> doNot})
      : _dO = dO,
        _doNot = doNot;

  factory _$DoOrNotImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoOrNotImplFromJson(json);

  final List<dynamic> _dO;
  @override
  @JsonKey(name: AppStrings.dO)
  List<dynamic> get dO {
    if (_dO is EqualUnmodifiableListView) return _dO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dO);
  }

  final List<dynamic> _doNot;
  @override
  @JsonKey(name: AppStrings.dont)
  List<dynamic> get doNot {
    if (_doNot is EqualUnmodifiableListView) return _doNot;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doNot);
  }

  @override
  String toString() {
    return 'DoOrNot(dO: $dO, doNot: $doNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoOrNotImpl &&
            const DeepCollectionEquality().equals(other._dO, _dO) &&
            const DeepCollectionEquality().equals(other._doNot, _doNot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dO),
      const DeepCollectionEquality().hash(_doNot));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoOrNotImplCopyWith<_$DoOrNotImpl> get copyWith =>
      __$$DoOrNotImplCopyWithImpl<_$DoOrNotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoOrNotImplToJson(
      this,
    );
  }
}

abstract class _DoOrNot implements DoOrNot {
  const factory _DoOrNot(
          {@JsonKey(name: AppStrings.dO) required final List<dynamic> dO,
          @JsonKey(name: AppStrings.dont) required final List<dynamic> doNot}) =
      _$DoOrNotImpl;

  factory _DoOrNot.fromJson(Map<String, dynamic> json) = _$DoOrNotImpl.fromJson;

  @override
  @JsonKey(name: AppStrings.dO)
  List<dynamic> get dO;
  @override
  @JsonKey(name: AppStrings.dont)
  List<dynamic> get doNot;
  @override
  @JsonKey(ignore: true)
  _$$DoOrNotImplCopyWith<_$DoOrNotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
