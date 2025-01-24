import 'package:bosscubes2/screens/calendar/calendar.dart';
import 'package:bosscubes2/screens/homepage/homepage.dart';
import 'package:bosscubes2/screens/list_screen/list_screen.dart';
import 'package:bosscubes2/screens/search/search.dart';
import 'package:bosscubes2/utils/constants/colors.dart';
import 'package:bosscubes2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 60,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          indicatorColor: darkMode
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home_1), label: 'Panel'),
            NavigationDestination(
                icon: Icon(Iconsax.document4), label: 'Talep Listesi'),
            NavigationDestination(
                icon: Icon(Iconsax.calendar), label: 'Takvim'),
            NavigationDestination(
                icon: Icon(Iconsax.search_normal), label: 'Arama'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomePage(),
    const ListScreen(),
    const CalendarGrid(),
    const SearchPage(),
  ];
}
