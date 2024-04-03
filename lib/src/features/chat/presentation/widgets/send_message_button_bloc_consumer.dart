import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_send_message_icon_button.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_state.dart';

class SendMessageButtonBlocConsumer extends StatelessWidget {
  const SendMessageButtonBlocConsumer({
    super.key,
    required this.receiver,
  });

  final ICareUser receiver;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatState>(
      listenWhen: (_, current) =>
          current is SendMessageError ||
          current is SendMessageSuccess ||
          current is UploadMessageImageError,
      listener: (context, state) {
        state.whenOrNull(
          sendMessageSuccess: () {
            context.read<ChatCubit>().messageController.clear();
            context.read<ChatCubit>().streamMessages(receiver.uId!);
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
          isEnabled:
              context.read<ChatCubit>().messageController.text.isNotEmpty ||
                  context.read<ChatCubit>().messageImage != null,
          onPressed: context.read<ChatCubit>().newMessage(
                context: context,
                receiverId: receiver.uId!,
                receiverName: receiver.name!,
              ),
        );
      },
    );
  }
}
