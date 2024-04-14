import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_state.dart';

class EditProfileImageBlocBuilder extends StatelessWidget {
  const EditProfileImageBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      buildWhen: (_, current) =>
          current is PickNewProfileImageSuccess ||
          current is PickNewProfileImageError,
      builder: (context, state) {
        if (state is PickNewProfileImageSuccess) {
          return CircleAvatar(
            radius: 90.r,
            backgroundImage:
                FileImage(context.read<EditProfileCubit>().newProfileImage!)
                    as ImageProvider,
          );
        }
        return CircleAvatar(
          radius: 90.r,
          backgroundImage:
              NetworkImage(Helper.currentUser!.profileImage!) as ImageProvider,
        );
      },
    );
  }
}
