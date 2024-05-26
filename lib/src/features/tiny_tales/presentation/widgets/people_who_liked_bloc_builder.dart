import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/loading_person_who_liked_item.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/person_who_liked_item.dart';

class PeopleWhoLikedBlocBuilder extends StatelessWidget {
  const PeopleWhoLikedBlocBuilder({
    super.key,
    required this.tinyTaleId,
  });

  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TinyTalesCubit, TinyTalesState>(
      buildWhen: (_, current) =>
          current is GetPeopleWhoLikedLoading ||
          current is GetPeopleWhoLikedSuccess ||
          current is GetPeopleWhoLikedError,
      builder: (context, state) {
        if (state is GetPeopleWhoLikedSuccess) {
          return SliverList.builder(
            itemBuilder: (context, index) => FadeInLeft(
              child: PersonWhoLikedItem(
                person: state.peopleWhoLiked[index],
              ),
            ),
            itemCount: state.peopleWhoLiked.length,
          );
        } else if (state is GetPeopleWhoLikedError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<TinyTalesCubit>().getPeopleWhoLiked(tinyTaleId),
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => LoadingPersonWhoLikedItem(
                isEvenItem: index % 2 == 0,
              ),
              childCount: 10,
            ),
          );
        }
      },
    );
  }
}
