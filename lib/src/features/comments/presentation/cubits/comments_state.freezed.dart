// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsStateCopyWith<T, $Res> {
  factory $CommentsStateCopyWith(
          CommentsState<T> value, $Res Function(CommentsState<T>) then) =
      _$CommentsStateCopyWithImpl<T, $Res, CommentsState<T>>;
}

/// @nodoc
class _$CommentsStateCopyWithImpl<T, $Res, $Val extends CommentsState<T>>
    implements $CommentsStateCopyWith<T, $Res> {
  _$CommentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CommentsInitialImplCopyWith<T, $Res> {
  factory _$$CommentsInitialImplCopyWith(_$CommentsInitialImpl<T> value,
          $Res Function(_$CommentsInitialImpl<T>) then) =
      __$$CommentsInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CommentsInitialImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$CommentsInitialImpl<T>>
    implements _$$CommentsInitialImplCopyWith<T, $Res> {
  __$$CommentsInitialImplCopyWithImpl(_$CommentsInitialImpl<T> _value,
      $Res Function(_$CommentsInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommentsInitialImpl<T> implements _CommentsInitial<T> {
  const _$CommentsInitialImpl();

  @override
  String toString() {
    return 'CommentsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CommentsInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
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
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CommentsInitial<T> implements CommentsState<T> {
  const factory _CommentsInitial() = _$CommentsInitialImpl<T>;
}

/// @nodoc
abstract class _$$StreamCommentsLoadingImplCopyWith<T, $Res> {
  factory _$$StreamCommentsLoadingImplCopyWith(
          _$StreamCommentsLoadingImpl<T> value,
          $Res Function(_$StreamCommentsLoadingImpl<T>) then) =
      __$$StreamCommentsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$StreamCommentsLoadingImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$StreamCommentsLoadingImpl<T>>
    implements _$$StreamCommentsLoadingImplCopyWith<T, $Res> {
  __$$StreamCommentsLoadingImplCopyWithImpl(
      _$StreamCommentsLoadingImpl<T> _value,
      $Res Function(_$StreamCommentsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StreamCommentsLoadingImpl<T> implements StreamCommentsLoading<T> {
  const _$StreamCommentsLoadingImpl();

  @override
  String toString() {
    return 'CommentsState<$T>.streamCommentsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamCommentsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return streamCommentsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return streamCommentsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (streamCommentsLoading != null) {
      return streamCommentsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return streamCommentsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return streamCommentsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (streamCommentsLoading != null) {
      return streamCommentsLoading(this);
    }
    return orElse();
  }
}

abstract class StreamCommentsLoading<T> implements CommentsState<T> {
  const factory StreamCommentsLoading() = _$StreamCommentsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$StreamCommentsSuccessImplCopyWith<T, $Res> {
  factory _$$StreamCommentsSuccessImplCopyWith(
          _$StreamCommentsSuccessImpl<T> value,
          $Res Function(_$StreamCommentsSuccessImpl<T>) then) =
      __$$StreamCommentsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<CommentModel> comments});
}

/// @nodoc
class __$$StreamCommentsSuccessImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$StreamCommentsSuccessImpl<T>>
    implements _$$StreamCommentsSuccessImplCopyWith<T, $Res> {
  __$$StreamCommentsSuccessImplCopyWithImpl(
      _$StreamCommentsSuccessImpl<T> _value,
      $Res Function(_$StreamCommentsSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$StreamCommentsSuccessImpl<T>(
      null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ));
  }
}

/// @nodoc

class _$StreamCommentsSuccessImpl<T> implements StreamCommentsSuccess<T> {
  const _$StreamCommentsSuccessImpl(final List<CommentModel> comments)
      : _comments = comments;

  final List<CommentModel> _comments;
  @override
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentsState<$T>.streamCommentsSuccess(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamCommentsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamCommentsSuccessImplCopyWith<T, _$StreamCommentsSuccessImpl<T>>
      get copyWith => __$$StreamCommentsSuccessImplCopyWithImpl<T,
          _$StreamCommentsSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return streamCommentsSuccess(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return streamCommentsSuccess?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (streamCommentsSuccess != null) {
      return streamCommentsSuccess(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return streamCommentsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return streamCommentsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (streamCommentsSuccess != null) {
      return streamCommentsSuccess(this);
    }
    return orElse();
  }
}

abstract class StreamCommentsSuccess<T> implements CommentsState<T> {
  const factory StreamCommentsSuccess(final List<CommentModel> comments) =
      _$StreamCommentsSuccessImpl<T>;

  List<CommentModel> get comments;
  @JsonKey(ignore: true)
  _$$StreamCommentsSuccessImplCopyWith<T, _$StreamCommentsSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StreamCommentsErrorImplCopyWith<T, $Res> {
  factory _$$StreamCommentsErrorImplCopyWith(_$StreamCommentsErrorImpl<T> value,
          $Res Function(_$StreamCommentsErrorImpl<T>) then) =
      __$$StreamCommentsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StreamCommentsErrorImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$StreamCommentsErrorImpl<T>>
    implements _$$StreamCommentsErrorImplCopyWith<T, $Res> {
  __$$StreamCommentsErrorImplCopyWithImpl(_$StreamCommentsErrorImpl<T> _value,
      $Res Function(_$StreamCommentsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StreamCommentsErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StreamCommentsErrorImpl<T> implements StreamCommentsError<T> {
  const _$StreamCommentsErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CommentsState<$T>.streamCommentsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamCommentsErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamCommentsErrorImplCopyWith<T, _$StreamCommentsErrorImpl<T>>
      get copyWith => __$$StreamCommentsErrorImplCopyWithImpl<T,
          _$StreamCommentsErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return streamCommentsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return streamCommentsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (streamCommentsError != null) {
      return streamCommentsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return streamCommentsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return streamCommentsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (streamCommentsError != null) {
      return streamCommentsError(this);
    }
    return orElse();
  }
}

abstract class StreamCommentsError<T> implements CommentsState<T> {
  const factory StreamCommentsError(final String error) =
      _$StreamCommentsErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$StreamCommentsErrorImplCopyWith<T, _$StreamCommentsErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypeNewCommentLoadingImplCopyWith<T, $Res> {
  factory _$$TypeNewCommentLoadingImplCopyWith(
          _$TypeNewCommentLoadingImpl<T> value,
          $Res Function(_$TypeNewCommentLoadingImpl<T>) then) =
      __$$TypeNewCommentLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TypeNewCommentLoadingImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$TypeNewCommentLoadingImpl<T>>
    implements _$$TypeNewCommentLoadingImplCopyWith<T, $Res> {
  __$$TypeNewCommentLoadingImplCopyWithImpl(
      _$TypeNewCommentLoadingImpl<T> _value,
      $Res Function(_$TypeNewCommentLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TypeNewCommentLoadingImpl<T> implements TypeNewCommentLoading<T> {
  const _$TypeNewCommentLoadingImpl();

  @override
  String toString() {
    return 'CommentsState<$T>.typeNewCommentLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeNewCommentLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return typeNewCommentLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return typeNewCommentLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (typeNewCommentLoading != null) {
      return typeNewCommentLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return typeNewCommentLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return typeNewCommentLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (typeNewCommentLoading != null) {
      return typeNewCommentLoading(this);
    }
    return orElse();
  }
}

abstract class TypeNewCommentLoading<T> implements CommentsState<T> {
  const factory TypeNewCommentLoading() = _$TypeNewCommentLoadingImpl<T>;
}

/// @nodoc
abstract class _$$TypeNewCommentSuccessImplCopyWith<T, $Res> {
  factory _$$TypeNewCommentSuccessImplCopyWith(
          _$TypeNewCommentSuccessImpl<T> value,
          $Res Function(_$TypeNewCommentSuccessImpl<T>) then) =
      __$$TypeNewCommentSuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TypeNewCommentSuccessImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$TypeNewCommentSuccessImpl<T>>
    implements _$$TypeNewCommentSuccessImplCopyWith<T, $Res> {
  __$$TypeNewCommentSuccessImplCopyWithImpl(
      _$TypeNewCommentSuccessImpl<T> _value,
      $Res Function(_$TypeNewCommentSuccessImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TypeNewCommentSuccessImpl<T> implements TypeNewCommentSuccess<T> {
  const _$TypeNewCommentSuccessImpl();

  @override
  String toString() {
    return 'CommentsState<$T>.typeNewCommentSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeNewCommentSuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return typeNewCommentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return typeNewCommentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (typeNewCommentSuccess != null) {
      return typeNewCommentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return typeNewCommentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return typeNewCommentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (typeNewCommentSuccess != null) {
      return typeNewCommentSuccess(this);
    }
    return orElse();
  }
}

abstract class TypeNewCommentSuccess<T> implements CommentsState<T> {
  const factory TypeNewCommentSuccess() = _$TypeNewCommentSuccessImpl<T>;
}

/// @nodoc
abstract class _$$TypeNewCommentErrorImplCopyWith<T, $Res> {
  factory _$$TypeNewCommentErrorImplCopyWith(_$TypeNewCommentErrorImpl<T> value,
          $Res Function(_$TypeNewCommentErrorImpl<T>) then) =
      __$$TypeNewCommentErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$TypeNewCommentErrorImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$TypeNewCommentErrorImpl<T>>
    implements _$$TypeNewCommentErrorImplCopyWith<T, $Res> {
  __$$TypeNewCommentErrorImplCopyWithImpl(_$TypeNewCommentErrorImpl<T> _value,
      $Res Function(_$TypeNewCommentErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TypeNewCommentErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypeNewCommentErrorImpl<T> implements TypeNewCommentError<T> {
  const _$TypeNewCommentErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CommentsState<$T>.typeNewCommentError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeNewCommentErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeNewCommentErrorImplCopyWith<T, _$TypeNewCommentErrorImpl<T>>
      get copyWith => __$$TypeNewCommentErrorImplCopyWithImpl<T,
          _$TypeNewCommentErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return typeNewCommentError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return typeNewCommentError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (typeNewCommentError != null) {
      return typeNewCommentError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return typeNewCommentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return typeNewCommentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (typeNewCommentError != null) {
      return typeNewCommentError(this);
    }
    return orElse();
  }
}

abstract class TypeNewCommentError<T> implements CommentsState<T> {
  const factory TypeNewCommentError(final String error) =
      _$TypeNewCommentErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$TypeNewCommentErrorImplCopyWith<T, _$TypeNewCommentErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickCommentImageSuccessImplCopyWith<T, $Res> {
  factory _$$PickCommentImageSuccessImplCopyWith(
          _$PickCommentImageSuccessImpl<T> value,
          $Res Function(_$PickCommentImageSuccessImpl<T>) then) =
      __$$PickCommentImageSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({File commentImage});
}

/// @nodoc
class __$$PickCommentImageSuccessImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res,
        _$PickCommentImageSuccessImpl<T>>
    implements _$$PickCommentImageSuccessImplCopyWith<T, $Res> {
  __$$PickCommentImageSuccessImplCopyWithImpl(
      _$PickCommentImageSuccessImpl<T> _value,
      $Res Function(_$PickCommentImageSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentImage = null,
  }) {
    return _then(_$PickCommentImageSuccessImpl<T>(
      null == commentImage
          ? _value.commentImage
          : commentImage // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$PickCommentImageSuccessImpl<T> implements PickCommentImageSuccess<T> {
  const _$PickCommentImageSuccessImpl(this.commentImage);

  @override
  final File commentImage;

  @override
  String toString() {
    return 'CommentsState<$T>.pickCommentImageSuccess(commentImage: $commentImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickCommentImageSuccessImpl<T> &&
            (identical(other.commentImage, commentImage) ||
                other.commentImage == commentImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickCommentImageSuccessImplCopyWith<T, _$PickCommentImageSuccessImpl<T>>
      get copyWith => __$$PickCommentImageSuccessImplCopyWithImpl<T,
          _$PickCommentImageSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return pickCommentImageSuccess(commentImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return pickCommentImageSuccess?.call(commentImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (pickCommentImageSuccess != null) {
      return pickCommentImageSuccess(commentImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return pickCommentImageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return pickCommentImageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (pickCommentImageSuccess != null) {
      return pickCommentImageSuccess(this);
    }
    return orElse();
  }
}

abstract class PickCommentImageSuccess<T> implements CommentsState<T> {
  const factory PickCommentImageSuccess(final File commentImage) =
      _$PickCommentImageSuccessImpl<T>;

  File get commentImage;
  @JsonKey(ignore: true)
  _$$PickCommentImageSuccessImplCopyWith<T, _$PickCommentImageSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickCommentImageErrorImplCopyWith<T, $Res> {
  factory _$$PickCommentImageErrorImplCopyWith(
          _$PickCommentImageErrorImpl<T> value,
          $Res Function(_$PickCommentImageErrorImpl<T>) then) =
      __$$PickCommentImageErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PickCommentImageErrorImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$PickCommentImageErrorImpl<T>>
    implements _$$PickCommentImageErrorImplCopyWith<T, $Res> {
  __$$PickCommentImageErrorImplCopyWithImpl(
      _$PickCommentImageErrorImpl<T> _value,
      $Res Function(_$PickCommentImageErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PickCommentImageErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickCommentImageErrorImpl<T> implements PickCommentImageError<T> {
  const _$PickCommentImageErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CommentsState<$T>.pickCommentImageError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickCommentImageErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickCommentImageErrorImplCopyWith<T, _$PickCommentImageErrorImpl<T>>
      get copyWith => __$$PickCommentImageErrorImplCopyWithImpl<T,
          _$PickCommentImageErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return pickCommentImageError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return pickCommentImageError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (pickCommentImageError != null) {
      return pickCommentImageError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return pickCommentImageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return pickCommentImageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (pickCommentImageError != null) {
      return pickCommentImageError(this);
    }
    return orElse();
  }
}

abstract class PickCommentImageError<T> implements CommentsState<T> {
  const factory PickCommentImageError(final String error) =
      _$PickCommentImageErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$PickCommentImageErrorImplCopyWith<T, _$PickCommentImageErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadCommentImageLoadingImplCopyWith<T, $Res> {
  factory _$$UploadCommentImageLoadingImplCopyWith(
          _$UploadCommentImageLoadingImpl<T> value,
          $Res Function(_$UploadCommentImageLoadingImpl<T>) then) =
      __$$UploadCommentImageLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UploadCommentImageLoadingImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res,
        _$UploadCommentImageLoadingImpl<T>>
    implements _$$UploadCommentImageLoadingImplCopyWith<T, $Res> {
  __$$UploadCommentImageLoadingImplCopyWithImpl(
      _$UploadCommentImageLoadingImpl<T> _value,
      $Res Function(_$UploadCommentImageLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadCommentImageLoadingImpl<T>
    implements UploadCommentImageLoading<T> {
  const _$UploadCommentImageLoadingImpl();

  @override
  String toString() {
    return 'CommentsState<$T>.uploadCommentImageLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadCommentImageLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return uploadCommentImageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return uploadCommentImageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (uploadCommentImageLoading != null) {
      return uploadCommentImageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return uploadCommentImageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return uploadCommentImageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (uploadCommentImageLoading != null) {
      return uploadCommentImageLoading(this);
    }
    return orElse();
  }
}

abstract class UploadCommentImageLoading<T> implements CommentsState<T> {
  const factory UploadCommentImageLoading() =
      _$UploadCommentImageLoadingImpl<T>;
}

/// @nodoc
abstract class _$$UploadCommentImageSuccessImplCopyWith<T, $Res> {
  factory _$$UploadCommentImageSuccessImplCopyWith(
          _$UploadCommentImageSuccessImpl<T> value,
          $Res Function(_$UploadCommentImageSuccessImpl<T>) then) =
      __$$UploadCommentImageSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$UploadCommentImageSuccessImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res,
        _$UploadCommentImageSuccessImpl<T>>
    implements _$$UploadCommentImageSuccessImplCopyWith<T, $Res> {
  __$$UploadCommentImageSuccessImplCopyWithImpl(
      _$UploadCommentImageSuccessImpl<T> _value,
      $Res Function(_$UploadCommentImageSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$UploadCommentImageSuccessImpl<T>(
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadCommentImageSuccessImpl<T>
    implements UploadCommentImageSuccess<T> {
  const _$UploadCommentImageSuccessImpl(this.imageUrl);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'CommentsState<$T>.uploadCommentImageSuccess(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadCommentImageSuccessImpl<T> &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadCommentImageSuccessImplCopyWith<T,
          _$UploadCommentImageSuccessImpl<T>>
      get copyWith => __$$UploadCommentImageSuccessImplCopyWithImpl<T,
          _$UploadCommentImageSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return uploadCommentImageSuccess(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return uploadCommentImageSuccess?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (uploadCommentImageSuccess != null) {
      return uploadCommentImageSuccess(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return uploadCommentImageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return uploadCommentImageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (uploadCommentImageSuccess != null) {
      return uploadCommentImageSuccess(this);
    }
    return orElse();
  }
}

abstract class UploadCommentImageSuccess<T> implements CommentsState<T> {
  const factory UploadCommentImageSuccess(final String imageUrl) =
      _$UploadCommentImageSuccessImpl<T>;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$UploadCommentImageSuccessImplCopyWith<T,
          _$UploadCommentImageSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadCommentImageErrorImplCopyWith<T, $Res> {
  factory _$$UploadCommentImageErrorImplCopyWith(
          _$UploadCommentImageErrorImpl<T> value,
          $Res Function(_$UploadCommentImageErrorImpl<T>) then) =
      __$$UploadCommentImageErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UploadCommentImageErrorImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res,
        _$UploadCommentImageErrorImpl<T>>
    implements _$$UploadCommentImageErrorImplCopyWith<T, $Res> {
  __$$UploadCommentImageErrorImplCopyWithImpl(
      _$UploadCommentImageErrorImpl<T> _value,
      $Res Function(_$UploadCommentImageErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UploadCommentImageErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadCommentImageErrorImpl<T> implements UploadCommentImageError<T> {
  const _$UploadCommentImageErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CommentsState<$T>.uploadCommentImageError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadCommentImageErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadCommentImageErrorImplCopyWith<T, _$UploadCommentImageErrorImpl<T>>
      get copyWith => __$$UploadCommentImageErrorImplCopyWithImpl<T,
          _$UploadCommentImageErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return uploadCommentImageError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return uploadCommentImageError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (uploadCommentImageError != null) {
      return uploadCommentImageError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return uploadCommentImageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return uploadCommentImageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (uploadCommentImageError != null) {
      return uploadCommentImageError(this);
    }
    return orElse();
  }
}

abstract class UploadCommentImageError<T> implements CommentsState<T> {
  const factory UploadCommentImageError(final String error) =
      _$UploadCommentImageErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$UploadCommentImageErrorImplCopyWith<T, _$UploadCommentImageErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCommentLoadingImplCopyWith<T, $Res> {
  factory _$$DeleteCommentLoadingImplCopyWith(
          _$DeleteCommentLoadingImpl<T> value,
          $Res Function(_$DeleteCommentLoadingImpl<T>) then) =
      __$$DeleteCommentLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DeleteCommentLoadingImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$DeleteCommentLoadingImpl<T>>
    implements _$$DeleteCommentLoadingImplCopyWith<T, $Res> {
  __$$DeleteCommentLoadingImplCopyWithImpl(_$DeleteCommentLoadingImpl<T> _value,
      $Res Function(_$DeleteCommentLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteCommentLoadingImpl<T> implements DeleteCommentLoading<T> {
  const _$DeleteCommentLoadingImpl();

  @override
  String toString() {
    return 'CommentsState<$T>.deleteCommentLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return deleteCommentLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return deleteCommentLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (deleteCommentLoading != null) {
      return deleteCommentLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return deleteCommentLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return deleteCommentLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (deleteCommentLoading != null) {
      return deleteCommentLoading(this);
    }
    return orElse();
  }
}

abstract class DeleteCommentLoading<T> implements CommentsState<T> {
  const factory DeleteCommentLoading() = _$DeleteCommentLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DeleteCommentSuccessImplCopyWith<T, $Res> {
  factory _$$DeleteCommentSuccessImplCopyWith(
          _$DeleteCommentSuccessImpl<T> value,
          $Res Function(_$DeleteCommentSuccessImpl<T>) then) =
      __$$DeleteCommentSuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DeleteCommentSuccessImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$DeleteCommentSuccessImpl<T>>
    implements _$$DeleteCommentSuccessImplCopyWith<T, $Res> {
  __$$DeleteCommentSuccessImplCopyWithImpl(_$DeleteCommentSuccessImpl<T> _value,
      $Res Function(_$DeleteCommentSuccessImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteCommentSuccessImpl<T> implements DeleteCommentSuccess<T> {
  const _$DeleteCommentSuccessImpl();

  @override
  String toString() {
    return 'CommentsState<$T>.deleteCommentSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentSuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return deleteCommentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return deleteCommentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (deleteCommentSuccess != null) {
      return deleteCommentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return deleteCommentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return deleteCommentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (deleteCommentSuccess != null) {
      return deleteCommentSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteCommentSuccess<T> implements CommentsState<T> {
  const factory DeleteCommentSuccess() = _$DeleteCommentSuccessImpl<T>;
}

/// @nodoc
abstract class _$$DeleteCommentErrorImplCopyWith<T, $Res> {
  factory _$$DeleteCommentErrorImplCopyWith(_$DeleteCommentErrorImpl<T> value,
          $Res Function(_$DeleteCommentErrorImpl<T>) then) =
      __$$DeleteCommentErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DeleteCommentErrorImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$DeleteCommentErrorImpl<T>>
    implements _$$DeleteCommentErrorImplCopyWith<T, $Res> {
  __$$DeleteCommentErrorImplCopyWithImpl(_$DeleteCommentErrorImpl<T> _value,
      $Res Function(_$DeleteCommentErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DeleteCommentErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCommentErrorImpl<T> implements DeleteCommentError<T> {
  const _$DeleteCommentErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CommentsState<$T>.deleteCommentError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentErrorImplCopyWith<T, _$DeleteCommentErrorImpl<T>>
      get copyWith => __$$DeleteCommentErrorImplCopyWithImpl<T,
          _$DeleteCommentErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return deleteCommentError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return deleteCommentError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (deleteCommentError != null) {
      return deleteCommentError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return deleteCommentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return deleteCommentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (deleteCommentError != null) {
      return deleteCommentError(this);
    }
    return orElse();
  }
}

abstract class DeleteCommentError<T> implements CommentsState<T> {
  const factory DeleteCommentError(final String error) =
      _$DeleteCommentErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$DeleteCommentErrorImplCopyWith<T, _$DeleteCommentErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetNewTextValueImplCopyWith<T, $Res> {
  factory _$$SetNewTextValueImplCopyWith(_$SetNewTextValueImpl<T> value,
          $Res Function(_$SetNewTextValueImpl<T>) then) =
      __$$SetNewTextValueImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SetNewTextValueImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res, _$SetNewTextValueImpl<T>>
    implements _$$SetNewTextValueImplCopyWith<T, $Res> {
  __$$SetNewTextValueImplCopyWithImpl(_$SetNewTextValueImpl<T> _value,
      $Res Function(_$SetNewTextValueImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SetNewTextValueImpl<T>(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetNewTextValueImpl<T> implements SetNewTextValue<T> {
  const _$SetNewTextValueImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'CommentsState<$T>.setNewTextValue(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNewTextValueImpl<T> &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

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
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return setNewTextValue(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return setNewTextValue?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (setNewTextValue != null) {
      return setNewTextValue(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return setNewTextValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return setNewTextValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (setNewTextValue != null) {
      return setNewTextValue(this);
    }
    return orElse();
  }
}

abstract class SetNewTextValue<T> implements CommentsState<T> {
  const factory SetNewTextValue(final String text) = _$SetNewTextValueImpl<T>;

  String get text;
  @JsonKey(ignore: true)
  _$$SetNewTextValueImplCopyWith<T, _$SetNewTextValueImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovePickedCommentImageImplCopyWith<T, $Res> {
  factory _$$RemovePickedCommentImageImplCopyWith(
          _$RemovePickedCommentImageImpl<T> value,
          $Res Function(_$RemovePickedCommentImageImpl<T>) then) =
      __$$RemovePickedCommentImageImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RemovePickedCommentImageImplCopyWithImpl<T, $Res>
    extends _$CommentsStateCopyWithImpl<T, $Res,
        _$RemovePickedCommentImageImpl<T>>
    implements _$$RemovePickedCommentImageImplCopyWith<T, $Res> {
  __$$RemovePickedCommentImageImplCopyWithImpl(
      _$RemovePickedCommentImageImpl<T> _value,
      $Res Function(_$RemovePickedCommentImageImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemovePickedCommentImageImpl<T> implements RemovePickedCommentImage<T> {
  const _$RemovePickedCommentImageImpl();

  @override
  String toString() {
    return 'CommentsState<$T>.removePickedCommentImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovePickedCommentImageImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() streamCommentsLoading,
    required TResult Function(List<CommentModel> comments)
        streamCommentsSuccess,
    required TResult Function(String error) streamCommentsError,
    required TResult Function() typeNewCommentLoading,
    required TResult Function() typeNewCommentSuccess,
    required TResult Function(String error) typeNewCommentError,
    required TResult Function(File commentImage) pickCommentImageSuccess,
    required TResult Function(String error) pickCommentImageError,
    required TResult Function() uploadCommentImageLoading,
    required TResult Function(String imageUrl) uploadCommentImageSuccess,
    required TResult Function(String error) uploadCommentImageError,
    required TResult Function() deleteCommentLoading,
    required TResult Function() deleteCommentSuccess,
    required TResult Function(String error) deleteCommentError,
    required TResult Function(String text) setNewTextValue,
    required TResult Function() removePickedCommentImage,
  }) {
    return removePickedCommentImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? streamCommentsLoading,
    TResult? Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult? Function(String error)? streamCommentsError,
    TResult? Function()? typeNewCommentLoading,
    TResult? Function()? typeNewCommentSuccess,
    TResult? Function(String error)? typeNewCommentError,
    TResult? Function(File commentImage)? pickCommentImageSuccess,
    TResult? Function(String error)? pickCommentImageError,
    TResult? Function()? uploadCommentImageLoading,
    TResult? Function(String imageUrl)? uploadCommentImageSuccess,
    TResult? Function(String error)? uploadCommentImageError,
    TResult? Function()? deleteCommentLoading,
    TResult? Function()? deleteCommentSuccess,
    TResult? Function(String error)? deleteCommentError,
    TResult? Function(String text)? setNewTextValue,
    TResult? Function()? removePickedCommentImage,
  }) {
    return removePickedCommentImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? streamCommentsLoading,
    TResult Function(List<CommentModel> comments)? streamCommentsSuccess,
    TResult Function(String error)? streamCommentsError,
    TResult Function()? typeNewCommentLoading,
    TResult Function()? typeNewCommentSuccess,
    TResult Function(String error)? typeNewCommentError,
    TResult Function(File commentImage)? pickCommentImageSuccess,
    TResult Function(String error)? pickCommentImageError,
    TResult Function()? uploadCommentImageLoading,
    TResult Function(String imageUrl)? uploadCommentImageSuccess,
    TResult Function(String error)? uploadCommentImageError,
    TResult Function()? deleteCommentLoading,
    TResult Function()? deleteCommentSuccess,
    TResult Function(String error)? deleteCommentError,
    TResult Function(String text)? setNewTextValue,
    TResult Function()? removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (removePickedCommentImage != null) {
      return removePickedCommentImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsInitial<T> value) initial,
    required TResult Function(StreamCommentsLoading<T> value)
        streamCommentsLoading,
    required TResult Function(StreamCommentsSuccess<T> value)
        streamCommentsSuccess,
    required TResult Function(StreamCommentsError<T> value) streamCommentsError,
    required TResult Function(TypeNewCommentLoading<T> value)
        typeNewCommentLoading,
    required TResult Function(TypeNewCommentSuccess<T> value)
        typeNewCommentSuccess,
    required TResult Function(TypeNewCommentError<T> value) typeNewCommentError,
    required TResult Function(PickCommentImageSuccess<T> value)
        pickCommentImageSuccess,
    required TResult Function(PickCommentImageError<T> value)
        pickCommentImageError,
    required TResult Function(UploadCommentImageLoading<T> value)
        uploadCommentImageLoading,
    required TResult Function(UploadCommentImageSuccess<T> value)
        uploadCommentImageSuccess,
    required TResult Function(UploadCommentImageError<T> value)
        uploadCommentImageError,
    required TResult Function(DeleteCommentLoading<T> value)
        deleteCommentLoading,
    required TResult Function(DeleteCommentSuccess<T> value)
        deleteCommentSuccess,
    required TResult Function(DeleteCommentError<T> value) deleteCommentError,
    required TResult Function(SetNewTextValue<T> value) setNewTextValue,
    required TResult Function(RemovePickedCommentImage<T> value)
        removePickedCommentImage,
  }) {
    return removePickedCommentImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsInitial<T> value)? initial,
    TResult? Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult? Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult? Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult? Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult? Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult? Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult? Function(PickCommentImageSuccess<T> value)?
        pickCommentImageSuccess,
    TResult? Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult? Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult? Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult? Function(UploadCommentImageError<T> value)?
        uploadCommentImageError,
    TResult? Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult? Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult? Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult? Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult? Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
  }) {
    return removePickedCommentImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsInitial<T> value)? initial,
    TResult Function(StreamCommentsLoading<T> value)? streamCommentsLoading,
    TResult Function(StreamCommentsSuccess<T> value)? streamCommentsSuccess,
    TResult Function(StreamCommentsError<T> value)? streamCommentsError,
    TResult Function(TypeNewCommentLoading<T> value)? typeNewCommentLoading,
    TResult Function(TypeNewCommentSuccess<T> value)? typeNewCommentSuccess,
    TResult Function(TypeNewCommentError<T> value)? typeNewCommentError,
    TResult Function(PickCommentImageSuccess<T> value)? pickCommentImageSuccess,
    TResult Function(PickCommentImageError<T> value)? pickCommentImageError,
    TResult Function(UploadCommentImageLoading<T> value)?
        uploadCommentImageLoading,
    TResult Function(UploadCommentImageSuccess<T> value)?
        uploadCommentImageSuccess,
    TResult Function(UploadCommentImageError<T> value)? uploadCommentImageError,
    TResult Function(DeleteCommentLoading<T> value)? deleteCommentLoading,
    TResult Function(DeleteCommentSuccess<T> value)? deleteCommentSuccess,
    TResult Function(DeleteCommentError<T> value)? deleteCommentError,
    TResult Function(SetNewTextValue<T> value)? setNewTextValue,
    TResult Function(RemovePickedCommentImage<T> value)?
        removePickedCommentImage,
    required TResult orElse(),
  }) {
    if (removePickedCommentImage != null) {
      return removePickedCommentImage(this);
    }
    return orElse();
  }
}

abstract class RemovePickedCommentImage<T> implements CommentsState<T> {
  const factory RemovePickedCommentImage() = _$RemovePickedCommentImageImpl<T>;
}
