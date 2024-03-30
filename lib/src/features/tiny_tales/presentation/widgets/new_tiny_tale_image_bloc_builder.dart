import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
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
              Positioned(
                top: 10.h,
                right: 10.w,
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: AppColors.primaryColor,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () =>
                        context.read<NewTinyTaleCubit>().removeTinyTaleImage(),
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 20.w,
                    ),
                  ),
                ),
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
