import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_details/chat_details_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_details/chat_details_state.dart';
import 'package:icare/src/features/comments/presentation/widgets/picked_comment_image.dart';

class MessageFieldAndPickedImageBlocBuilder extends StatelessWidget {
  const MessageFieldAndPickedImageBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatDetailsCubit, ChatDetailsState>(
      buildWhen: (_, current) =>
          current is PickMessageImageSuccess ||
          current is RemoveMessageImage ||
          current is SetNewTextValue,
      builder: (context, state) {
        return Expanded(
          child: Column(
            children: <Widget>[
              SendMessageTextField(
                controller: context.read<ChatDetailsCubit>().messageController,
                hintText: AppStrings.typeAMessage,
                onChanged: (String value) {
                  context.read<ChatDetailsCubit>().setNewTextValue(value);
                },
              ),
              if (context.read<ChatDetailsCubit>().messageImage != null) ...[
                MySizedBox.height8,
                PickedCommentImage(
                  image: context.read<ChatDetailsCubit>().messageImage!,
                  removeButtonOnPressed: () => context
                      .read<ChatDetailsCubit>()
                      .removePickedMessageImage(),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
