import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.notification,
  });

  final ICareNotification notification;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CustomCachedNetworkImage(
        height: 32.h,
        width: 32.h,
        imageUrl: notification.user!.profileImage!,
        imageBuilder: (_, image) => CircleAvatar(
          radius: 16.r,
          backgroundImage: image,
        ),
      ),
      title: notification.isMessage!
          ? Text(
              notification.title,
              style: AppTextStyles.textStyle13Bold.copyWith(
                color: isDarkModeActive(context) ? Colors.white : Colors.black,
              ),
            )
          : Text(
              notification.body,
              style: AppTextStyles.textStyle13Bold.copyWith(
                color: isDarkModeActive(context) ? Colors.white : Colors.black,
              ),
            ),
      subtitle: notification.isMessage!
          ? Text(
              notification.body,
              style: AppTextStyles.textStyle10Regular.copyWith(
                color: isDarkModeActive(context) ? Colors.white : Colors.black,
              ),
            )
          : null,
    );
  }
}
