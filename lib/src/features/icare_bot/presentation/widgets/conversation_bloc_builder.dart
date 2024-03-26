import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_state.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/conversation.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/send_message_text_field_and_button.dart';

class ConversationBlocBuilder extends StatelessWidget {
  const ConversationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ICareBotCubit, ICareBotState>(
      builder: (context, state) => Column(
        children: <Widget>[
          context.read<ICareBotCubit>().hasApiKey
              ? const Expanded(child: Conversation())
              : Center(
                  child: Text(
                    AppStrings.noApiKeyFound,
                    style: AppTextStyles.textStyle20Bold(context)
                        .copyWith(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.w,
              right: 8.w,
              bottom: SizeConfig.height * 0.05,
              top: 8.h,
            ),
            child: const SendMessageTextFieldAndButton(),
          ),
        ],
      ),
    );
  }
}
