import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.message,
    required this.isUser,
  });

  final String message;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: isUser
          ? ChatBubbleClipper8(type: BubbleType.sendBubble)
          : ChatBubbleClipper8(type: BubbleType.receiverBubble),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      backGroundColor: isUser ? AppColors.primaryColor : AppColors.lightGrey2,
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: AppConstants.padding16.w,
      ),
      child: isUser
          ? Text(
              message,
              style: AppTextStyles.textStyle16Medium(context).copyWith(
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            )
          : ConstrainedBox(
              constraints: BoxConstraints(maxWidth: SizeConfig.width * 0.75),
              child: Markdown(
                data: message,
                padding: EdgeInsets.zero,
                styleSheet: MarkdownStyleSheet(
                  p: AppTextStyles.textStyle16Medium(context).copyWith(
                    color: Colors.black,
                  ),
                ),
                selectable: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
    );
  }
}
