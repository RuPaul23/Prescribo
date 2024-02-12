import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class OnBoardingController extends GetxController {
static OnBoardingController get instance => Get.find();
/// Variables

/// Update Current Index when Page Scroll
void updatePageIndicator(index) {}
/// Jump to the specific dot selected page.

void dotNavigationClick(index) { }
/// Update Current Index & jump to next page
void nextPage(){}

/// Update Current Index & jump to the lost Page
void skipPage() {}

}