import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tales_loading_sliver_list.dart';

class TinyTalesBlocBuilder extends StatelessWidget {
  const TinyTalesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TinyTalesCubit, TinyTalesState>(
      buildWhen: (_, current) =>
          current is GetTinyTalesSuccess ||
          current is GetTinyTalesLoading ||
          current is GetTinyTalesError,
      builder: (context, state) {
        if (state is GetTinyTalesSuccess) {
          return state.data.isNotEmpty
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => ElasticIn(
                      child: TinyTaleItem(tinyTale: state.data[index]),
                    ),
                    childCount: state.data.length,
                  ),
                )
              : const SliverFillRemaining(
                  child: AnimatedEmptyView(
                    svgImage: AppAssets.svgsNoTinyTales,
                    text: AppStrings.noTinyTalesYet,
                  ),
                );
        } else if (state is GetTinyTalesError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<TinyTalesCubit>().getTinyTales(),
            ),
          );
        } else {
          return const TinyTalesLoadingSliverList();
        }
      },
    );
  }
}
