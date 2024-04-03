import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_state.dart';
import 'package:icare/src/features/comments/presentation/widgets/picked_comment_image.dart';

class MessageFieldAndPickedImageBlocBuilder extends StatelessWidget {
  const MessageFieldAndPickedImageBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      buildWhen: (_, current) =>
          current is PickMessageImageSuccess ||
          current is RemoveMessageImage ||
          current is SetNewTextValue,
      builder: (context, state) {
        return Expanded(
          child: Column(
            children: <Widget>[
              SendMessageTextField(
                controller: context.read<ChatCubit>().messageController,
                hintText: AppStrings.typeAMessage,
                onChanged: (String value) {
                  context.read<ChatCubit>().setNewTextValue(value);
                },
              ),
              if (context.read<ChatCubit>().messageImage != null) ...[
                MySizedBox.height8,
                PickedCommentImage(
                  image: context.read<ChatCubit>().messageImage!,
                  removeButtonOnPressed: () =>
                      context.read<ChatCubit>().removePickedMessageImage(),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
