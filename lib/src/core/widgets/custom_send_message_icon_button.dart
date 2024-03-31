import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';

class CustomSendMessageIconButton extends StatelessWidget {
  const CustomSendMessageIconButton({
    super.key,
    required this.isEnabled,
  });

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.r,
      backgroundColor: isEnabled ? AppColors.primaryColor : Colors.grey,
      child: IconButton(
        padding: EdgeInsets.zero,
        style: IconButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size.zero,
        ),
        icon: Icon(
          Icons.send,
          color: isEnabled ? Colors.white : Colors.white30,
        ),
        onPressed: () {
          isEnabled ? context.read<ICareBotCubit>().askICareBot(context) : null;
        },
      ),
    );
  }
}
