import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        child: Stack(
          children: [
            Container(
              height: 230,
              width: Get.width,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                child: Image.asset(
                  'assets/img_header.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Container(
                width: Get.width,
                height: Get.height,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 93,
                        height: 61,
                        child: Image.asset('assets/img_light_logo_apk.png')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
