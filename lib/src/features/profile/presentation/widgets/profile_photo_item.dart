import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/action_dialog.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/profile/data/models/photo.dart';
import 'package:icare/src/features/profile/presentation/cubits/profile/profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/widgets/delete_photo_button_bloc_listener.dart';

class ProfilePhotoItem extends StatelessWidget {
  const ProfilePhotoItem({
    super.key,
    required this.photo,
  });

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.r),
      child: GestureDetector(
        onLongPress: () {
          ShowICareDialog.show(
            context: context,
            child: BlocProvider<ProfileCubit>(
              create: (context) => getIt.get<ProfileCubit>(),
              child: ActionDialog(
                text: AppStrings.sureToDeleteThisPhoto,
                actionButtonWidget:
                    DeletePhotoButtonBlocListener(imageId: photo.imageId!),
              ),
            ),
          );
        },
        child: CustomCachedNetworkImage(imageUrl: photo.imagePath!),
      ),
    );
  }
}
