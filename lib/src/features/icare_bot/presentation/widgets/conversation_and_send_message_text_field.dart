import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/conversation_bloc_builder.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/send_message_text_field_and_button.dart';

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
            bottom: SizeConfig.height * 0.05,
            top: 8.h,
          ),
          child: const SendMessageTextFieldAndButton(),
        ),
      ],
    );
  }
}
