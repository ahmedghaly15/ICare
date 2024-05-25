import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/features/profile/presentation/widgets/loading_profile_photos_tab.dart';
import 'package:icare/src/features/profile/data/models/photo.dart';
import 'package:icare/src/features/profile/presentation/widgets/profile_photo_item.dart';

class ProfilePhotosTab extends StatelessWidget {
  const ProfilePhotosTab({super.key, required this.uId});

  final String uId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: accessUsersCollection()
          .doc(uId)
          .collection(AppStrings.photos)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingProfilePhotosTab();
        }
        final photos =
            snapshot.data?.docs.map((e) => Photo.fromJson(e.data())).toList();

        return photos!.isNotEmpty
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                padding: AppUtils.profileTabsPadding,
                itemCount: photos.length,
                itemBuilder: (_, index) => ZoomIn(
                  child: ProfilePhotoItem(photo: photos[index]),
                ),
              )
            : const AnimatedEmptyView(svgImage: AppAssets.svgsEmptyPhotos);
      },
    );
  }
}
