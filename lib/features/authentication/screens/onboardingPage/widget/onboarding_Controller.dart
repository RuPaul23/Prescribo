import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribo/features/authentication/screens/LogIn/login_Page.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page.

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(LoginPage());
    } else {
      currentPageIndex.value++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

    /// Update Current Index & jump to the lost Page
    void skipPage() {
      currentPageIndex.value = 2;
      pageController.jumpToPage(2);
    }
  }

