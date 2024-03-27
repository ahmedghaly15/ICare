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
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';
import 'package:icare/src/features/icare_bot/data/models/delete_bookmark_params.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/icare_bot_image.dart';

class BookmarkMessageBubble extends StatelessWidget {
  const BookmarkMessageBubble({super.key, required this.bookmark});

  final BookmarkICareBotMessageResponse bookmark;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        const ICareBotImage(),
        ChatBubble(
          clipper: ChatBubbleClipper8(type: BubbleType.receiverBubble),
          alignment: Alignment.centerLeft,
          backGroundColor: AppColors.lightGrey2,
          padding: EdgeInsets.only(
            top: 8.h,
            bottom: 4.h,
            left: AppConstants.padding16.w,
            right: 8.w,
          ),
          margin: EdgeInsets.only(bottom: 12.h, top: 16.h),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: SizeConfig.width * 0.75),
            child: Column(
              children: <Widget>[
                Markdown(
                  data: bookmark.chatResponse,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    padding: EdgeInsets.all(4.h),
                    style: IconButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                    ),
                    onPressed: () {
                      context.read<BookmarkCubit>().deleteBookmark(
                            DeleteBookmarkParams(
                              userId: Helper.uId!,
                              bookmarkId: bookmark.chatResponseId,
                            ),
                          );
                    },
                    icon: const Icon(
                      Icons.bookmark,
                      color: AppColors.primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
