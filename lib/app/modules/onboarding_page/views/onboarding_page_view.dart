import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vietnam_airlines/app/routes/app_pages.dart';

import 'package:vietnam_airlines/app/shared/theme.dart';

import '../controllers/onboarding_page_controller.dart';

class OnboardingPageView extends GetView<OnboardingPageController> {
  const OnboardingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryGreenColor,
        body: Container(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 152),
                child: CarouselSlider(
                  carouselController: controller.carouselController,
                  items: [
                    SizedBox(
                      width: 295,
                      height: 441,
                      child: Image.asset('assets/img_onboarding1.png'),
                    ),
                    SizedBox(
                      width: 295,
                      height: 441,
                      child: Image.asset('assets/img_onboarding2.png'),
                    ),
                    SizedBox(
                      width: 295,
                      height: 441,
                      child: Image.asset('assets/img_onboarding3.png'),
                    ),
                  ],
                  options: CarouselOptions(
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    height: 441,
                    onPageChanged: (index, reason) =>
                        controller.curIndex.value = index,
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) => SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Obx(() => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                (controller.curIndex != 0)
                                    ? SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Material(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            onTap: () {
                                              controller.carouselController
                                                  .previousPage();
                                            },
                                            child: Center(
                                              child: Icon(
                                                Icons.arrow_back,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : SizedBox(height: 40),
                                (controller.curIndex == 2)
                                    ? SizedBox()
                                    : GestureDetector(
                                        onTap: () {
                                          controller.carouselController
                                              .jumpToPage(2);
                                        },
                                        child: Text(
                                          "Skip",
                                          style: textStyle6.copyWith(
                                            fontWeight: regular,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                              ],
                            )),
                        SizedBox(height: constraints.maxHeight * 0.55),
                        Container(
                          width: double.infinity,
                          height: 239,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 4.0,
                                    sigmaY: 4.0,
                                  ),
                                  child: Container(
                                    height: 215,
                                    padding: const EdgeInsets.all(24),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Obx(() => Column(
                                          children: [
                                            Text(
                                              controller.title[
                                                  controller.curIndex.value],
                                              style: GoogleFonts.raleway(
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                                fontSize: 24,
                                              ),
                                            ),
                                            const Gap(12),
                                            Container(
                                              height: 60,
                                              child: Text(
                                                controller.subTitle[
                                                    controller.curIndex.value],
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.raleway(
                                                  fontWeight: regular,
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            const Gap(12),
                                            Obx(() => Container(
                                                  width: 120,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: List.generate(
                                                      3,
                                                      (index) => Container(
                                                        height: 4,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                          color: (controller
                                                                      .curIndex
                                                                      .value !=
                                                                  index)
                                                              ? Colors
                                                                  .transparent
                                                              : primaryRedColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ))
                                          ],
                                        )),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  width: 242,
                                  height: 48,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      (controller.curIndex.value == 2)
                                          ? Get.toNamed(Routes.LOGIN_PAGE)
                                          : controller.carouselController
                                              .nextPage();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: primaryYellowColor,
                                    ),
                                    child: Obx(() => Text(
                                          (controller.curIndex != 2)
                                              ? 'Next'
                                              : "Let's go",
                                          style: GoogleFonts.raleway(
                                            color: Colors.white,
                                            fontWeight: black,
                                            fontSize: 16,
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
