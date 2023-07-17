import 'package:flutter/material.dart';

class BottomNevBar extends StatelessWidget {
  const BottomNevBar(
      {super.key, required this.onTap, required this.currentIndex});

  final void Function(int)? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> actions = [
      const BottomNavigationBarItem(
        label: 'Profile',
        activeIcon: Icon(
          Icons.person,
        ),
        icon: Icon(
          Icons.person_outline,
        ),
      ),
      const BottomNavigationBarItem(
        label: 'Setting',
        activeIcon: Icon(
          Icons.settings,
        ),
        icon: Icon(
          Icons.settings_outlined,
        ),
      ),
      const BottomNavigationBarItem(
        label: 'Home',
        activeIcon: Icon(
          Icons.home,
        ),
        icon: Icon(
          Icons.home_outlined,
        ),
      ),
      const BottomNavigationBarItem(
        label: 'Broadcast',
        activeIcon: Icon(
          Icons.broadcast_on_personal,
        ),
        icon: Icon(
          Icons.broadcast_on_personal_outlined,
        ),
      ),
      const BottomNavigationBarItem(
        label: 'Organizations',
        activeIcon: Icon(
          Icons.groups,
        ),
        icon: Icon(
          Icons.groups_outlined,
        ),
      ),
    ];

    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      items: actions,
    );
  }
}
