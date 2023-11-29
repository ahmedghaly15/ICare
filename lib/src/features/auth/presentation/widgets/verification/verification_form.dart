import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/bottom_spacer.dart';
import 'package:icare/src/core/widgets/primary_button.dart';

class VerificationForm extends StatefulWidget {
  const VerificationForm({super.key});

  @override
  State<VerificationForm> createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {
  final TextEditingController _otpController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Pinput(
                controller: _otpController,
                autofocus: true,
                obscureText: true,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                closeKeyboardWhenCompleted: true,
                keyboardType: TextInputType.number,
                obscuringWidget: Container(
                  height: 15.w,
                  width: 15.w,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                defaultPinTheme: PinTheme(
                  height: 40.h,
                  width: 60.w,
                  textStyle: AppTextStyles.textStyle20Bold,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(205.r)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.w,
                    ),
                  ),
                ),
                separatorBuilder: (index) => SizedBox(width: 15.w),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Pin is Empty";
                  }
                  return null;
                },
                onSubmitted: (String val) => _verifyCode(),
              ),
            ),
            const Spacer(),
            PrimaryButton(
              text: 'Continue',
              onPressed: () => _verifyCode(),
            ),
            const BottomSpacer(),
          ],
        ),
      ),
    );
  }

  void _verifyCode() {
    if (_formKey.currentState!.validate()) {
      debugPrint('CODE: ${_otpController.text}');
    }
  }
}
