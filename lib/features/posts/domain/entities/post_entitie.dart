// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:todo_list/features/posts/domain/entities/posts_entities.dart';

class Post extends Equatable {
  final List<Posts?> posts;
  const Post({
    required this.posts,
  });

  @override
  List<Object?> get props => [posts];
}
