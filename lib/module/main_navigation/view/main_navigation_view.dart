import 'package:bloc_structure_danu/module/cart/view/cart_view.dart';
import 'package:bloc_structure_danu/module/home/view/home_view.dart';
import 'package:bloc_structure_danu/module/profile/view/profile_view.dart';
import 'package:bloc_structure_danu/module/setting/view/setting_view.dart';
import 'package:flutter/material.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({super.key});

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavItem = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: '',
      ),
    ];

    List<Widget> bottomTabView = <Widget>[
      HomeView(),
      CartView(),
      SettingView(),
      ProfileView(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        items: bottomNavItem,
      ),
      body: bottomTabView.elementAt(selectedIndex),
    );
  }
}
