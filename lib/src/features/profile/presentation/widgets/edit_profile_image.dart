import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_bottom_sheet.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/widgets/edit_profile_image_bloc_builder.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileImage extends StatelessWidget {
  const EditProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: <Widget>[
        const EditProfileImageBlocBuilder(),
        Positioned(
          right: 16.r,
          child: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: const CircleBorder(),
            ),
            onPressed: () {
              ShowCustomImageBottomSheet.show(
                context: context,
                onPressedGallery: () => context
                    .read<EditProfileCubit>()
                    .pickNewProfileImage(ImageSource.gallery),
                onPressedCamera: () => context
                    .read<EditProfileCubit>()
                    .pickNewProfileImage(ImageSource.camera),
                type: AppStrings.profile,
              );
            },
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
