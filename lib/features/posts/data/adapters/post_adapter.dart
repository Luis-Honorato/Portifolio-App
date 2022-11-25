import 'package:todo_list/features/posts/domain/entities/post_entitie.dart';
import 'package:todo_list/features/posts/domain/entities/posts_entities.dart';

class PostAdapter {
  PostAdapter._();

  static Post fromJson(List<dynamic> json) {
    return Post(
      posts: (json).map(postsAdapter).toList(),
    );
  }

  static Posts postsAdapter(json) {
    return Posts(
      id: (json['id'] as int).toInt(),
      body: json['body'],
      title: json['title'],
    );
  }
}
