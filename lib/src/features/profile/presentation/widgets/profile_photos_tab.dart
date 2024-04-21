import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/profile/presentation/widgets/loading_profile_photos_tab.dart';
import 'package:icare/src/features/tiny_tales/data/models/photo.dart';

class ProfilePhotosTab extends StatelessWidget {
  const ProfilePhotosTab({super.key, required this.uId});

  final String uId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: getIt
          .get<FirebaseFirestore>()
          .collection(AppStrings.usersCollection)
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
                padding: AppConstants.profileTabsPadding,
                itemCount: photos.length,
                itemBuilder: (_, index) => ZoomIn(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: CustomCachedNetworkImage(
                      imageUrl: photos[index].imagePath!,
                    ),
                  ),
                ),
              )
            : const AnimatedEmptyView(svgImage: AppAssets.svgsEmptyPhotos);
      },
    );
  }
}
