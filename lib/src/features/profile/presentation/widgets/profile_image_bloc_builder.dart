import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class ProfileImageBlocBuilder extends StatelessWidget {
  const ProfileImageBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      buildWhen: (_, current) => current is GetUserDataSuccess,
      builder: (context, state) {
        return CustomCachedNetworkImage(
          imageUrl: Helper.currentUser!.profileImage!,
          imageBuilder: (_, image) => CircleAvatar(
            backgroundColor: Colors.white,
            radius: 65.r,
            child: CircleAvatar(
              radius: 60.r,
              backgroundImage: image,
            ),
          ),
        );
      },
    );
  }
}
