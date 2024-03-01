import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:vietnam_airlines/app/routes/app_pages.dart';
import 'package:vietnam_airlines/app/shared/custom_textfield.dart';
import 'package:vietnam_airlines/app/shared/theme.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot password',
          style: textStyle1.copyWith(
            fontWeight: bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Gap(16),
          intro(),
          phoneNumber(),
        ],
      ),
      bottomNavigationBar: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 32),
        height: 104,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: SizedBox(
          width: Get.width,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.VERIFY_PAGE);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryYellowColor,
            ),
            child: Text(
              'Confirm',
              style: textStyle6.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget phoneNumber() => Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextfield(
              title: 'Phone number',
              hintText: "+62",
            ),
          ],
        ),
      );

  Widget intro() => Container(
        width: Get.width,
        height: 216,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.only(
          top: 29,
          left: 16,
          right: 16,
          bottom: 24,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Container(
              width: 96,
              height: 96,
              child: Image.asset('assets/ic_padlock.png'),
            ),
            const Gap(27),
            Text(
              'Enter your phone number below, we’ll send you a verify code.tt',
              textAlign: TextAlign.center,
              style: textStyle1.copyWith(
                fontWeight: regular,
                fontSize: 14,
              ),
            ),
          ],
        ),
      );
}
