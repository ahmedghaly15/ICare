import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ChatBubble(
          clipper: isUser
              ? ChatBubbleClipper8(type: BubbleType.sendBubble)
              : ChatBubbleClipper8(type: BubbleType.receiverBubble),
          alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
          backGroundColor:
              isUser ? AppColors.primaryColor : AppColors.lightGrey2,
          padding: EdgeInsets.only(
            top: 8.h,
            bottom: isUser ? 8.h : 4.h,
            left: AppConstants.padding16.w,
            right: isUser ? AppConstants.padding16.w : 8.w,
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
                  constraints: BoxConstraints(
                    maxWidth: SizeConfig.width * 0.75,
                  ),
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
        ),
        isUser
            ? const SizedBox.shrink()
            : IconButton(
                onPressed: () {
                  context.read<BookmarkCubit>().bookmarkICareBotMessage(
                        BookmarkICareBotMessageParams(
                          userId: Helper.uId!,
                          chatResponse: message,
                        ),
                      );
                },
                icon: const Icon(Icons.more_horiz),
              ),
      ],
    );
  }
}
