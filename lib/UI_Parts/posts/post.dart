import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Parts/posts/posts_action.dart';
import 'package:flutter_application_1/UI_Parts/posts/posts_body.dart';
import 'package:flutter_application_1/UI_Parts/posts/posts_header.dart';
import 'package:flutter_application_1/UI_Parts/posts/posts_reaction.dart';
import 'package:flutter_application_1/data/models.dart';

class Posts extends StatelessWidget {
  PostModel? postModel;
  Posts(this.postModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          PostHeader(postModel!.user , postModel!.time),
          const SizedBox(
            height: 10,
          ),
          PostBody(postModel!.content , postModel!.contentImage),
          const SizedBox(
            height: 10,
          ),
          PostReaction(postModel!.comments , postModel!.reactionCount , postModel!.share),
          const SizedBox(
            height: 10,
          ),
          PostAction(),
          const SizedBox(
            height: 10,
          ),
          const Divider(color: Colors.black26),
        ],
      ),
    );
  }
}
