import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/pick_image_icon_button.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/new_reply_field_and_picked_image.dart';
import 'package:icare/src/features/comments/presentation/widgets/new_reply_icon_button_bloc_consumer.dart';
import 'package:image_picker/image_picker.dart';

class NewReplyFieldAndButtons extends StatelessWidget {
  const NewReplyFieldAndButtons({
    super.key,
    required this.params,
  });

  final CommentRepliesViewParams params;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
