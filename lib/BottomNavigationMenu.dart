import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/Features/Shop/Home/ShopHome.dart';
import 'package:t_store/utils/Helper/HelperFunction.dart';

class BottomNavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationController = Get.put(NavigationMenuSelectedController());
    final dark = HelperFunction.isDark(context);
    return Obx(
      () => Scaffold(
          bottomNavigationBar: NavigationBar(
            elevation: 0,
            selectedIndex: navigationController.index.value,
            backgroundColor: dark ? Colors.black : Colors.white,
            height: 80,
            onDestinationSelected: (index) =>
                navigationController.updateIndex(index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.store),
                label: "Store",
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite),
                label: "WishList",
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
          body: Obx(
            () =>
                navigationController.screens[navigationController.index.value],
          )),
    );
  }
}

class NavigationMenuSelectedController extends GetxController {
  static NavigationMenuSelectedController get instance => Get.find();

  Rx<int> index = 0.obs;

  int updateIndex(int ind) => index.value = ind;
  final screens = [
    ShopHome(),
    Container(
      color: Colors.deepPurple,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    )
  ];
}
