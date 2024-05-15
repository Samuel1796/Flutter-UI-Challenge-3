import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(4),
      child: GNav(
        color: Colors.black26,
        activeColor: Colors.redAccent,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        tabBorderRadius: 30,
        gap: 6,
        rippleColor: Colors.red,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            rippleColor: Colors.red,
            text: "Home",
            padding: EdgeInsets.symmetric(
                horizontal: 14, vertical: 15), // Adjust padding
          ),
          GButton(
            icon: Icons.shopping_cart_checkout,
            text: "Cart",
            padding: EdgeInsets.symmetric(
                horizontal: 14, vertical: 14), // Adjust padding
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
            padding: EdgeInsets.symmetric(
                horizontal: 14, vertical: 14), // Adjust padding
          ),
        ],
      ),
    );
  }
}
