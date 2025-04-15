import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/forgot_pass/forgot_pass_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/verify_code_cubit/verify_code_cubit.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/verification_bloc_listener.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/verification_code_input.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key, required this.email});
  final String email;
  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  Timer? _timer;
  int _start = 45;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void resendCode() {
    setState(() {
      _start = 45;
    });
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            30.vs,
            Text(
              "verification",
              style: Styles.font35W700,
            ),
            40.vs,
            Text(
              textAlign: TextAlign.center,
              "Please enter the code we just end to Email",
              style: Styles.font20W400,
            ),
            Text(
              "******@gmail.com",
              style: Styles.font20W400.copyWith(
                color: ColorManager.blue33,
              ),
            ),
            30.vs,
            const VerificationCodeInput(),
            30.vs,
            Text(
              "00:$_start",
              style: Styles.font20W400,
            ),
            _start == 0
                ? TextButton(
                    onPressed: () {
                      resendCode();
                      context.read<ForgotPassCubit>().emailController.text =
                          widget.email;
                      context.read<ForgotPassCubit>().emitforgotPassState();
                    },
                    child: Text(
                      "Resend Code",
                      style: Styles.font14W400.copyWith(
                        color: ColorManager.gray8C,
                      ),
                    ),
                  )
                : 30.vs,
            SizedBox(
              height: 50.h,
              width: 370.w,
              child: Padding(
                padding: 50.ph,
                child: AppTextButton(
                  text: 'Verify',
                  onPressed: () => validateThenDoVerify(context),
                  backgroundColor: ColorManager.mainColor,
                ),
              ),
            ),
            VerificationBlocListener(),
          ],
        ),
      ),
    ));
  }

  void validateThenDoVerify(BuildContext context) {
    if (context.read<VerifyCodeCubit>().formKey.currentState!.validate()) {
      context.read<VerifyCodeCubit>().emitVerifyCodeState();
    }
  }
}
