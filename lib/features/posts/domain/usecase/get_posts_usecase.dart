// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:todo_list/features/posts/domain/repository/posts_repository.dart';

import '../entities/post_entitie.dart';

class GetPosts {
  final IPostsRepository repository;
  GetPosts({
    required this.repository,
  });

  Future<Either<Exception, Post>> call() async {
    final response = repository.getPosts();

    return response;
  }
}
