import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat/chat_cubit.dart';

class DeleteChatDialog extends StatelessWidget {
  const DeleteChatDialog({
    super.key,
    required this.receiver,
  });

  final ICareUser receiver;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: isDarkModeActive(context)
                  ? AppColors.lightBlue
                  : AppColors.primaryColor,
              iconSize: 16.h,
            ),
            onPressed: () => context.maybePop(),
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ),
        MySizedBox.height20,
        Text(
          '${AppStrings.sureToDeleteChatHistory} ${receiver.name}?',
          style: AppTextStyles.textStyle13Bold.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
        ),
        MySizedBox.height20,
        Row(
          children: <Widget>[
            Expanded(
              child: PrimaryButton(
                onPressed: () {
                  context.maybePop();
                  context
                      .read<ChatCubit>()
                      .alsoDeleteChatForOtherUser(receiver.uId!);
                },
                isOutlined: true,
                hasShadow: false,
                fontSize: 16,
                text: AppStrings.delete,
              ),
            ),
            MySizedBox.width15,
            Expanded(
              child: PrimaryButton(
                onPressed: () {
                  context.maybePop();
                  context.read<ChatCubit>().deleteChat(receiver.uId!);
                },
                hasShadow: false,
                fontSize: 16,
                borderRadius: AppConstants.outlinedButtonBorderRadiusVal,
                text: AppStrings.onlyMine,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
