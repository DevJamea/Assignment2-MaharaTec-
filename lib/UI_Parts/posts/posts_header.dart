import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models.dart';

import '../../data/data.dart';

class PostHeader extends StatelessWidget {
  User? user;
  String? time;
  PostHeader(this.user, this.time);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(user!.image!),
          radius: 18,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user!.name!),
            Text(
              time!,
              style: TextStyle(fontSize: 10, color: Colors.black38),
            )
          ],
        ),
        const Spacer(),
        const Icon(
          Icons.more_horiz,
          color: Colors.black45,
        )
      ],
    );
  }
}
