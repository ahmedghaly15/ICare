import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/cubit/profile_state.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/empty_tiny_tales.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tile_item_loading.dart';

class ProfileTinyTalesTab extends StatelessWidget {
  const ProfileTinyTalesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (_, current) =>
          current is GetUserTinyTalesLoading ||
          current is GetUserTinyTalesSuccess ||
          current is GetUserTinyTalesError,
      builder: (context, state) {
        if (state is GetUserTinyTalesSuccess) {
          return state.data.isNotEmpty
              ? ListView.builder(
                  padding: AppConstants.profileTabsPadding,
                  itemBuilder: (_, index) => FadeIn(
                    duration: const Duration(milliseconds: 800),
                    child: TinyTaleItem(tinyTale: state.data[index]),
                  ),
                  itemCount: state.data.length,
                )
              : const EmptyTinyTales();
        } else if (state is GetUserTinyTalesError) {
          return CustomErrorWidget(
            error: state.error,
            tryAgainOnPressed: () =>
                context.read<ProfileCubit>().getUserTinyTales(),
          );
        } else {
          return ListView.builder(
            padding: AppConstants.profileTabsPadding,
            itemBuilder: (_, index) =>
                TinyTaleLoadingItem(isTinyTaleWithImage: index % 2 != 0),
            itemCount: 10,
          );
        }
      },
    );
  }
}
