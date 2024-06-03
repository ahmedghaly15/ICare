import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/send_message_text_field.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat/chat_state.dart';
import 'package:icare/src/features/chat/presentation/widgets/chats_bloc_builder.dart';

class ChatsViewBody extends StatelessWidget {
  const ChatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: AppConstants.scrollPhysics,
        slivers: [
          BlocBuilder<ChatCubit, ChatState>(
            buildWhen: (_, current) => current is InvertIsSearchingBool,
            builder: (context, state) {
              bool isSearching = context.read<ChatCubit>().isSearching;

              return CustomSliverAppBar(
                title: AppStrings.chats,
                titleWidget: isSearching
                    ? SendMessageTextField(
                        autofocus: true,
                        hintText: AppStrings.search,
                        hasShadow: false,
                        borderSide: BorderSide(
                          color: isDarkModeActive(context)
                              ? AppColors.lightBlue
                              : Colors.black,
                        ),
                        onChanged: (String val) {
                          context.read<ChatCubit>().searchForChat(val);
                        },
                      )
                    : null,
                actions: <Widget>[
                  IconButton(
                    onPressed: () =>
                        context.read<ChatCubit>().invertIsSearching(),
                    icon: Icon(
                      isSearching ? Icons.cancel : Icons.search_rounded,
                      color: isDarkModeActive(context)
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ],
              );
            },
          ),
          const ChatsBlocBuilder(),
        ],
      ),
    );
  }
}
