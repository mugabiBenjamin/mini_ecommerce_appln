import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int?) onTabChange;

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, 
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0), 
        child: GNav(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0), 
          color: Colors.grey.shade500,
          activeColor: Colors.blue.shade900,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          tabBorderRadius: 8, 
          gap: 6.0, 
          onTabChange: (value) => onTabChange(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}

