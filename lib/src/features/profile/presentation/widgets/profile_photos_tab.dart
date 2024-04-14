import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/profile/presentation/cubits/photos/photos_cubit.dart';
import 'package:icare/src/features/profile/presentation/cubits/photos/photos_state.dart';
import 'package:icare/src/features/profile/presentation/widgets/loading_profile_photos_tab.dart';

class ProfilePhotosTab extends StatelessWidget {
  const ProfilePhotosTab({super.key, required this.uId});

  final String uId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotosCubit, PhotosState>(
      buildWhen: (_, current) =>
          current is GetUserPhotosLoading ||
          current is GetUserPhotosSuccess ||
          current is GetUserPhotosError,
      builder: (context, state) {
        if (state is GetUserPhotosSuccess) {
          return state.data.isNotEmpty
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  padding: AppConstants.profileTabsPadding,
                  itemCount: state.data.length,
                  itemBuilder: (_, index) => ZoomIn(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: CustomCachedNetworkImage(
                        imageUrl: state.data[index].imagePath!,
                      ),
                    ),
                  ),
                )
              : const AnimatedEmptyView(
                  svgImage: AppAssets.svgsEmptyPhotos,
                  text: '',
                );
        } else if (state is GetUserPhotosError) {
          return CustomErrorWidget(
            error: state.error,
            tryAgainOnPressed: () =>
                context.read<PhotosCubit>().getUserPhotos(uId),
          );
        } else {
          return const LoadingProfilePhotosTab();
        }
      },
    );
  }
}
