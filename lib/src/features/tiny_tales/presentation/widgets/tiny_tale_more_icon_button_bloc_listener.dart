import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_delete_pop_up_menu_button.dart';
import 'package:icare/src/features/profile/presentation/cubits/profile/profile_cubit.dart';
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
            context.read<ProfileCubit>().getUserTinyTales(Helper.uId!);
            context.read<TinyTalesCubit>().unBookmarkTinyTale(tinyTaleId);
          },
        );
      },
      child: CustomDeletePopupMenuButton(
        deleteOnPressed: () =>
            context.read<TinyTalesCubit>().deleteTinyTale(tinyTaleId),
      ),
    );
  }
}
