import 'package:first_app_firebase/features/shop/screens/home/home.dart';
import 'package:first_app_firebase/utils/constants/colors.dart';
import 'package:first_app_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndx = 0.obs;

  final Screens = [
    const HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.orange,
    ),
  ];
}

class NavigationBarMenu extends StatelessWidget {
  const NavigationBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = OneHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndx.value,
          onDestinationSelected: (indx) => controller.selectedIndx.value = indx,
          // backgroundColor: dark ? OneColors.grey : OneColors.grey,
          indicatorColor: dark
              ? OneColors.white.withOpacity(0.1)
              : OneColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Shop"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.Screens[controller.selectedIndx.value]),
    );
  }
}
