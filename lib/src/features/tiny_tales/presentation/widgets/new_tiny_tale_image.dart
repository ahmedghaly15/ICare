import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_cubit.dart';

class NewTinyTaleImage extends StatelessWidget {
  const NewTinyTaleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: <Widget>[
        Container(
          height: SizeConfig.height * 0.35,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: FileImage(context.read<TinyTalesCubit>().tinyTaleImage!),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0.h),
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () =>
                  context.read<TinyTalesCubit>().removeTinyTaleImage(),
              icon: Icon(
                Icons.close,
                color: AppColors.primaryColor,
                size: 25.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
