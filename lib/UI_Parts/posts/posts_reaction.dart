import 'package:flutter/material.dart';

class PostReaction extends StatelessWidget {
  int? reactionCount;
  int? comments;
  int? share;
  PostReaction(this.comments, this.reactionCount, this.share);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Image.asset(
              'images/like.png',
              width: 18,
            ),
            Container(
              margin: EdgeInsets.only(left: 12),
              child: Image.asset(
                'images/love.png',
                width: 18,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Image.asset(
                'images/haha.png',
                width: 18,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          reactionCount!.toString(),
          style: TextStyle(fontSize: 12, color: Colors.black45),
        ),
        const Spacer(),
        Text(
          '${comments.toString()} Comments | ${share.toString()} Share',
          style: TextStyle(fontSize: 12, color: Colors.black45),
        ),
      ],
    );
  }
}
