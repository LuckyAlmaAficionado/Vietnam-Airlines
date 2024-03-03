import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class VerifyPageController extends GetxController {
  FocusNode focus = FocusNode();
  RxString timerValue = ''.obs;

  TextEditingController code_1 = TextEditingController();
  TextEditingController code_2 = TextEditingController();
  TextEditingController code_3 = TextEditingController();
  TextEditingController code_4 = TextEditingController();
  TextEditingController code_5 = TextEditingController();
  TextEditingController code_6 = TextEditingController();
  // Step 2
  Timer? countdownTimer;
  Duration myDuration = Duration(seconds: 120);

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  /// Timer related methods ///
  // Step 3
  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  // Step 4
  void stopTimer() {
    countdownTimer!.cancel();
  }

  // Step 5
  void resetTimer() {
    stopTimer();
    myDuration = Duration(seconds: 120);
  }

  // Step 6
  void setCountDown() {
    final reduceSecondsBy = 1;
    final seconds = myDuration.inSeconds - reduceSecondsBy;
    if (seconds < 0) {
      // jika waktu sudah habis maka lakukan
      countdownTimer!.cancel();
    } else {
      myDuration = Duration(seconds: seconds);
      setOnString();
    }
  }

  setOnString() {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    timerValue.value = "$minutes:$seconds";
  }
}
