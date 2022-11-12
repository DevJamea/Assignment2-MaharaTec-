import 'package:flutter/material.dart';

class PostAction extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'images/thumps.png',
          width: 24,
        ),
        const Text('Like'),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          'images/comment.png',
          width: 24,
        ),
        const Text('Comment'),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          'images/share.png',
          width: 24,
        ),
        const Text('Share'),
      ],
    );
  }
}