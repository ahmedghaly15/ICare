import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/widgets/custom_delete_pop_up_menu_button.dart';
import 'package:icare/src/core/widgets/custom_divider.dart';
import 'package:icare/src/core/widgets/user_item.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat/chat_state.dart';
import 'package:icare/src/features/chat/presentation/widgets/delete_chat_dialog.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.user,
  });

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: UserItem(
                  user: user,
                  onTap: () =>
                      context.pushRoute(ChatDetailsRoute(receiver: user)),
                ),
              ),
              BlocListener<ChatCubit, ChatState>(
                listenWhen: (_, current) =>
                    current is DeleteChatSuccess || current is DeleteChatError,
                listener: (context, state) {
                  context.read<ChatCubit>().handleDeletingChatStates(
                        state,
                        context,
                        user.uId!,
                      );
                },
                child: CustomDeletePopupMenuButton(
                  deleteOnPressed: () {
                    context.showICareDialog(
                      child: buildDeleteChatDialog(context, receiver: user),
                    );
                  },
                ),
              ),
            ],
          ),
          CustomDivider(
            isExpanded: false,
            color: context.isDarkModeActive
                ? Colors.white54
                : const Color(0xff5A5A5B).withOpacity(0.5),
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
