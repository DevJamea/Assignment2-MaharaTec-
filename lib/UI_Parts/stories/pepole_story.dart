import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/data/models.dart';

class PepoleStory extends StatelessWidget {
  
  Story? stories;
  PepoleStory(this.stories);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(stories!.stroyImage!),
              radius: 32,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 16,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(stories!.user!.image!),
                  radius: 14,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          stories!.user!.name!,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
