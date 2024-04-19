import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/bookmark_pop_menu_button.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/icare_bot_image.dart';

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
    return Row(
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        isUser ? const SizedBox.shrink() : const ICareBotImage(),
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: SizeConfig.width * 0.75),
            child: ChatBubble(
              elevation: isUser ? 0 : 8.h,
              clipper: isUser
                  ? ChatBubbleClipper8(type: BubbleType.sendBubble)
                  : ChatBubbleClipper8(type: BubbleType.receiverBubble),
              alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
              backGroundColor:
                  isUser ? Colors.transparent : AppColors.primaryColor,
              padding: EdgeInsets.only(
                top: 8.h,
                bottom: isUser ? 8.h : 4.h,
                left: AppConstants.padding16.w,
                right: isUser ? AppConstants.padding16.w : 8.w,
              ),
              margin: EdgeInsets.only(
                top: isUser ? 0 : 16.h,
                right: isUser ? 4.w : 0,
              ),
              child: isUser
                  ? Text(
                      message,
                      style: AppTextStyles.textStyle16Medium,
                      textAlign: TextAlign.left,
                    )
                  : Markdown(
                      data: message,
                      padding: EdgeInsets.zero,
                      styleSheet: MarkdownStyleSheet(
                        p: AppTextStyles.textStyle16Medium.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      selectable: false,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    ),
            ),
          ),
        ),
        isUser
            ? const SizedBox.shrink()
            : BookmarkPopUpMenuButton(chatResponse: message),
      ],
    );
  }
}
