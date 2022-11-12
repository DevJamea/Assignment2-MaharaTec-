import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarUI extends StatelessWidget with PreferredSizeWidget {
 
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: Colors.white,
      shadowColor: Colors.transparent,
      title: const Text(
        'Facebook',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
      ),
      actions: [
        Image.asset(
          'images/camera.png',
          width: 28,
        ),
        const SizedBox(
          width: 30,
        ),
        Image.asset(
          'images/chat.png',
          width: 28,
        ),
        const SizedBox(
          width: 30,
        ),
        Image.asset(
          'images/menus.png',
          width: 28,
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => AppBar().preferredSize;
}