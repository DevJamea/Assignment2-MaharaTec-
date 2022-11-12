import 'package:flutter/material.dart';

class StoriesHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        children: const [
          SizedBox(
            width: 15,
          ),
          Text(
            'Stories',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            'See Archieve',
            style: TextStyle(color: Colors.blueAccent),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 12,
            color: Colors.blueAccent,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
