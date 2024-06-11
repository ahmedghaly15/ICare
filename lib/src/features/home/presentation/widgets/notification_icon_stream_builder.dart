import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';

class NotificationIconStreamBuilder extends StatelessWidget {
  const NotificationIconStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: context.read<NotificationsCubit>().isTheirNotSeenNotification(),
      builder: (context, snapshot) {
        final bool isTheirNotSeenNotification = snapshot.data ?? false;
        return isTheirNotSeenNotification
            ? Stack(
                alignment: AlignmentDirectional.topEnd,
                children: <Widget>[
                  Icon(
                    Icons.notifications_outlined,
                    size: 24.h,
                    color:
                        context.isDarkModeActive ? Colors.white : Colors.black,
                  ),
                  PositionedDirectional(
                    top: 2.h,
                    end: 5.w,
                    child: CircleAvatar(
                      radius: 4.r,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              )
            : Icon(
                Icons.notifications_outlined,
                size: 24.h,
                color: context.isDarkModeActive ? Colors.white : Colors.black,
              );
      },
    );
  }
}
