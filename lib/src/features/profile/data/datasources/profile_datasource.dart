import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';

abstract class ProfileDataSource {
  Future<void> deletePhotoFromPhotos(String imageId);
}

class ProfileDataSourceImpl implements ProfileDataSource {
  const ProfileDataSourceImpl();

  @override
  Future<void> deletePhotoFromPhotos(String imageId) async {
    await accessUsersCollection()
        .doc(Helper.uId)
        .collection(AppStrings.photos)
        .doc(imageId)
        .delete();
  }
}
