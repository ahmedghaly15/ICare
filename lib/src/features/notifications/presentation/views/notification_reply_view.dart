import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_reply_item.dart';

@RoutePage()
class NotificationReplyView extends StatelessWidget
    implements AutoRouteWrapper {
  const NotificationReplyView({
    super.key,
    required this.reply,
    required this.params,
  });

  final CommentModel reply;
  final CommentRepliesViewParams params;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CommentRepliesCubit>(
      create: (_) => getIt.get<CommentRepliesCubit>(),
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
              padding: AppConstants.viewAppBarPadding,
              sliver: const CustomSliverAppBar(),
            ),
            SliverPadding(
              padding: AppConstants.commentsPadding,
              sliver: SliverToBoxAdapter(
                child: CommentReplyItem(reply: reply, params: params),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
