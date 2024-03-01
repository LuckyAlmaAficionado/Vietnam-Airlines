import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class OnboardingPageController extends GetxController {
  RxInt curIndex = 0.obs;
  CarouselController carouselController = CarouselController();

  List title = ["Welcome!!!", "Satisfaction", "Assistance"];
  List subTitle = [
    "Welcome to VietnamAirlines, the leading airline in Vietnam.",
    "At Vietnam Airlines, bringing customer satisfaction is our mission.",
    "24/7 support whenever customers have questions about the service.",
  ];
}
