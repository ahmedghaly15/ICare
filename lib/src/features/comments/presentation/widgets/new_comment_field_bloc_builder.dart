import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_state.dart';
import 'package:icare/src/features/comments/presentation/widgets/picked_comment_image.dart';

class NewCommentFieldBlocBuilder extends StatelessWidget {
  const NewCommentFieldBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentsCubit, CommentsState>(
      buildWhen: (_, current) =>
          current is PickCommentImageSuccess ||
          current is RemovePickedCommentImage ||
          current is SetNewTextValue,
      builder: (context, state) {
        return Expanded(
          child: Column(
            children: <Widget>[
              SendMessageTextField(
                hintText: AppStrings.writeAComment,
                controller: context.read<CommentsCubit>().commentController,
                onChanged: (String value) {
                  if (value.trim().isNotEmpty) {
                    context.read<CommentsCubit>().setNewTextValue(value);
                  } else {
                    context.read<CommentsCubit>().setNewTextValue('');
                  }
                },
              ),
              if (context.read<CommentsCubit>().commentImage != null) ...[
                MySizedBox.height8,
                PickedCommentImage(
                  image: context.read<CommentsCubit>().commentImage!,
                  removeButtonOnPressed: () =>
                      context.read<CommentsCubit>().removePickedCommentImage(),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
