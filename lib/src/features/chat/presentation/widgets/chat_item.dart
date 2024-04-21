import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/custom_divider.dart';
import 'package:icare/src/core/widgets/user_item.dart';

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
          UserItem(
            user: user,
            onTap: () => context.pushRoute(ChatDetailsRoute(receiver: user)),
          ),
          CustomDivider(
            isExpanded: false,
            color: isDarkModeActive(context)
                ? Colors.white54
                : const Color(0xff5A5A5B).withOpacity(0.5),
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}
