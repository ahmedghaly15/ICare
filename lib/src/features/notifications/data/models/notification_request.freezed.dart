// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationRequest _$NotificationRequestFromJson(Map<String, dynamic> json) {
  return _NotificationRequest.fromJson(json);
}

/// @nodoc
mixin _$NotificationRequest {
  String get to => throw _privateConstructorUsedError;
  NotificationContent get notification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationRequestCopyWith<NotificationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationRequestCopyWith<$Res> {
  factory $NotificationRequestCopyWith(
          NotificationRequest value, $Res Function(NotificationRequest) then) =
      _$NotificationRequestCopyWithImpl<$Res, NotificationRequest>;
  @useResult
  $Res call({String to, NotificationContent notification});

  $NotificationContentCopyWith<$Res> get notification;
}

/// @nodoc
class _$NotificationRequestCopyWithImpl<$Res, $Val extends NotificationRequest>
    implements $NotificationRequestCopyWith<$Res> {
  _$NotificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? notification = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationContent,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationContentCopyWith<$Res> get notification {
    return $NotificationContentCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationRequestImplCopyWith<$Res>
    implements $NotificationRequestCopyWith<$Res> {
  factory _$$NotificationRequestImplCopyWith(_$NotificationRequestImpl value,
          $Res Function(_$NotificationRequestImpl) then) =
      __$$NotificationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String to, NotificationContent notification});

  @override
  $NotificationContentCopyWith<$Res> get notification;
}

/// @nodoc
class __$$NotificationRequestImplCopyWithImpl<$Res>
    extends _$NotificationRequestCopyWithImpl<$Res, _$NotificationRequestImpl>
    implements _$$NotificationRequestImplCopyWith<$Res> {
  __$$NotificationRequestImplCopyWithImpl(_$NotificationRequestImpl _value,
      $Res Function(_$NotificationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? notification = null,
  }) {
    return _then(_$NotificationRequestImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationContent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationRequestImpl implements _NotificationRequest {
  const _$NotificationRequestImpl(
      {required this.to, required this.notification});

  factory _$NotificationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationRequestImplFromJson(json);

  @override
  final String to;
  @override
  final NotificationContent notification;

  @override
  String toString() {
    return 'NotificationRequest(to: $to, notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationRequestImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, to, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationRequestImplCopyWith<_$NotificationRequestImpl> get copyWith =>
      __$$NotificationRequestImplCopyWithImpl<_$NotificationRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationRequestImplToJson(
      this,
    );
  }
}

abstract class _NotificationRequest implements NotificationRequest {
  const factory _NotificationRequest(
          {required final String to,
          required final NotificationContent notification}) =
      _$NotificationRequestImpl;

  factory _NotificationRequest.fromJson(Map<String, dynamic> json) =
      _$NotificationRequestImpl.fromJson;

  @override
  String get to;
  @override
  NotificationContent get notification;
  @override
  @JsonKey(ignore: true)
  _$$NotificationRequestImplCopyWith<_$NotificationRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationContent _$NotificationContentFromJson(Map<String, dynamic> json) {
  return _NotificationContent.fromJson(json);
}

/// @nodoc
mixin _$NotificationContent {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationContentCopyWith<NotificationContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationContentCopyWith<$Res> {
  factory $NotificationContentCopyWith(
          NotificationContent value, $Res Function(NotificationContent) then) =
      _$NotificationContentCopyWithImpl<$Res, NotificationContent>;
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class _$NotificationContentCopyWithImpl<$Res, $Val extends NotificationContent>
    implements $NotificationContentCopyWith<$Res> {
  _$NotificationContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationContentImplCopyWith<$Res>
    implements $NotificationContentCopyWith<$Res> {
  factory _$$NotificationContentImplCopyWith(_$NotificationContentImpl value,
          $Res Function(_$NotificationContentImpl) then) =
      __$$NotificationContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class __$$NotificationContentImplCopyWithImpl<$Res>
    extends _$NotificationContentCopyWithImpl<$Res, _$NotificationContentImpl>
    implements _$$NotificationContentImplCopyWith<$Res> {
  __$$NotificationContentImplCopyWithImpl(_$NotificationContentImpl _value,
      $Res Function(_$NotificationContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$NotificationContentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationContentImpl implements _NotificationContent {
  const _$NotificationContentImpl({required this.title, required this.body});

  factory _$NotificationContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationContentImplFromJson(json);

  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'NotificationContent(title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationContentImplCopyWith<_$NotificationContentImpl> get copyWith =>
      __$$NotificationContentImplCopyWithImpl<_$NotificationContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationContentImplToJson(
      this,
    );
  }
}

abstract class _NotificationContent implements NotificationContent {
  const factory _NotificationContent(
      {required final String title,
      required final String body}) = _$NotificationContentImpl;

  factory _NotificationContent.fromJson(Map<String, dynamic> json) =
      _$NotificationContentImpl.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$NotificationContentImplCopyWith<_$NotificationContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
