import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/UI_Parts/stories/pepole_story.dart';
import 'package:flutter_application_1/UI_Parts/stories/your_story.dart';

import '../../data/data.dart';
import '../../data/models.dart';

class StoriesBar extends StatelessWidget {

    List<Story> convertDataToStories() {
    return stories.map((e) {
      return Story.fromMap(e);
    }).toList();
  }
  
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(
        width: 15,
      ),
      YourStory(),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: Container(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
            itemExtent: 80,
            scrollDirection: Axis.horizontal,
            itemCount: stories.length,
            itemBuilder: (context, index) {
              return PepoleStory(convertDataToStories()[index]);
            },
          ),
        ),
      ),
    ]);
  }
}
