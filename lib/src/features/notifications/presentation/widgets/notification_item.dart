import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/utils/functions/navigate_to_user_profile.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.notification,
  });

  final ICareNotification notification;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      onPressed: () {
        context.read<NotificationsCubit>().readNotification(notification.id!);
        context
            .read<NotificationsCubit>()
            .navigateToNotificationView(context, notification);
      },
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              navigateToUserProfile(context: context, user: notification.user!);
            },
            child: CustomCachedNetworkImage(
              imageUrl: notification.user!.profileImage!,
              imageBuilder: (_, image) => CircleAvatar(
                radius: 16.r,
                backgroundImage: image,
              ),
            ),
          ),
          MySizedBox.width10,
          notification.isMessage!
              ? Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        notification.title,
                        style: AppTextStyles.textStyle13Bold.copyWith(
                          color: isDarkModeActive(context)
                              ? Colors.white
                              : Colors.black,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      MySizedBox.height5,
                      Text(
                        notification.body,
                        style: AppTextStyles.textStyle10Regular.copyWith(
                          color: isDarkModeActive(context)
                              ? Colors.white
                              : Colors.black,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: Text(
                    notification.body,
                    style: AppTextStyles.textStyle13Bold.copyWith(
                      color: isDarkModeActive(context)
                          ? Colors.white
                          : Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
        ],
      ),
    );
  }
}
