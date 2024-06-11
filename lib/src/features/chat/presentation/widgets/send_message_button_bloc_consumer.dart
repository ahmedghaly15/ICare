import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_send_message_icon_button.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_details/chat_details_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_details/chat_details_state.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';

class SendMessageButtonBlocConsumer extends StatelessWidget {
  const SendMessageButtonBlocConsumer({
    super.key,
    required this.receiver,
  });

  final ICareUser receiver;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatDetailsCubit, ChatDetailsState>(
      listenWhen: (_, current) =>
          current is SendMessageError ||
          current is SendMessageSuccess ||
          current is UploadMessageImageError,
      listener: (context, state) {
        state.whenOrNull(
          sendMessageSuccess: (message) {
            context
                .read<NotificationsCubit>()
                .sendNotification(ICareNotification(
                  to: receiver.mobileToken!,
                  title: Constants.currentUser!.name!,
                  body: message,
                  receiverId: receiver.uId,
                  user: Constants.currentUser,
                  isMessage: true,
                ));
          },
          sendMessageError: (error) {
            ShowICareDialog.showICareDialogError(context, error);
          },
          uploadMessageImageError: (error) {
            ShowICareDialog.showICareDialogError(context, error);
          },
        );
      },
      buildWhen: (_, current) =>
          current is SendMessageLoading ||
          current is SendMessageError ||
          current is SendMessageSuccess ||
          current is UploadMessageImageError ||
          current is UploadMessageImageLoading ||
          current is UploadMessageImageSuccess ||
          current is SetNewTextValue ||
          current is PickMessageImageSuccess ||
          current is PickMessageImageError ||
          current is RemoveMessageImage,
      builder: (context, state) {
        if (state is SendMessageLoading || state is UploadMessageImageLoading) {
          return const CustomCircularProgressIndicator();
        }
        return CustomSendMessageIconButton(
          isEnabled: context
                  .read<ChatDetailsCubit>()
                  .messageController
                  .text
                  .isNotEmpty ||
              context.read<ChatDetailsCubit>().messageImage != null,
          onPressed: context
              .read<ChatDetailsCubit>()
              .newMessage(context, receiver: receiver),
        );
      },
    );
  }
}
