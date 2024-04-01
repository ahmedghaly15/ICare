import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/pick_image_icon_button.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_replies_list_view_bloc_builder.dart';
import 'package:icare/src/features/comments/presentation/widgets/new_reply_field_and_picked_image.dart';
import 'package:icare/src/features/comments/presentation/widgets/new_reply_icon_button_bloc_consumer.dart';

import 'package:image_picker/image_picker.dart';

@RoutePage()
class CommentRepliesView extends StatelessWidget implements AutoRouteWrapper {
  const CommentRepliesView({super.key, required this.params});

  final CommentRepliesViewParams params;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CommentRepliesCubit>(
      create: (_) =>
          getIt.get<CommentRepliesCubit>()..getCommentReplies(params),
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
              padding: EdgeInsets.only(left: 9.w),
              sliver:
                  const CustomSliverAppBar(title: AppStrings.commentReplies),
            ),
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  CommentRepliesListViewBlocBuilder(params: params),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 8.w,
                      bottom: SizeConfig.height * 0.05,
                      top: 8.h,
                    ),
                    child: Row(
                      children: <Widget>[
                        PickImageIconButton(
                          icon: Icons.photo_camera,
                          onPressed: () => context
                              .read<CommentRepliesCubit>()
                              .pickCommentReplyImage(ImageSource.camera),
                        ),
                        PickImageIconButton(
                          icon: Icons.image,
                          onPressed: () => context
                              .read<CommentRepliesCubit>()
                              .pickCommentReplyImage(ImageSource.gallery),
                        ),
                        const NewReplyFieldAndPickedImage(),
                        SizedBox.square(dimension: 8.h),
                        NewReplyIconButtonBlocConsumer(params: params),
                      ],
                    ),
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
