import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/loading_users_sliver_list.dart';
import 'package:icare/src/features/home/presentation/cubits/developers/developers_cubit.dart';
import 'package:icare/src/features/home/presentation/cubits/developers/developers_state.dart';
import 'package:icare/src/features/home/presentation/widgets/developer_item.dart';

class DevelopersSliverListBlocBuilder extends StatelessWidget {
  const DevelopersSliverListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DevelopersCubit, DevelopersState>(
      buildWhen: (_, current) =>
          current is GetDevelopersLoading ||
          current is GetDevelopersSuccess ||
          current is GetDevelopersError,
      builder: (context, state) {
        if (state is GetDevelopersSuccess) {
          return SliverList.builder(
            itemBuilder: (context, index) =>
                DeveloperItem(developer: state.developers[index]),
            itemCount: state.developers.length,
          );
        } else if (state is GetDevelopersError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<DevelopersCubit>().getDevelopers(),
            ),
          );
        } else {
          return const LoadingUsersSliverList();
        }
      },
    );
  }
}
