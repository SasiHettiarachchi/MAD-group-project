import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomBar({Key? key, required this.selectedIndex, required this.onItemTapped}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemTapped,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      backgroundColor: Color(0xFF990A08),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false, // Hide labels
      showUnselectedLabels: false, // Hide labels
      iconSize: 30.0, // Adjust icon size as per your requirement
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_online),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Shopping Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),

      ],
    );
  }
}
