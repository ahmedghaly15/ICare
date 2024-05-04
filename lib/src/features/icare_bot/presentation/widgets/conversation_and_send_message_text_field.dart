import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/conversation_bloc_builder.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/send_message_field_and_button_bloc_consumer.dart';

class ConversationAndSendMessageTextField extends StatelessWidget {
  const ConversationAndSendMessageTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ConversationBlocBuilder(),
        Padding(
          padding: EdgeInsets.only(
            left: 8.w,
            right: 8.w,
            bottom: AppUtils.textFieldBottomPadding,
            top: 8.h,
          ),
          child: const SendMessageFieldAndButtonBlocConsumer(),
        ),
      ],
    );
  }
}
