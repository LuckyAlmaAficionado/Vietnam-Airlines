import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../shared/theme.dart';
import '../controllers/verify_page_controller.dart';

class VerifyPageView extends GetView<VerifyPageController> {
  const VerifyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Verify',
            style: textStyle1.copyWith(
              fontWeight: bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              intro(),
              formField(),
            ],
          ),
        ));
  }

  Widget formField() => Container(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: 313,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTileVerify(controller: controller.code_1),
                CustomTileVerify(controller: controller.code_2),
                CustomTileVerify(controller: controller.code_3),
                CustomTileVerify(controller: controller.code_4),
                CustomTileVerify(controller: controller.code_5),
                CustomTileVerify(controller: controller.code_6),
              ],
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'The verify code will be expire in',
                  style: textStyle1.copyWith(),
                ),
                const Gap(4),
                Text(
                  '01:20',
                  style: GoogleFonts.poppins(
                    color: primaryYellowColor,
                  ),
                ),
              ],
            ),
            const Gap(26),
            SizedBox(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    child: Image.asset('assets/ic_refresh.png'),
                  ),
                  const Gap(10),
                  Text(
                    'Resend code',
                    style: GoogleFonts.poppins(
                      color: HexColor("4980FF"),
                    ),
                  ),
                ],
              ),
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
        child: GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              SizedBox(
                width: 96,
                height: 96,
                child: Image.asset('assets/ic_secure.png'),
              ),
              const Gap(24),
              Text(
                'We sent a verifycation code to\n+6287719857757',
                textAlign: TextAlign.center,
                style: textStyle1,
              )
            ],
          ),
        ),
      );
}

class CustomTileVerify extends StatelessWidget {
  const CustomTileVerify({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 52,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        showCursor: false,
        textAlign: TextAlign.center,
        maxLength: 1,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        style: GoogleFonts.outfit(
          fontWeight: bold,
          fontSize: 28,
        ),
        decoration: InputDecoration(
          counterText: "",
          border: UnderlineInputBorder(borderSide: BorderSide.none),
        ),
        autofocus: true,
        onChanged: (value) {
          if (!value.isEmpty) {
            FocusScope.of(context).nextFocus();
          } else {
            FocusScope.of(context).previousFocus();
          }
        },
        controller: controller,
      ),
    );
  }
}
