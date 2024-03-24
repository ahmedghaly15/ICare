import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_dialog.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot_state.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/custom_send_message_icon_button.dart';

class SendMessageTextFieldAndButton extends StatelessWidget {
  const SendMessageTextFieldAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ICareBotCubit, ICareBotState>(
      listenWhen: (_, current) => current is Error,
      listener: (_, state) => _handleICareBotState(state, context),
      builder: (context, state) => Row(
        children: <Widget>[
          Expanded(
            child: CustomTextFormField(
              enabled:
                  context.read<ICareBotCubit>().isSendMessageTextFieldEnabled,
              controller: context.read<ICareBotCubit>().textController,
              maxLines: null,
              contentPadding: EdgeInsets.all(16.h),
              textCapitalization: TextCapitalization.sentences,
              hintText: 'Ask ICare Bot...',
              onChanged: (String val) {
                context.read<ICareBotCubit>().setNewTextValue(val);
              },
            ),
          ),
          SizedBox.square(dimension: 8.h),
          CustomSendMessageIconButton(
            isEnabled:
                context.read<ICareBotCubit>().textController.text.isNotEmpty,
          ),
        ],
      ),
    );
  }

  void _handleICareBotState(
    ICareBotState<dynamic> state,
    BuildContext context,
  ) {
    state.whenOrNull(
      error: (error) => CustomDialog.show(
        context: context,
        state: CustomDialogStates.error,
        message: error,
      ),
    );
  }
}
