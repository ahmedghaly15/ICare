import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_replies_list_view_stream_builder.dart';
import 'package:icare/src/features/comments/presentation/widgets/new_reply_field_and_buttons.dart';

@RoutePage()
class CommentRepliesView extends StatelessWidget implements AutoRouteWrapper {
  const CommentRepliesView({super.key, required this.params});

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
              sliver:
                  const CustomSliverAppBar(title: AppStrings.commentReplies),
            ),
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: CommentRepliesListViewStreamBuilder(params: params),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 8.w,
                      bottom: AppConstants.textFieldBottomPadding,
                      top: 8.h,
                    ),
                    child: NewReplyFieldAndButtons(params: params),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
