import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/widgets/custom_send_message_icon_button.dart';
import 'package:icare/src/core/widgets/pick_image_icon_button.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/widgets/message_field_and_picked_image_bloc_builder.dart';
import 'package:image_picker/image_picker.dart';

class MessageFieldAndButtons extends StatelessWidget {
  const MessageFieldAndButtons({
    super.key,
    required this.receiver,
  });

  final ICareUser receiver;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        PickImageIconButton(
          icon: Icons.photo_camera,
          onPressed: () =>
              context.read<ChatCubit>().pickMessageImage(ImageSource.camera),
        ),
        PickImageIconButton(
          icon: Icons.image,
          onPressed: () =>
              context.read<ChatCubit>().pickMessageImage(ImageSource.gallery),
        ),
        const MessageFieldAndPickedImageBlocBuilder(),
        SizedBox.square(dimension: 8.h),
        CustomSendMessageIconButton(
          isEnabled:
              context.read<ChatCubit>().messageController.text.isNotEmpty ||
                  context.read<ChatCubit>().messageImage != null,
          onPressed: context.read<ChatCubit>().newMessage(
                context: context,
                receiverId: receiver.uId!,
                receiverName: receiver.name!,
              ),
        ),
      ],
    );
  }
}
