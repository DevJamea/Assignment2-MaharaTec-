import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Parts/posts/post.dart';

import 'package:flutter_application_1/UI_Parts/stories/story_area.dart';
import 'package:flutter_application_1/data/data.dart';

import 'UI_Parts/app_bar_UI.dart';

import 'UI_Parts/bottom_nav_UI.dart';
import 'data/models.dart';

void main() {
  runApp(MaterialApp(
    home: MyFirstApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyFirstApp extends StatelessWidget {
  
  List<PostModel> convertDataToPosts() {
    return posts.map((e) {
      return PostModel.fromMap(e);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavUI(),
      appBar: AppBarUI(),
      body: Column(
        children: [
          StoryArea(),
          Expanded(
            child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return Posts(convertDataToPosts()[index]);
                }),
          )
        ],
      ),
    );
  }
}