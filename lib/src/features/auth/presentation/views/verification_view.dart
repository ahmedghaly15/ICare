import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_arrow_back_button.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_big_size_description.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_big_size_title.dart';
import 'package:icare/src/features/auth/presentation/widgets/verification/verification_form.dart';

@RoutePage()
class VerificationView extends StatelessWidget {
  const VerificationView({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: AppConstants.authHorizontalPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: AppConstants.authTopMargin.h,
                  bottom: 13.h,
                ),
                child: const CustomArrowBackButton(),
              ),
              const AuthBigSizTitle(title: 'Verification Code'),
              const Center(
                child: AuthBigSizeDescription(
                  description: "We have send code to",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      email,
                      style: AppTextStyles.textStyle15Bold,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    ' for verification',
                    style: AppTextStyles.textStyle15Bold,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 67.h),
              const VerificationForm(),
            ],
          ),
        ),
      ),
    );
  }
}
