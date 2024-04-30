import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_send_message_icon_button.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_state.dart';
import 'package:icare/src/features/notifications/data/models/send_notification_params.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

class TypeNewCommentButtonBlocConsumer extends StatelessWidget {
  const TypeNewCommentButtonBlocConsumer({
    super.key,
    required this.tinyTale,
  });

  final TinyTale tinyTale;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CommentsCubit, CommentsState>(
      listenWhen: (_, current) =>
          current is TypeNewCommentError ||
          current is UploadCommentImageError ||
          current is TypeNewCommentSuccess,
      listener: (context, state) {
        state.whenOrNull(
          typeNewCommentSuccess: () {
            context.read<CommentsCubit>().commentController.clear();
            context.read<CommentsCubit>().getComments(tinyTale.tinyTaleId!);
            if (tinyTale.user!.uId != Helper.uId) {
              context
                  .read<NotificationsCubit>()
                  .sendNotification(SendNotificationParams(
                    to: tinyTale.user!.mobileToken!,
                    body:
                        '${Helper.currentUser!.name} commented on your tiny tale',
                    receiverId: tinyTale.user!.uId,
                  ));
            }
          },
          typeNewCommentError: (error) {
            ShowICareDialog.showICareDialogError(context, error);
          },
          uploadCommentImageError: (error) {
            ShowICareDialog.showICareDialogError(context, error);
          },
        );
      },
      buildWhen: (_, current) =>
          current is TypeNewCommentLoading ||
          current is TypeNewCommentSuccess ||
          current is TypeNewCommentError ||
          current is UploadCommentImageLoading ||
          current is UploadCommentImageSuccess ||
          current is UploadCommentImageError ||
          current is SetNewTextValue ||
          current is PickCommentImageSuccess ||
          current is RemovePickedCommentImage ||
          current is PickCommentImageError,
      builder: (context, state) {
        if (state is TypeNewCommentLoading ||
            state is UploadCommentImageLoading) {
          return const CustomCircularProgressIndicator();
        }
        return CustomSendMessageIconButton(
          isEnabled:
              context.read<CommentsCubit>().commentController.text.isNotEmpty ||
                  context.read<CommentsCubit>().commentImage != null,
          onPressed: context
              .read<CommentsCubit>()
              .newComment(context, tinyTale.tinyTaleId!),
        );
      },
    );
  }
}
