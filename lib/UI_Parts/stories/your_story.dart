import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models.dart';

import '../../data/data.dart';

class YourStory extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(userImage),
              radius: 32,
              child: const CircleAvatar(
                backgroundColor: Colors.black45,
                radius: 32,
              ),
            ),
            const Icon(
              Icons.add,
              color: Colors.white,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Your Stroy',
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}
