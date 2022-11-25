import 'package:dartz/dartz.dart';

import '../entities/post_entitie.dart';

abstract class IPostsRepository {
  Future<Either<Exception, Post>> getPosts();
}
