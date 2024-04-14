import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:icare/src/features/tiny_tales/data/models/photo.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

class ProfileRepo {
  final ProfileRemoteDatasource _profileRemoteDatasource;

  const ProfileRepo(this._profileRemoteDatasource);

  Future<FirebaseRequestResult<List<TinyTale>>> getUserTinyTales() {
    return executeAndHandleFirebaseErrors<List<TinyTale>>(
      () async {
        List<TinyTale> tinyTales = [];
        final QuerySnapshot<Map<String, dynamic>> querySnapshot =
            await _profileRemoteDatasource.getUserTinyTales();
        for (final doc in querySnapshot.docs) {
          if (doc.data()['user']['uId'] == Helper.uId) {
            tinyTales.add(TinyTale.fromJson(doc.data()));
          }
        }
        return tinyTales;
      },
    );
  }

  Future<FirebaseRequestResult<List<Photo>>> getUserPhotos() {
    return executeAndHandleFirebaseErrors<List<Photo>>(
      () async {
        final QuerySnapshot<Map<String, dynamic>> querySnapshot =
            await _profileRemoteDatasource.getUserPhotos();

        return querySnapshot.docs
            .map((doc) => Photo.fromJson(doc.data()))
            .toList();
      },
    );
  }
}
