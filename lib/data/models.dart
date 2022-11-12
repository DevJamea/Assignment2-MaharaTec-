class Story {
  String? stroyImage;
  User? user;

  Story.fromMap(Map map) {
    stroyImage = map['story'];
    user = User.fromMap(map['user']);
  }
}

class User {
  String? image;
  String? name;

  User.fromMap(Map map) {
    image = map['image'];
    name = map['name'];
  }
}

class PostModel {
  User? user;
  String? time;
  String? content;
  String? contentImage;
  int? reactionCount;
  int? comments;
  int? share;

  PostModel.fromMap(Map map) {
    user = User.fromMap(map['user']);
    time = map['time'];
    content = map['content'];
    contentImage = map['contentImage'];
    reactionCount = map['reactionCount'];
    comments = map['comments'];
    share = map['share'];
  }
}
