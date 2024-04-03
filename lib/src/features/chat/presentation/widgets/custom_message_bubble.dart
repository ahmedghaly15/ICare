import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/open_url.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';

class CustomMessageBubble extends StatelessWidget {
  const CustomMessageBubble({
    super.key,
    required this.message,
    required this.isMe,
  });

  final MessageModel message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      margin: EdgeInsets.only(bottom: 8.h),
      clipper: isMe
          ? ChatBubbleClipper3(type: BubbleType.sendBubble)
          : ChatBubbleClipper3(type: BubbleType.receiverBubble),
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      backGroundColor: isMe ? AppColors.primaryColor : AppColors.lightGrey2,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.65,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (message.messageData!.messageText != null)
              Linkify(
                text: message.messageData!.messageText!,
                style: AppTextStyles.textStyle16Bold(context).copyWith(
                  color: isMe ? Colors.white : Colors.black,
                ),
                maxLines: null,
                onOpen: (link) => openUrl(link),
              ),
            if (message.messageData!.messageText != null &&
                message.messageData!.messageImage != null)
              MySizedBox.height8,
            if (message.messageData!.messageImage != null)
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: CustomCachedNetworkImage(
                    imageUrl: message.messageData!.messageImage!,
                  ),
                ),
              ),
            MySizedBox.height12,
            Text(
              '${message.messageData!.date} at ${message.messageData!.time!}',
              style: AppTextStyles.textStyle13Regular(context).copyWith(
                  color: isMe ? AppColors.lightGrey3 : Colors.black38),
            ),
          ],
        ),
      ),
    );
  }
}
