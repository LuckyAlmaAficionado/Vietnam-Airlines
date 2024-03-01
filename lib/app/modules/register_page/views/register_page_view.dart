import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:vietnam_airlines/app/shared/theme.dart';

import '../../../shared/custom_textfield.dart';
import '../controllers/register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Register',
          style: textStyle1.copyWith(
            fontWeight: bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            intro(),
            formField(),
          ],
        ),
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryYellowColor,
            ),
            child: Text(
              'Register',
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

  Widget formField() => Container(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 24),
        width: double.infinity,
        height: 313,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custom_textfield(
              hintText: '@gmail.com',
              title: 'Email',
            ),
            custom_textfield(
              hintText: '9 digital',
              title: 'Phone number',
            ),
          ],
        ),
      );

  Widget intro() => Container(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            SizedBox(
              width: 96,
              height: 96,
              child: Image.asset('assets/ic_register.png'),
            ),
            const Gap(24),
            Text(
              'Fill full information on this to register',
              style: textStyle1,
            )
          ],
        ),
      );
}
