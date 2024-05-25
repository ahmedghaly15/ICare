// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarkResponse _$MarkResponseFromJson(Map<String, dynamic> json) {
  return _MarkResponse.fromJson(json);
}

/// @nodoc
mixin _$MarkResponse {
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  double get percent => throw _privateConstructorUsedError;
  Next get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkResponseCopyWith<MarkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkResponseCopyWith<$Res> {
  factory $MarkResponseCopyWith(
          MarkResponse value, $Res Function(MarkResponse) then) =
      _$MarkResponseCopyWithImpl<$Res, MarkResponse>;
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'image_url') String imageUrl,
      double percent,
      Next next});

  $NextCopyWith<$Res> get next;
}

/// @nodoc
class _$MarkResponseCopyWithImpl<$Res, $Val extends MarkResponse>
    implements $MarkResponseCopyWith<$Res> {
  _$MarkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? imageUrl = null,
    Object? percent = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as Next,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NextCopyWith<$Res> get next {
    return $NextCopyWith<$Res>(_value.next, (value) {
      return _then(_value.copyWith(next: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarkResponseImplCopyWith<$Res>
    implements $MarkResponseCopyWith<$Res> {
  factory _$$MarkResponseImplCopyWith(
          _$MarkResponseImpl value, $Res Function(_$MarkResponseImpl) then) =
      __$$MarkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'image_url') String imageUrl,
      double percent,
      Next next});

  @override
  $NextCopyWith<$Res> get next;
}

/// @nodoc
class __$$MarkResponseImplCopyWithImpl<$Res>
    extends _$MarkResponseCopyWithImpl<$Res, _$MarkResponseImpl>
    implements _$$MarkResponseImplCopyWith<$Res> {
  __$$MarkResponseImplCopyWithImpl(
      _$MarkResponseImpl _value, $Res Function(_$MarkResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? imageUrl = null,
    Object? percent = null,
    Object? next = null,
  }) {
    return _then(_$MarkResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as Next,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkResponseImpl implements _MarkResponse {
  const _$MarkResponseImpl(
      {required this.status,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.percent,
      required this.next});

  factory _$MarkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkResponseImplFromJson(json);

  @override
  final String status;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final double percent;
  @override
  final Next next;

  @override
  String toString() {
    return 'MarkResponse(status: $status, imageUrl: $imageUrl, percent: $percent, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, imageUrl, percent, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkResponseImplCopyWith<_$MarkResponseImpl> get copyWith =>
      __$$MarkResponseImplCopyWithImpl<_$MarkResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkResponseImplToJson(
      this,
    );
  }
}

abstract class _MarkResponse implements MarkResponse {
  const factory _MarkResponse(
      {required final String status,
      @JsonKey(name: 'image_url') required final String imageUrl,
      required final double percent,
      required final Next next}) = _$MarkResponseImpl;

  factory _MarkResponse.fromJson(Map<String, dynamic> json) =
      _$MarkResponseImpl.fromJson;

  @override
  String get status;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  double get percent;
  @override
  Next get next;
  @override
  @JsonKey(ignore: true)
  _$$MarkResponseImplCopyWith<_$MarkResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Next _$NextFromJson(Map<String, dynamic> json) {
  return _Next.fromJson(json);
}

/// @nodoc
mixin _$Next {
  LevelOneTrainingResponse? get levelOneDetails =>
      throw _privateConstructorUsedError;
  LevelTwoTrainingResponse? get levelTwoDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextCopyWith<Next> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextCopyWith<$Res> {
  factory $NextCopyWith(Next value, $Res Function(Next) then) =
      _$NextCopyWithImpl<$Res, Next>;
  @useResult
  $Res call(
      {LevelOneTrainingResponse? levelOneDetails,
      LevelTwoTrainingResponse? levelTwoDetails});

  $LevelOneTrainingResponseCopyWith<$Res>? get levelOneDetails;
  $LevelTwoTrainingResponseCopyWith<$Res>? get levelTwoDetails;
}

/// @nodoc
class _$NextCopyWithImpl<$Res, $Val extends Next>
    implements $NextCopyWith<$Res> {
  _$NextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelOneDetails = freezed,
    Object? levelTwoDetails = freezed,
  }) {
    return _then(_value.copyWith(
      levelOneDetails: freezed == levelOneDetails
          ? _value.levelOneDetails
          : levelOneDetails // ignore: cast_nullable_to_non_nullable
              as LevelOneTrainingResponse?,
      levelTwoDetails: freezed == levelTwoDetails
          ? _value.levelTwoDetails
          : levelTwoDetails // ignore: cast_nullable_to_non_nullable
              as LevelTwoTrainingResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelOneTrainingResponseCopyWith<$Res>? get levelOneDetails {
    if (_value.levelOneDetails == null) {
      return null;
    }

    return $LevelOneTrainingResponseCopyWith<$Res>(_value.levelOneDetails!,
        (value) {
      return _then(_value.copyWith(levelOneDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelTwoTrainingResponseCopyWith<$Res>? get levelTwoDetails {
    if (_value.levelTwoDetails == null) {
      return null;
    }

    return $LevelTwoTrainingResponseCopyWith<$Res>(_value.levelTwoDetails!,
        (value) {
      return _then(_value.copyWith(levelTwoDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NextImplCopyWith<$Res> implements $NextCopyWith<$Res> {
  factory _$$NextImplCopyWith(
          _$NextImpl value, $Res Function(_$NextImpl) then) =
      __$$NextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LevelOneTrainingResponse? levelOneDetails,
      LevelTwoTrainingResponse? levelTwoDetails});

  @override
  $LevelOneTrainingResponseCopyWith<$Res>? get levelOneDetails;
  @override
  $LevelTwoTrainingResponseCopyWith<$Res>? get levelTwoDetails;
}

/// @nodoc
class __$$NextImplCopyWithImpl<$Res>
    extends _$NextCopyWithImpl<$Res, _$NextImpl>
    implements _$$NextImplCopyWith<$Res> {
  __$$NextImplCopyWithImpl(_$NextImpl _value, $Res Function(_$NextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelOneDetails = freezed,
    Object? levelTwoDetails = freezed,
  }) {
    return _then(_$NextImpl(
      levelOneDetails: freezed == levelOneDetails
          ? _value.levelOneDetails
          : levelOneDetails // ignore: cast_nullable_to_non_nullable
              as LevelOneTrainingResponse?,
      levelTwoDetails: freezed == levelTwoDetails
          ? _value.levelTwoDetails
          : levelTwoDetails // ignore: cast_nullable_to_non_nullable
              as LevelTwoTrainingResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextImpl implements _Next {
  const _$NextImpl({this.levelOneDetails, this.levelTwoDetails});

  factory _$NextImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextImplFromJson(json);

  @override
  final LevelOneTrainingResponse? levelOneDetails;
  @override
  final LevelTwoTrainingResponse? levelTwoDetails;

  @override
  String toString() {
    return 'Next(levelOneDetails: $levelOneDetails, levelTwoDetails: $levelTwoDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextImpl &&
            (identical(other.levelOneDetails, levelOneDetails) ||
                other.levelOneDetails == levelOneDetails) &&
            (identical(other.levelTwoDetails, levelTwoDetails) ||
                other.levelTwoDetails == levelTwoDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, levelOneDetails, levelTwoDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextImplCopyWith<_$NextImpl> get copyWith =>
      __$$NextImplCopyWithImpl<_$NextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextImplToJson(
      this,
    );
  }
}

abstract class _Next implements Next {
  const factory _Next(
      {final LevelOneTrainingResponse? levelOneDetails,
      final LevelTwoTrainingResponse? levelTwoDetails}) = _$NextImpl;

  factory _Next.fromJson(Map<String, dynamic> json) = _$NextImpl.fromJson;

  @override
  LevelOneTrainingResponse? get levelOneDetails;
  @override
  LevelTwoTrainingResponse? get levelTwoDetails;
  @override
  @JsonKey(ignore: true)
  _$$NextImplCopyWith<_$NextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
