import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Parts/stories/stories_bar.dart';
import 'package:flutter_application_1/UI_Parts/stories/stories_header.dart';

class StoryArea extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Column(
    children: [
      StoriesHeader(),
      StoriesBar(),
      const Divider(color: Colors.black26),
    ],
   );
  }

}