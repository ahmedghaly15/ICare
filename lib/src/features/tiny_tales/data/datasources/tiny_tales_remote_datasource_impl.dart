import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tiny_tales/data/datasources/tiny_tales_remote_datasource.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_model.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

class TinyTalesRemoteDatasourceImpl implements TinyTalesRemoteDatasource {
  const TinyTalesRemoteDatasourceImpl();

  @override
  Future<DocumentReference<Map<String, dynamic>>> createTinyTale(
    CreateTinyTaleParams params,
  ) async {
    final TinyTale tinyTale = TinyTale(
      user: Helper.currentUser,
      text: params.text,
      date: params.date,
      time: params.time,
      tinyTaleImage: params.tinyTaleImage,
      dateTime: Timestamp.now(),
    );

    final DocumentReference<Map<String, dynamic>> documentReference =
        await getIt
            .get<FirebaseFirestore>()
            .collection(AppStrings.tinyTalesCollection)
            .add(tinyTale.toJson());

    await documentReference.update({'postId': documentReference.id});

    return documentReference;
  }

  @override
  Future<void> likeTinyTale(String tinyTaleId) async {
    final LikeModel like = LikeModel(
      user: Helper.currentUser,
      dateTime: DateTime.now().toString(),
    );

    return await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection)
        .doc(tinyTaleId)
        .collection(AppStrings.likesCollection)
        .doc(Helper.uId)
        .set(like.toJson());
  }

  @override
  Future<void> unLikeTinyTale(String tinyTaleId) async {
    return await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection)
        .doc(tinyTaleId)
        .collection(AppStrings.likesCollection)
        .doc(Helper.uId)
        .delete();
  }
}
