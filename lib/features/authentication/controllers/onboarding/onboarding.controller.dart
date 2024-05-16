import 'package:first_app_firebase/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  Rx<int> currPageIndex = 0.obs;

  //update current Index
  void updatePageIndicator(indx) {
    currPageIndex.value = indx;
  }

  //jump to specific dot selected page
  void dotNavigationClick(index) {
    currPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //update current page and jump to next page
  void nextPage() {
    if (currPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //skip page
  void skippage() {
    currPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
