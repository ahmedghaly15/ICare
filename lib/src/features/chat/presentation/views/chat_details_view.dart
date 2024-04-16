import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/chat/presentation/widgets/chat_details_custom_app_bar.dart';
import 'package:icare/src/features/chat/presentation/widgets/message_field_and_buttons.dart';
import 'package:icare/src/features/chat/presentation/widgets/messages_bloc_builder.dart';

@RoutePage()
class ChatDetailsView extends StatelessWidget {
  const ChatDetailsView({super.key, required this.receiver});

  final ICareUser receiver;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ChatDetailsCustomAppBar(receiver: receiver),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Divider(
                color: Colors.black.withOpacity(0.15),
              ),
            ),
            MessagesStreamBuilder(receiverId: receiver.uId!),
            Padding(
              padding: EdgeInsets.only(
                right: 8.w,
                bottom: AppConstants.textFieldBottomPadding,
                top: 8.h,
              ),
              child: MessageFieldAndButtons(receiver: receiver),
            ),
          ],
        ),
      ),
    );
  }
}
