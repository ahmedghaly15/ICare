import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/remove_picked_image_icon_button.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_state.dart';

class NewTinyTaleImageBlocBuilder extends StatelessWidget {
  const NewTinyTaleImageBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewTinyTaleCubit, NewTinyTaleState>(
      buildWhen: (_, current) =>
          current is PickTinyTaleImageSuccess ||
          current is PickTinyTaleImageError ||
          current is RemoveTinyTaleImage,
      builder: (context, state) {
        if (state is PickTinyTaleImageSuccess) {
          return Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: FileImage(
                          context.read<NewTinyTaleCubit>().tinyTaleImage!),
                    ),
                  ),
                ),
              ),
              RemovePickedImageIconButton(
                onPressed: () =>
                    context.read<NewTinyTaleCubit>().removeTinyTaleImage(),
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
