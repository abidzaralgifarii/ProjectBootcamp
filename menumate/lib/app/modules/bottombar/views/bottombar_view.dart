import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menumate/app/modules/home/views/home_view.dart';
import 'package:menumate/app/modules/list_menu/views/list_menu_view.dart';
import 'package:menumate/app/modules/settings/views/settings_view.dart';
import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  final BottombarController controller = Get.put(BottombarController());
  final List<Widget> pages = [
    HomeView(),
    ListMenuView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changeTab,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting',
              ),
            ],
          )),
    );
  }
}
