import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_bottom_sheet.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_cubit.dart';

import 'package:image_picker/image_picker.dart';

class AddPhotoTextButton extends StatelessWidget {
  const AddPhotoTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => ShowCustomImageBottomSheet.show(
        type: AppStrings.tinyTale,
        context: context,
        onPressedCamera: () =>
            context.read<NewTinyTaleCubit>().pickTinyTaleImage(
                  ImageSource.camera,
                ),
        onPressedGallery: () =>
            context.read<NewTinyTaleCubit>().pickTinyTaleImage(
                  ImageSource.gallery,
                ),
      ),
      icon: Icon(
        Icons.image,
        color: AppColors.primaryColor,
        size: 22.w,
      ),
      label: const Text(AppStrings.addPhoto),
    );
  }
}
