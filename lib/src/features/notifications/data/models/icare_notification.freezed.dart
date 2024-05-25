// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icare_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ICareNotification _$ICareNotificationFromJson(Map<String, dynamic> json) {
  return _ICareNotification.fromJson(json);
}

/// @nodoc
mixin _$ICareNotification {
  String get to => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get seen => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get tinyTaleId => throw _privateConstructorUsedError;
  Timestamp? get dateTime => throw _privateConstructorUsedError;
  ICareUser? get user => throw _privateConstructorUsedError;
  CommentModel? get comment => throw _privateConstructorUsedError;
  CommentModel? get reply => throw _privateConstructorUsedError;
  TinyTale? get tinyTale => throw _privateConstructorUsedError;
  bool? get isMessage => throw _privateConstructorUsedError;
  bool? get isComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ICareNotificationCopyWith<ICareNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ICareNotificationCopyWith<$Res> {
  factory $ICareNotificationCopyWith(
          ICareNotification value, $Res Function(ICareNotification) then) =
      _$ICareNotificationCopyWithImpl<$Res, ICareNotification>;
  @useResult
  $Res call(
      {String to,
      String body,
      String title,
      bool seen,
      String? receiverId,
      String? id,
      String? tinyTaleId,
      Timestamp? dateTime,
      ICareUser? user,
      CommentModel? comment,
      CommentModel? reply,
      TinyTale? tinyTale,
      bool? isMessage,
      bool? isComment});

  $ICareUserCopyWith<$Res>? get user;
  $CommentModelCopyWith<$Res>? get comment;
  $CommentModelCopyWith<$Res>? get reply;
  $TinyTaleCopyWith<$Res>? get tinyTale;
}

/// @nodoc
class _$ICareNotificationCopyWithImpl<$Res, $Val extends ICareNotification>
    implements $ICareNotificationCopyWith<$Res> {
  _$ICareNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? body = null,
    Object? title = null,
    Object? seen = null,
    Object? receiverId = freezed,
    Object? id = freezed,
    Object? tinyTaleId = freezed,
    Object? dateTime = freezed,
    Object? user = freezed,
    Object? comment = freezed,
    Object? reply = freezed,
    Object? tinyTale = freezed,
    Object? isMessage = freezed,
    Object? isComment = freezed,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      seen: null == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tinyTaleId: freezed == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ICareUser?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      tinyTale: freezed == tinyTale
          ? _value.tinyTale
          : tinyTale // ignore: cast_nullable_to_non_nullable
              as TinyTale?,
      isMessage: freezed == isMessage
          ? _value.isMessage
          : isMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ICareUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ICareUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentModelCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $CommentModelCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentModelCopyWith<$Res>? get reply {
    if (_value.reply == null) {
      return null;
    }

    return $CommentModelCopyWith<$Res>(_value.reply!, (value) {
      return _then(_value.copyWith(reply: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TinyTaleCopyWith<$Res>? get tinyTale {
    if (_value.tinyTale == null) {
      return null;
    }

    return $TinyTaleCopyWith<$Res>(_value.tinyTale!, (value) {
      return _then(_value.copyWith(tinyTale: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ICareNotificationImplCopyWith<$Res>
    implements $ICareNotificationCopyWith<$Res> {
  factory _$$ICareNotificationImplCopyWith(_$ICareNotificationImpl value,
          $Res Function(_$ICareNotificationImpl) then) =
      __$$ICareNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String to,
      String body,
      String title,
      bool seen,
      String? receiverId,
      String? id,
      String? tinyTaleId,
      Timestamp? dateTime,
      ICareUser? user,
      CommentModel? comment,
      CommentModel? reply,
      TinyTale? tinyTale,
      bool? isMessage,
      bool? isComment});

  @override
  $ICareUserCopyWith<$Res>? get user;
  @override
  $CommentModelCopyWith<$Res>? get comment;
  @override
  $CommentModelCopyWith<$Res>? get reply;
  @override
  $TinyTaleCopyWith<$Res>? get tinyTale;
}

/// @nodoc
class __$$ICareNotificationImplCopyWithImpl<$Res>
    extends _$ICareNotificationCopyWithImpl<$Res, _$ICareNotificationImpl>
    implements _$$ICareNotificationImplCopyWith<$Res> {
  __$$ICareNotificationImplCopyWithImpl(_$ICareNotificationImpl _value,
      $Res Function(_$ICareNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? body = null,
    Object? title = null,
    Object? seen = null,
    Object? receiverId = freezed,
    Object? id = freezed,
    Object? tinyTaleId = freezed,
    Object? dateTime = freezed,
    Object? user = freezed,
    Object? comment = freezed,
    Object? reply = freezed,
    Object? tinyTale = freezed,
    Object? isMessage = freezed,
    Object? isComment = freezed,
  }) {
    return _then(_$ICareNotificationImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      seen: null == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tinyTaleId: freezed == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ICareUser?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      tinyTale: freezed == tinyTale
          ? _value.tinyTale
          : tinyTale // ignore: cast_nullable_to_non_nullable
              as TinyTale?,
      isMessage: freezed == isMessage
          ? _value.isMessage
          : isMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ICareNotificationImpl implements _ICareNotification {
  const _$ICareNotificationImpl(
      {required this.to,
      required this.body,
      this.title = AppStrings.appTitle,
      this.seen = false,
      this.receiverId,
      this.id,
      this.tinyTaleId,
      this.dateTime,
      this.user,
      this.comment,
      this.reply,
      this.tinyTale,
      this.isMessage,
      this.isComment});

  factory _$ICareNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ICareNotificationImplFromJson(json);

  @override
  final String to;
  @override
  final String body;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final bool seen;
  @override
  final String? receiverId;
  @override
  final String? id;
  @override
  final String? tinyTaleId;
  @override
  final Timestamp? dateTime;
  @override
  final ICareUser? user;
  @override
  final CommentModel? comment;
  @override
  final CommentModel? reply;
  @override
  final TinyTale? tinyTale;
  @override
  final bool? isMessage;
  @override
  final bool? isComment;

  @override
  String toString() {
    return 'ICareNotification(to: $to, body: $body, title: $title, seen: $seen, receiverId: $receiverId, id: $id, tinyTaleId: $tinyTaleId, dateTime: $dateTime, user: $user, comment: $comment, reply: $reply, tinyTale: $tinyTale, isMessage: $isMessage, isComment: $isComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ICareNotificationImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.seen, seen) || other.seen == seen) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tinyTaleId, tinyTaleId) ||
                other.tinyTaleId == tinyTaleId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.tinyTale, tinyTale) ||
                other.tinyTale == tinyTale) &&
            (identical(other.isMessage, isMessage) ||
                other.isMessage == isMessage) &&
            (identical(other.isComment, isComment) ||
                other.isComment == isComment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      to,
      body,
      title,
      seen,
      receiverId,
      id,
      tinyTaleId,
      dateTime,
      user,
      comment,
      reply,
      tinyTale,
      isMessage,
      isComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ICareNotificationImplCopyWith<_$ICareNotificationImpl> get copyWith =>
      __$$ICareNotificationImplCopyWithImpl<_$ICareNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ICareNotificationImplToJson(
      this,
    );
  }
}

abstract class _ICareNotification implements ICareNotification {
  const factory _ICareNotification(
      {required final String to,
      required final String body,
      final String title,
      final bool seen,
      final String? receiverId,
      final String? id,
      final String? tinyTaleId,
      final Timestamp? dateTime,
      final ICareUser? user,
      final CommentModel? comment,
      final CommentModel? reply,
      final TinyTale? tinyTale,
      final bool? isMessage,
      final bool? isComment}) = _$ICareNotificationImpl;

  factory _ICareNotification.fromJson(Map<String, dynamic> json) =
      _$ICareNotificationImpl.fromJson;

  @override
  String get to;
  @override
  String get body;
  @override
  String get title;
  @override
  bool get seen;
  @override
  String? get receiverId;
  @override
  String? get id;
  @override
  String? get tinyTaleId;
  @override
  Timestamp? get dateTime;
  @override
  ICareUser? get user;
  @override
  CommentModel? get comment;
  @override
  CommentModel? get reply;
  @override
  TinyTale? get tinyTale;
  @override
  bool? get isMessage;
  @override
  bool? get isComment;
  @override
  @JsonKey(ignore: true)
  _$$ICareNotificationImplCopyWith<_$ICareNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
