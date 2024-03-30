import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_state.dart';

class LinearProgressIndicatorBlocBuilder extends StatelessWidget {
  const LinearProgressIndicatorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewTinyTaleCubit, NewTinyTaleState>(
      buildWhen: (_, current) =>
          current is CreateTinyTaleLoading ||
          current is UploadTinyTaleImageLoading ||
          current is CreateTinyTaleSuccess ||
          current is UploadTinyTaleImageSuccess ||
          current is CreateTinyTaleError ||
          current is UploadTinyTaleImageError,
      builder: (context, state) {
        if (state is CreateTinyTaleLoading ||
            state is UploadTinyTaleImageLoading) {
          return Column(
            children: <Widget>[
              FadeInDown(
                from: 30,
                child: const LinearProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
              MySizedBox.height10,
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
