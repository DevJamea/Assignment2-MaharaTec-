import 'package:flutter/material.dart';

class BottomNavUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
            icon: Icon(Icons.newspaper), label: 'News'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.video_collection), label: 'Videos'),
        const BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xff2c5bb7),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Stack(
              children: const [
                Icon(Icons.notifications_outlined),
                Positioned(
                  top: -1,
                  right: 0.0,
                  child: Icon(Icons.brightness_1,
                      size: 8.0, color: Color.fromARGB(255, 4, 210, 42)),
                )
              ],
            ),
            label: "Notifications"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.search), label: "Search"),
      ],
    );
  }
}
