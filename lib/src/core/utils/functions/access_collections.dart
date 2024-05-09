import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';

CollectionReference<Map<String, dynamic>> accessUsersCollection() {
  return getIt.get<FirebaseFirestore>().collection(AppStrings.usersCollection);
}

CollectionReference<Map<String, dynamic>> accessUserFollowersCollection(
    String uId) {
  return accessUsersCollection()
      .doc(uId)
      .collection(AppStrings.followersCollection);
}

CollectionReference<Map<String, dynamic>> accessUserFollowingCollection(
        String uId) =>
    accessUsersCollection().doc(uId).collection(AppStrings.followingCollection);

CollectionReference<Map<String, dynamic>>
    accessBookmarkedTinyTalesCollection() {
  return accessUsersCollection()
      .doc(Helper.uId)
      .collection(AppStrings.bookmarkedTinyTalesCollection);
}

CollectionReference<Map<String, dynamic>> accessCommentLikesCollection(
    String tinyTaleId, String commentId) {
  return accessCommentsCollection(tinyTaleId)
      .doc(commentId)
      .collection(AppStrings.commentLikesCollection);
}

CollectionReference<Map<String, dynamic>> accessCommentRepliesCollection(
    String tinyTaleId, String commentId) {
  return accessCommentsCollection(tinyTaleId)
      .doc(commentId)
      .collection(AppStrings.commentReplies);
}

CollectionReference<Map<String, dynamic>> accessTinyTaleLikesCollection(
    String tinyTaleId) {
  return accessTinyTalesCollection()
      .doc(tinyTaleId)
      .collection(AppStrings.likesCollection);
}

CollectionReference<Map<String, dynamic>> accessTinyTalesCollection() {
  return getIt
      .get<FirebaseFirestore>()
      .collection(AppStrings.tinyTalesCollection);
}

CollectionReference<Map<String, dynamic>> accessCommentsCollection(
    String tinyTaleId) {
  return accessTinyTalesCollection()
      .doc(tinyTaleId)
      .collection(AppStrings.commentsCollection);
}

CollectionReference<Map<String, dynamic>> accessCommentRepliesLikesCollection(
  String tinyTaleId,
  String commentId,
  String replyId,
) {
  return accessCommentRepliesCollection(tinyTaleId, commentId)
      .doc(replyId)
      .collection(AppStrings.replyLikes);
}

CollectionReference<Map<String, dynamic>>
    accessCurrentUserNotificationsCollection() {
  return accessUsersCollection()
      .doc(Helper.uId)
      .collection(AppStrings.notificationsCollection);
}

CollectionReference<Map<String, dynamic>> accessUserNotificationsCollection(
    String userId) {
  return accessUsersCollection()
      .doc(userId)
      .collection(AppStrings.notificationsCollection);
}
