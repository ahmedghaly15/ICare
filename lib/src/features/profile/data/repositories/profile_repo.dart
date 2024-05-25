import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/profile/data/datasources/profile_datasource.dart';

class ProfileRepo {
  final ProfileDataSource _profileDataSource;

  const ProfileRepo(this._profileDataSource);

  Future<FirebaseRequestResult<void>> deletePhotoFromPhotos(
    String imageId,
  ) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _profileDataSource.deletePhotoFromPhotos(imageId),
    );
  }
}
