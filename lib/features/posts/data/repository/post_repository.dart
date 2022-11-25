// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:todo_list/features/posts/data/adapters/post_adapter.dart';
import 'package:todo_list/features/posts/data/datasource/post_remote_data_source.dart';
import 'package:todo_list/features/posts/domain/entities/post_entitie.dart';
import 'package:todo_list/features/posts/domain/repository/posts_repository.dart';

class PostRepository implements IPostsRepository {
  final PostRemoteDataSource dataSource;
  PostRepository({
    required this.dataSource,
  });

  @override
  Future<Either<Exception, Post>> getPosts() async {
    try {
      final respose = await dataSource.getPosts();

      final body = respose.data;

      final postAdapted = PostAdapter.fromJson(body);

      return Right(postAdapted);
    } catch (e) {
      return Left(Exception('ocorreu um erro'));
    }
  }
}
