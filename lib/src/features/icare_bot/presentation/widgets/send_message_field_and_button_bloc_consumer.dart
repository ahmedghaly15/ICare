import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_state.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/send_message_icon_button_bloc_builder.dart';

class SendMessageFieldAndButtonBlocConsumer extends StatelessWidget {
  const SendMessageFieldAndButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ICareBotCubit, ICareBotState>(
      listenWhen: (_, current) => current is Error,
      listener: (_, state) =>
          context.read<ICareBotCubit>().handleICareBotState(state, context),
      builder: (context, state) => Row(
        children: <Widget>[
          SendMessageTextField(
            enabled:
                context.read<ICareBotCubit>().isSendMessageTextFieldEnabled,
            controller: context.read<ICareBotCubit>().textController,
            hintText: 'Ask ICare Bot...',
            onChanged: (String val) {
              context.read<ICareBotCubit>().setNewTextValue(val);
            },
          ),
          SizedBox.square(dimension: 8.h),
          SendMessageIconButtonBlocBuilder(
            isEnabled:
                context.read<ICareBotCubit>().textController.text.isNotEmpty,
          ),
        ],
      ),
    );
  }
}
