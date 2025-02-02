import 'package:commerce_clot/core/constants/color.dart';
import 'package:commerce_clot/features/account/profile_page.dart';
import 'package:commerce_clot/features/home/home_page.dart';
import 'package:commerce_clot/features/notification/notification_page.dart';
import 'package:commerce_clot/features/orders/order_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    NotificationPage(),
    OrderPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.backgroundSplash_color,
        currentIndex: _currentIndex,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          bottomNavigationBarWidget(
            "assets/images/home.png",
            "Home",
          ),
          bottomNavigationBarWidget(
              "assets/images/notification.png",   "Notification",
          ),
          bottomNavigationBarWidget(
              "assets/images/bookmark.png",   "Bookmark",
          ),
          bottomNavigationBarWidget(
              "assets/images/profile.png",   "profile",
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem bottomNavigationBarWidget(String imageURL, String label) {
  return BottomNavigationBarItem(
    backgroundColor: AppColors.backgroundColor,
    label: label,
    icon: ImageIcon(
      AssetImage(imageURL),
      size: 45,
    ),
  );
}
