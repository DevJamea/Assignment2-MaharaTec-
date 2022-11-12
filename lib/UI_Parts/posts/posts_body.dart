import 'package:flutter/material.dart';

import '../../data/data.dart';

class PostBody extends StatelessWidget {
  String? content;
  String? contentImage;

  PostBody(this.content, this.contentImage);
  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          content!,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        const SizedBox(
          height: 5,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20), // Image border
          child: SizedBox.fromSize(
            child: Image.network(
              contentImage!,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
