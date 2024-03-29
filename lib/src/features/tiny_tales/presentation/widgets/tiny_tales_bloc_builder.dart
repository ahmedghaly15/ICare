import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_state.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item.dart';

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
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ElasticIn(child: const TinyTaleItem()),
              childCount: 10,
            ),
          );
        } else if (state is GetTinyTalesError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(error: state.error),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
