import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';

class BookmarkPopUpMenuButton extends StatelessWidget {
  const BookmarkPopUpMenuButton({
    super.key,
    required this.chatResponse,
  });

  final String chatResponse;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_horiz),
      itemBuilder: (context) => [
        _buildCustomPopupMenuItem(context, AppStrings.bookmarkMenuButtonVal),
        _buildCustomPopupMenuItem(context, AppStrings.copyMenuButtonVal),
      ],
      onSelected: (value) => _onSelected(value, context),
    );
  }

  void _onSelected(String value, BuildContext context) {
    if (value == AppStrings.bookmarkMenuButtonVal) {
      context.read<BookmarkCubit>().bookmarkICareBotMessage(
            BookmarkICareBotMessageParams(
              userId: Helper.uId!,
              chatResponse: chatResponse,
            ),
          );

      if (value == AppStrings.copyMenuButtonVal) {
        context.read<BookmarkCubit>().copyToClipboard(chatResponse);
      }
    }

    if (value == AppStrings.copyMenuButtonVal) {}
  }

  PopupMenuItem<String> _buildCustomPopupMenuItem(
    BuildContext context,
    String titleAndVal,
  ) {
    return PopupMenuItem(
      value: titleAndVal,
      child: Text(
        titleAndVal,
        style: AppTextStyles.textStyle15Bold(context),
      ),
    );
  }
}
