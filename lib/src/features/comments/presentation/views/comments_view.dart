import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comments_bloc_builder.dart';
import 'package:icare/src/features/comments/presentation/widgets/type_comment_field_and_buttons.dart';

@RoutePage()
class CommentsView extends StatelessWidget implements AutoRouteWrapper {
  const CommentsView({super.key, required this.tinyTaleId});

  final String tinyTaleId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CommentsCubit>(
      create: (_) => getIt.get<CommentsCubit>()..streamComments(tinyTaleId),
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
              sliver: const CustomSliverAppBar(title: AppStrings.comments),
            ),
            CommentsBlocBuilder(tinyTaleId: tinyTaleId),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 8.w,
                      bottom: AppConstants.textFieldBottomPadding,
                      top: 8.h,
                    ),
                    child: TypeCommentFieldAndButtons(tinyTaleId: tinyTaleId),
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
