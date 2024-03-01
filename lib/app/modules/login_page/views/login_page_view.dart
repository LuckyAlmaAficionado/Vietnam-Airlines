import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:vietnam_airlines/app/routes/app_pages.dart';
import 'package:vietnam_airlines/app/shared/custom_textfield.dart';
import 'package:vietnam_airlines/app/shared/theme.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryGreenColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(80),
            intro(),
            login(),
          ],
        ),
      ),
    );
  }

  Widget login() => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 32,
        ),
        margin: const EdgeInsets.only(top: 41),
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: textStyle1.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            const Gap(16),
            CustomTextfield(title: 'Email', hintText: '@gmail.com'),
            const Gap(16),
            CustomTextfield(title: 'Password', hintText: 'password'),
            const Gap(22),
            SizedBox(
              width: Get.width,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  backgroundColor: primaryYellowColor,
                ),
                child: Text(
                  'Sign in',
                  style: textStyle6.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Gap(12),
            SizedBox(
              width: Get.width,
              height: 48,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.HOME),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  backgroundColor: tertiaryYellowColor,
                ),
                child: Text(
                  'Guest',
                  style: GoogleFonts.outfit(
                    color: primaryYellowColor,
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Gap(16),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.FORGOT_PASSWORD),
              child: Text(
                'Forgot password?',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: regular,
                  color: Colors.blue,
                ),
              ),
            ),
            const Gap(71),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.REGISTER_PAGE),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an accout?', style: textStyle3.copyWith()),
                  Text(
                    ' Sign up',
                    style: GoogleFonts.poppins(color: primaryYellowColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget intro() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
              width: 144,
              child: Image.asset('assets/img_light_logo_apk.png'),
            ),
            Text(
              'Welcome Back!!!',
              style: textStyle6.copyWith(
                fontWeight: semiBold,
                fontSize: 28,
              ),
            ),
            const Gap(8),
            Text(
              'Join out VietnamAirlines',
              style: textStyle6.copyWith(
                color: Colors.white,
                fontWeight: regular,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
}
