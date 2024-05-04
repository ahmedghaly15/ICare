import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_item.dart';

@RoutePage()
class NotificationCommentView extends StatelessWidget
    implements AutoRouteWrapper {
  const NotificationCommentView({super.key, required this.params});

  final CommentRepliesViewParams params;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CommentsCubit>(
      create: (_) => getIt.get<CommentsCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppUtils.viewAppBarPadding,
              sliver: const CustomSliverAppBar(),
            ),
            SliverPadding(
              padding: AppUtils.commentsPadding,
              sliver: SliverToBoxAdapter(
                child: CommentItem(
                  comment: params.comment!,
                  tinyTaleId: params.tinyTaleId!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
