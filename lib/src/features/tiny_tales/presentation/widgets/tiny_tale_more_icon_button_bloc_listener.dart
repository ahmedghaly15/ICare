import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';

class TinyTaleMoreIconButtonBlocListener extends StatelessWidget {
  const TinyTaleMoreIconButtonBlocListener({
    super.key,
    required this.tinyTaleId,
  });

  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TinyTalesCubit, TinyTalesState>(
      listenWhen: (_, current) => current is DeleteTinyTaleSuccess,
      listener: (context, state) {
        state.whenOrNull(
          deleteTinyTaleSuccess: () {
            context.read<TinyTalesCubit>().getTinyTales();

            context.read<TinyTalesCubit>().unBookmarkTinyTale(tinyTaleId);
          },
        );
      },
      child: PopupMenuButton(
        icon: const Icon(Icons.more_horiz),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 'Delete TinyTale',
            child: Text(
              AppStrings.delete,
              style: AppTextStyles.textStyle15Bold(context),
            ),
          )
        ],
        onSelected: (value) {
          if (value == 'Delete TinyTale') {
            context.read<TinyTalesCubit>().deleteTinyTale(tinyTaleId);
          }
        },
      ),
    );
  }
}
