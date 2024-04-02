import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/people_who_liked/data/datasources/people_who_liked_datasource.dart';

class PeopleWhoLikedRepo {
  final PeopleWhoLikedDatasource _peopleWhoLikedDatasource;

  const PeopleWhoLikedRepo(this._peopleWhoLikedDatasource);

  Future<FirebaseRequestResult<List<ICareUser>>> getPeopleWhoLiked(
    String tinyTaleId,
  ) async {
    return executeAndHandleFirebaseErrors<List<ICareUser>>(
      () async {
        final QuerySnapshot<Map<String, dynamic>> querySnapshot =
            await _peopleWhoLikedDatasource.getPeopleWhoLiked(tinyTaleId);

        return querySnapshot.docs
            .map((doc) => ICareUser.fromJson(doc.data()))
            .toList();
      },
    );
  }
}
