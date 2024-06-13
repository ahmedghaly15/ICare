import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/profile/presentation/cubits/profile/profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/cubits/profile/profile_state.dart';

class DeletePhotoButtonBlocListener extends StatelessWidget {
  const DeletePhotoButtonBlocListener({
    super.key,
    required this.imageId,
  });

  final String imageId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listenWhen: (_, current) => current is DeletePhotoError,
      listener: (context, state) {
        state.whenOrNull(
          deletePhotoError: (error) {
            context.showICareDialogError(error);
          },
        );
      },
      child: PrimaryButton(
        onPressed: () {
          context.maybePop();
          context.read<ProfileCubit>().deletePhoto(imageId);
        },
        text: AppStrings.delete,
      ),
    );
  }
}
