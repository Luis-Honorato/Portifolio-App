part of 'posts_bloc.dart';

enum PostStatus { initial, loading, sucesses, failure }

class PostsState extends Equatable {
  final PostStatus status;
  final Post? post;

  const PostsState({
    this.status = PostStatus.initial,
    this.post,
  });

  PostsState copyWith({
    PostStatus? status,
    Post? post,
  }) {
    return PostsState(
      status: status ?? this.status,
      post: post ?? this.post,
    );
  }

  @override
  List<Object?> get props => [status, post];
}
